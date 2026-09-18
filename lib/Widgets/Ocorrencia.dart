import 'package:latlong2/latlong.dart';

class Ocorrencia {
  // Identificador da ocorrência
  final String id;

  // Localização da ocorrência
  final LatLng position;

  // Tipo da ocorrência
  final String type;

  // Descrição informada pelo usuário
  final String description;

  // Data e hora em que a ocorrência foi criada
  final DateTime dataHora;

  Ocorrencia({
    required this.id,
    required this.position,
    required this.type,
    required this.description,
    required this.dataHora,
  });
}

