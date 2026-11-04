# Sistema Colaborativo de Identificação e Notificação de Ocorrências no Transporte Público

![Status](https://img.shields.io/badge/status-Prot%C3%B3tipo-orange)
![Flutter](https://img.shields.io/badge/Flutter-Dart-blue)
![Mapas](https://img.shields.io/badge/Mapas-OpenStreetMap-green)
![License](https://img.shields.io/badge/license-A%20definir-lightgrey)

## 1. Apresentação do projeto

Este projeto é desenvolvido como Trabalho de Conclusão de Curso (TCC) e propõe a criação de um sistema colaborativo em tempo real para identificação, registro e notificação de ocorrências relacionadas ao transporte público.

A solução tem como finalidade permitir que passageiros compartilhem informações sobre situações que possam impactar seus deslocamentos, possibilitando que outros usuários tenham acesso a informações relevantes sobre as condições do transporte público.

A proposta utiliza tecnologias de desenvolvimento mobile, geolocalização e mapas digitais, buscando proporcionar uma experiência colaborativa, acessível e intuitiva.

O aplicativo encontra-se atualmente na fase de protótipo.

## 2. Problema e justificativa

A falta de informações atualizadas sobre ocorrências no transporte público pode dificultar o planejamento dos deslocamentos dos passageiros.

Situações como atrasos, interrupções, congestionamentos, problemas operacionais e outras ocorrências podem impactar diretamente a mobilidade urbana.

Nesse contexto, um sistema colaborativo pode contribuir para o compartilhamento de informações entre passageiros, permitindo que os próprios usuários participem da identificação e divulgação de ocorrências.

## 3. Objetivos

### Objetivo geral

Desenvolver um protótipo de aplicação mobile colaborativa para identificação, registro e notificação de ocorrências no transporte público, utilizando recursos de geolocalização e mapas digitais.

### Objetivos específicos

- Permitir o registro colaborativo de ocorrências.
- Possibilitar a identificação geográfica das ocorrências.
- Disponibilizar informações para consulta pelos usuários.
- Utilizar mapas digitais para contextualizar a localização dos registros.
- Propor mecanismos de compartilhamento de informações.
- Avaliar a usabilidade e a viabilidade técnica da solução.

## 4. Tecnologias utilizadas

| Tecnologia | Aplicação no projeto |
|---|---|
| Flutter | Desenvolvimento multiplataforma |
| Dart | Linguagem de programação |
| OpenStreetMap | Base cartográfica e representação geográfica |
| Git | Controle de versão |
| GitHub | Hospedagem do código-fonte |
| Backend | Tecnologia ainda não definida |

### 4.1. Flutter

Framework utilizado para desenvolvimento da aplicação, permitindo a criação de interfaces multiplataforma a partir de uma única base de código.

### 4.2. Dart

Linguagem de programação utilizada no desenvolvimento das funcionalidades e componentes da aplicação Flutter.

### 4.3. OpenStreetMap

Projeto de mapeamento colaborativo utilizado como referência cartográfica para a representação de informações geográficas.

A integração com os mapas deverá permitir contextualizar visualmente a localização das ocorrências.

A implementação dos serviços de geolocalização, marcadores e interação com o mapa será documentada conforme sua evolução.

### 4.4. Backend e persistência

A tecnologia de backend ainda não foi definida.

A arquitetura deverá considerar futuramente mecanismos para:

- Persistência dos registros de ocorrências.
- Compartilhamento de informações entre usuários.
- Gerenciamento dos dados da aplicação.
- Comunicação entre dispositivos.
- Atualização das informações.
- Autenticação e controle de acesso, caso aplicáveis.

## 5. Funcionalidades previstas

As funcionalidades estão organizadas conforme a proposta do sistema e deverão ser classificadas como implementadas, em desenvolvimento ou planejadas durante a evolução do protótipo.

| Funcionalidade | Descrição |
|---|---|
| Registro de ocorrências | Permitir o cadastro de situações identificadas pelos usuários |
| Geolocalização | Identificar a localização associada à ocorrência |
| Visualização em mapa | Representar geograficamente as ocorrências |
| Consulta de ocorrências | Permitir a visualização dos registros disponíveis |
| Compartilhamento colaborativo | Disponibilizar informações compartilhadas pelos usuários |
| Notificações | Informar os usuários sobre ocorrências relevantes |

**Observação:** a descrição representa o escopo funcional proposto, não uma confirmação de que todos os recursos já estão implementados.

## 6. Arquitetura proposta

A arquitetura lógica prevista para a solução contempla os seguintes componentes:

```text
+-----------------------------+
|          USUÁRIO             |
|                             |
|      Aplicativo Mobile      |
+--------------+--------------+
               |
               v
+-----------------------------+
|       APLICAÇÃO FLUTTER     |
|                             |
|  - Interface                |
|  - Registro de ocorrências  |
|  - Consulta                 |
|  - Geolocalização           |
+--------------+--------------+
               |
       +-------+-------+
       |               |
       v               v
+-------------+  +----------------+
| OpenStreet  |  | Backend futuro |
| Map         |  | A definir      |
|             |  |                |
| Mapas       |  | Persistência   |
| Cartografia |  | Comunicação    |
+-------------+  | Compartilhamento|
                 +----------------+
```

*Diagrama conceitual. A comunicação com o backend representa uma arquitetura futura, ainda não definida.*

## 7. Estrutura do projeto

Estrutura de referência do projeto Flutter:

```text
TCC/
│
├── android/             # Configurações Android
├── ios/                 # Configurações iOS
├── lib/                 # Código-fonte Dart
├── web/                 # Configurações Web
├── windows/             # Configurações Windows
├── linux/               # Configurações Linux
├── macos/               # Configurações macOS
│
├── test/                # Testes automatizados
├── assets/              # Recursos estáticos, se utilizados
│
├── pubspec.yaml         # Dependências e configurações
├── pubspec.lock         # Versões das dependências
└── README.md            # Documentação
```

A estrutura interna de `lib/` deverá ser documentada conforme a organização efetivamente adotada no código-fonte.

## 8. Requisitos para execução

Para executar o projeto, recomenda-se possuir:

- Flutter SDK instalado.
- Dart SDK.
- Android Studio ou Visual Studio Code.
- Git instalado.
- Emulador Android ou dispositivo físico compatível.

## 9. Instalação e execução

### 9.1. Clonar o repositório

```bash
git clone https://github.com/Guilh3rme67/TCC.git
```

### 9.2. Acessar o diretório

```bash
cd TCC
```

### 9.3. Verificar o ambiente

```bash
flutter doctor
```

### 9.4. Instalar dependências

```bash
flutter pub get
```

### 9.5. Executar o aplicativo

```bash
flutter run
```

A execução dependerá da configuração do ambiente e das dependências necessárias ao projeto.

## 10. Controle de versão

O projeto utiliza Git para gerenciamento de versões e GitHub para hospedagem do código-fonte.

Repositório oficial:

https://github.com/Guilh3rme67/TCC

As atualizações devem ser registradas por meio de commits descritivos.

Exemplo:

```bash
git add .
git commit -m "Descrição da alteração"
git push origin main
```

Arquivos temporários, diretórios de compilação e informações sensíveis não devem ser publicados no repositório.

## 11. Segurança e privacidade

A evolução da solução deverá considerar:

- Proteção das informações dos usuários.
- Controle de acesso aos recursos.
- Validação dos dados enviados.
- Proteção de informações de localização.
- Tratamento de erros e falhas de comunicação.
- Definição de políticas de privacidade e retenção de dados.

## 12. Evolução do projeto

O desenvolvimento poderá seguir as seguintes etapas:

| Etapa | Descrição | Situação |
|---|---|---|
| 1 | Estrutura inicial do aplicativo Flutter | Em desenvolvimento |
| 2 | Construção das interfaces | Protótipo |
| 3 | Integração com OpenStreetMap | A evoluir |
| 4 | Implementação do registro de ocorrências | A validar |
| 5 | Definição do backend | Pendente |
| 6 | Persistência e compartilhamento de dados | Futuro |
| 7 | Comunicação em tempo real | Futuro |
| 8 | Notificações | Futuro |
| 9 | Testes e validação | Futuro |
| 10 | Documentação e entrega do TCC | Futuro |

## 13. Considerações finais

O projeto busca explorar o potencial das tecnologias móveis e dos mecanismos colaborativos para contribuir com a disseminação de informações relacionadas ao transporte público.

A proposta pretende oferecer uma ferramenta que permita aos passageiros compartilhar informações georreferenciadas sobre ocorrências, contribuindo para uma experiência de mobilidade urbana mais informada.

O desenvolvimento continuará evoluindo a partir da validação do protótipo, definição da arquitetura de backend e implementação das funcionalidades previstas.

## 14. Autor

**Guilherme Oliveira Freire**

GitHub: [@Guilh3rme67](https://github.com/Guilh3rme67)

Repositório: [Sistema Colaborativo de Ocorrências no Transporte Público](https://github.com/Guilh3rme67/TCC)

---

*Trabalho de Conclusão de Curso (TCC) — Projeto acadêmico em desenvolvimento.*
