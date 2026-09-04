import 'package:latlong2/latlong.dart';

class Ocorrencia {
  final LatLng position;
  final String type;
  final String description;

  Ocorrencia({
    required this.position,
    required this.type,
    required this.description,
  });
}