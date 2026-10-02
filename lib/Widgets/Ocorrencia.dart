import 'package:latlong2/latlong.dart';

class Ocorrencia {
  // Identificador da ocorrência
  final String id;

  // Localização da ocorrência
  final LatLng position;

  // Tipo da ocorrência
  final String type;

  // Descrição da ocorrência
  final String description;

  // Data e hora da criação
  final DateTime dataHora;

  Ocorrencia({
    required this.id,
    required this.position,
    required this.type,
    required this.description,
    required this.dataHora,
  });

  // Converte a ocorrência para um formato que pode ser salvo em JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'latitude': position.latitude,
      'longitude': position.longitude,
      'type': type,
      'description': description,
      'dataHora': dataHora.toIso8601String(),
    };
  }

  // Cria uma ocorrência a partir dos dados do JSON
  factory Ocorrencia.fromJson(Map<String, dynamic> json) {
    return Ocorrencia(
      id: json['id'],
      position: LatLng(
        json['latitude'],
        json['longitude'],
      ),
      type: json['type'],
      description: json['description'],
      dataHora: DateTime.parse(json['dataHora']),
    );
  }
}
