# Sistema Colaborativo de Identificação e Notificação de Ocorrências no Transporte Público

## Sobre o projeto

Este projeto apresenta o desenvolvimento de um protótipo de uma ferramenta colaborativa para registro, consulta e visualização de ocorrências que impactam o transporte público na região de Campo Limpo Paulista – SP.

A proposta é permitir que usuários registrem situações como acidentes, obstruções de vias e interrupções de serviço, contribuindo para o compartilhamento de informações e o planejamento dos deslocamentos.

O projeto faz parte do Trabalho de Conclusão de Curso (TCC) do Centro Universitário Campo Limpo Paulista (UNIFACCAMP).

## Objetivo

Desenvolver uma ferramenta baseada em informações geográficas (GIS), com mapa interativo, que permita registrar e consultar ocorrências relacionadas ao transporte público.

A solução busca oferecer uma representação visual das ocorrências, facilitando a identificação de situações que possam afetar os deslocamentos dos usuários.

## Tecnologias utilizadas

| Tecnologia | Aplicação |
|---|---|
| Flutter | Desenvolvimento da aplicação |
| Dart | Linguagem de programação |
| flutter_map | Exibição e interação com mapas |
| OpenStreetMap | Fonte dos dados cartográficos |
| JSON | Armazenamento local das ocorrências |
| Geocoding | Conversão de coordenadas em informações de endereço |
| Path Provider | Apoio ao acesso ao armazenamento local |
| Git e GitHub | Controle de versão e hospedagem do código |

## Funcionalidades implementadas no protótipo

- Exibição de mapa interativo.
- Seleção de localização no mapa.
- Cadastro de ocorrências georreferenciadas.
- Informação do tipo de ocorrência.
- Inclusão da descrição do evento.
- Exibição das ocorrências por marcadores no mapa.
- Consulta das informações das ocorrências cadastradas.
- Persistência local dos registros em formato JSON.
- Recuperação dos registros após o encerramento da aplicação.
- Geocodificação reversa para identificação de endereços a partir das coordenadas geográficas.

## Funcionalidades previstas para evolução

As funcionalidades abaixo fazem parte da proposta de evolução do sistema, mas não devem ser consideradas implementadas nesta versão do protótipo:

- Compartilhamento de ocorrências entre diferentes usuários.
- Armazenamento centralizado das informações.
- Notificações em tempo real para usuários próximos.
- Atualização das ocorrências compartilhadas.
- Evolução dos mecanismos de validação e avaliação das informações registradas.

## Funcionamento geral

O fluxo básico do protótipo contempla:

1. O usuário acessa a aplicação.
2. Visualiza o mapa interativo.
3. Seleciona a opção para adicionar uma ocorrência.
4. Define a localização no mapa.
5. Informa o tipo e a descrição da ocorrência.
6. Confirma o cadastro.
7. A ocorrência é registrada localmente.
8. O marcador correspondente é apresentado no mapa.
9. O usuário pode consultar as informações cadastradas.

## Armazenamento e arquitetura

Nesta etapa, o protótipo utiliza armazenamento local em formato JSON para persistir as ocorrências cadastradas.

A arquitetura de backend ainda não foi definida. A implementação de um serviço centralizado será avaliada em etapas futuras, especialmente para viabilizar o compartilhamento de informações entre diferentes usuários e o envio de notificações.

## Como executar o projeto

### Pré-requisitos

- Flutter SDK instalado.
- Dart SDK.
- Android Studio ou Visual Studio Code.
- Git instalado.
- Emulador Android ou dispositivo compatível.

### Clonar o repositório

```bash
git clone https://github.com/Guilh3rme67/TCC.git
```

### Acessar a pasta do projeto

```bash
cd TCC
```

### Verificar o ambiente Flutter

```bash
flutter doctor
```

### Instalar as dependências

```bash
flutter pub get
```

### Executar a aplicação

```bash
flutter run
```

## Estrutura do projeto

A organização segue a estrutura padrão de uma aplicação Flutter. Os arquivos e diretórios específicos devem ser consultados diretamente no repositório.

```text
TCC/
├── android/
├── ios/
├── lib/
├── test/
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

## Situação atual do projeto

**Estágio:** Protótipo funcional.

O protótipo permite visualizar o mapa, cadastrar ocorrências georreferenciadas e consultar os registros armazenados localmente.

Os testes técnicos realizados verificaram o cadastro, a visualização e a persistência local das ocorrências.

O compartilhamento entre usuários e as notificações em tempo real permanecem como possibilidades de evolução.

## Trabalhos futuros

- Definir e implementar uma arquitetura de backend.
- Desenvolver uma base de dados centralizada.
- Permitir sincronização das ocorrências entre usuários.
- Implementar notificações em tempo real.
- Aprimorar os mecanismos de validação das ocorrências.
- Realizar testes adicionais de usabilidade.
- Avaliar a evolução da aplicação para uso em ambiente real.

## Referências

- [Flutter – Documentação oficial](https://docs.flutter.dev/)
- [Dart – Documentação oficial](https://dart.dev/docs)
- [OpenStreetMap – Copyright e licença](https://www.openstreetmap.org/copyright)
- [flutter_map – Pacote Flutter](https://pub.dev/packages/flutter_map)
- [Geocoding – Pacote Flutter](https://pub.dev/packages/geocoding)
- [Path Provider – Pacote Flutter](https://pub.dev/packages/path_provider)

## Repositório

Código-fonte disponível em:

[GitHub – TCC](https://github.com/Guilh3rme67/TCC)

## Autoria

**Guilherme O. Freire**

Centro Universitário Campo Limpo Paulista – UNIFACCAMP

Trabalho de Conclusão de Curso – 2026