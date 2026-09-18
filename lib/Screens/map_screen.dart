
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_project/Screens/ocorrencia_screen.dart';
import 'package:map_project/Widgets/Ocorrencia.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // Lista que armazena todas as ocorrências criadas
  final List<Ocorrencia> ocorrencias = [];

  // Indica se o usuário está criando uma nova ocorrência
  bool criandoOcorrencia = false;

  // Armazena temporariamente a localização escolhida
  LatLng? novaLocalizacao;

  IconData obterIconeOcorrencia(String tipo) { 
    switch (tipo) { 
      case 'Acidente': return Icons.car_crash; 
      case 'Via obstruída': return Icons.block; 
      case 'Transporte público inoperante': return Icons.directions_bus; 
      default: return Icons.location_on; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          // Localização inicial do mapa
          initialCenter: const LatLng(
            -23.5505,
            -46.6333,
          ),

          // Zoom inicial
          initialZoom: 14,

          // Executado quando o usuário toca no mapa
          onTap: (tapPosition, point) async {
            // Se não estiver criando ocorrência,
            // o toque no mapa não faz nada
            if (!criandoOcorrencia) {
              return;
            }

            // Guarda temporariamente a localização escolhida
            setState(() {
              novaLocalizacao = point;
            });

            // Abre a tela de criação da ocorrência
            final resultado = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return OcorrenciaScreen(
                    position: point,
                  );
                },
              ),
            );

            // Sai do modo de criação depois que
            // o formulário for fechado
            setState(() {
              criandoOcorrencia = false;
              novaLocalizacao = null;
            });

            // Se o usuário confirmou a ocorrência,
            // o resultado não será nulo
            if (resultado != null) {
              setState(() {
                ocorrencias.add( 
                  Ocorrencia( 
                    // Gera um identificador único para a ocorrência 
                    id: DateTime.now().millisecondsSinceEpoch.toString(), 
                    // Localização escolhida no mapa 
                    position: point, 
                    // Tipo informado no formulário 
                    type: resultado['type'], 
                    // Descrição informada no formulário 
                    description: resultado['description'], 
                    // Data e hora atual 
                    dataHora: DateTime.now(), 
                  ),
                );
              });
            }
          },
        ),

        children: [
          // Camada do mapa
          TileLayer(
            urlTemplate:
                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',

            userAgentPackageName:
                'com.example.map_project',

            tileProvider: NetworkTileProvider(
              headers: {
                'User-Agent':
                    'MapProject/1.0 (com.example.map_project)',
              },
            ),
          ),

          // Camada responsável pelos marcadores
          MarkerLayer(
            markers: ocorrencias.map((ocorrencia) {
              return Marker(
                point: ocorrencia.position,

                width: 50,
                height: 50,

                child: IconButton(
                  onPressed: () {
                    // Abre os detalhes da ocorrência
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(16),

                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [
                              // Tipo da ocorrência
                              Text(
                                ocorrencia.type,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 12),

                              // Título da descrição
                              const Text(
                                'Descrição:',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 5),

                              // Descrição da ocorrência
                              Text(
                                ocorrencia.description,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              const SizedBox(height: 12),

                              // Coordenadas
                              Text(
                                'Latitude: '
                                '${ocorrencia.position.latitude}',
                              ),

                              Text(
                                'Longitude: '
                                '${ocorrencia.position.longitude}',
                              ),

                              const SizedBox(height: 20),

                              // Botão para fechar
                              SizedBox(
                                width: double.infinity,

                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },

                                  child: const Text(
                                    'Fechar',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },

                  // Ícone do marcador
                  icon: Icon(
                    obterIconeOcorrencia(ocorrencia.type),
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              );
            }).toList(),
          ),

          // Créditos do OpenStreetMap
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
              ),
            ],
          ),
        ],
      ),

      // Botão para iniciar a criação de uma ocorrência
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            criandoOcorrencia = true;
            novaLocalizacao = null;
          });
        },

        child: const Icon(
          Icons.add_location_alt,
        ),
      ),
    );
  }
}

