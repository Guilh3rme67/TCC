import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class OcorrenciaScreen extends StatefulWidget {
  final LatLng position;

  const OcorrenciaScreen({
    super.key,
    required this.position,
  });

  @override
  State<OcorrenciaScreen> createState() => _OcorrenciaScreenState();
}

class _OcorrenciaScreenState extends State<OcorrenciaScreen> {
  String tipoSelecionado = 'Acidente';

  final TextEditingController descricaoController =
      TextEditingController();

  @override
  void dispose() {
    descricaoController.dispose();
    super.dispose();
  }

  void criarOcorrencia() {
    if (descricaoController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Digite uma descrição da ocorrência.'),
        ),
      );

      return;
    }

    Navigator.pop(
      context,
      {
        'position': widget.position,
        'type': tipoSelecionado,
        'description': descricaoController.text.trim(),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova ocorrência'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tipo da ocorrência',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            DropdownButtonFormField<String>(
              initialValue: tipoSelecionado,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),

              items: const [
                DropdownMenuItem(
                  value: 'Acidente',
                  child: Text('Acidente'),
                ),

                DropdownMenuItem(
                  value: 'Via obstruída',
                  child: Text('Via obstruída'),
                ),

                DropdownMenuItem(
                  value: 'Transporte público inoperante',
                  child: Text(
                    'Transporte público inoperante',
                  ),
                ),
              ],

              onChanged: (valor) {
                if (valor == null) {
                  return;
                }

                setState(() {
                  tipoSelecionado = valor;
                });
              },
            ),

            const SizedBox(height: 24),

            const Text(
              'Descrição',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              controller: descricaoController,

              maxLines: 5,

              decoration: const InputDecoration(
                hintText: 'Descreva o ocorrido...',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: criarOcorrencia,
                child: const Text(
                  'Criar ocorrência',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

