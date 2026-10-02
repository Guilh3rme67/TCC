import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:map_project/Widgets/Ocorrencia.dart';

class OcorrenciaStorage {
  // Nome do arquivo de persistência
  static const String _fileName = 'ocorrencias.json';

  // Obtém o arquivo onde os dados serão armazenados
  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();

    return File(
      '${directory.path}/$_fileName',
    );
  }

  // Salva as ocorrências no arquivo JSON
  Future<void> salvarOcorrencias(
    List<Ocorrencia> ocorrencias,
  ) async {
    final file = await _getFile();

    final data = ocorrencias
        .map((ocorrencia) => ocorrencia.toJson())
        .toList();

    await file.writeAsString(
      jsonEncode(data),
    );
  }

  // Carrega as ocorrências salvas
  Future<List<Ocorrencia>> carregarOcorrencias() async {
    final file = await _getFile();

    // Caso o arquivo ainda não exista
    if (!await file.exists()) {
      return [];
    }

    final content = await file.readAsString();

    // Caso o arquivo esteja vazio
    if (content.isEmpty) {
      return [];
    }

    final List<dynamic> data = jsonDecode(content);

    return data
        .map(
          (item) => Ocorrencia.fromJson(item),
        )
        .toList();
  }
}