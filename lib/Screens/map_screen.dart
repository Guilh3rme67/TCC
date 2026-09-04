import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_project/Widgets/Ocorrencia.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}


class _MapScreenState extends State<MapScreen> {
  final List<Ocorrencia> ocorrencias = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          initialCenter: const LatLng(-23.5505, -46.6333),
          initialZoom: 14,

          onTap: (tapPosition, point) {
            setState(() {
              ocorrencias.add(
                Ocorrencia(
                  position: point,
                  type: 'Acidente',
                  description: 'Batida de carros na marginal',
                ),
              );
            });
          },
        ),

        children: [
          TileLayer(
            urlTemplate:
                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.map_project',
            tileProvider: NetworkTileProvider(
              headers: {
                'User-Agent':
                    'MapProject/1.0 (com.example.map_project)',
              },
            ),
          ),

          MarkerLayer(
            markers: ocorrencias.map((ocorrencia) {
              return Marker(
                point: ocorrencia.position,
                width: 50,
                height: 50,
                child: IconButton(
                  onPressed: () {
                    print(ocorrencia.type);
                    print(ocorrencia.description);
                  },
                  icon: const Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              );
            }).toList(),
          ),

          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
              ),
            ],
          ),
        ],
      ),
    );
  }
}