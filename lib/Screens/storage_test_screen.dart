
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:map_project/Services/ocorrencia_storage.dart';
import 'package:map_project/Widgets/Ocorrencia.dart';

class StorageTestScreen extends StatelessWidget {
  const StorageTestScreen({super.key});

  Future<void> testarPersistencia(BuildContext context) async {
    final storage = OcorrenciaStorage();

    final ocorrencia = Ocorrencia(
      id: 'teste-1',
      position: const LatLng(-23.546419, -46.651055),
      type: 'Acidente',
      description: 'Teste de persistência',
      dataHora: DateTime.now(),
    );

    await storage.salvarOcorrencias([ocorrencia]);

    final ocorrenciasCarregadas =
        await storage.carregarOcorrencias();

    final resultado = ocorrenciasCarregadas.first;

    if (!context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Carregadas: ${resultado.description}',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste de persistência'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => testarPersistencia(context),
          child: const Text(
            'Testar armazenamento',
          ),
        ),
      ),
    );
  }
}

