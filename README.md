# FlutterApp - Semana 7

Este repositório faz parte das atividades da disciplina **Desenvolvimento de Aplicativos 1**.  
Na **Semana 7**, foi criada a branch `semana7` para dar continuidade ao projeto iniciado nas semanas anteriores.  

## O que foi feito nesta semana
- Criação da nova branch: **`semana7`**
- Estudo sobre **interface gráfica em Flutter**:
  - Conceito de **Widgets**:
    - `StatelessWidget` → sem estado (conteúdo fixo).
    - `StatefulWidget` → com estado (conteúdo muda conforme interação do usuário).
  - Introdução ao **gerenciamento de estado** utilizando `setState()`.
- Alterações realizadas no arquivo `lib/main.dart`:
  - Adição de um botão para **incrementar** o contador.
  - Adição de um botão para **decrementar** o contador.
  - Exibição do valor do contador atualizado na tela em tempo real.

## Estrutura de Interface
- **MyApp** → `StatelessWidget` responsável pela configuração inicial do app (tema, título, tela inicial).  
- **MyHomePage** → `StatefulWidget` responsável por armazenar o estado do contador.  
- **_MyHomePageState** → contém:
  - Variável `_counter` para armazenar o valor do contador.
  - Métodos `_incrementCounter()` e `_decrementCounter()` que usam `setState()` para atualizar a interface.
  - Estrutura de interface com `Scaffold`, `AppBar` e `Column`, exibindo texto, contador e botões.

### Exemplo da tela
- Texto fixo: *"You have pushed the button this many times:"*  
- Valor do contador exibido dinamicamente.  
- Dois botões:
  - **Increment** → aumenta o valor do contador.  
  - **Decrement** → diminui o valor do contador.  

### Branches do projeto

- semana2 → Implementações do app no Firebase Studio e integração com GitHub

- semana3 → Testes unitários (dart_test.dart)

- semana4 → Estruturas de dados List e Map

- semana5 → Orientação a Objetos em Dart

- semana6 → Programação assíncrona com Future e Stream

- semana7 → Primeiras alterações na interface gráfica do Flutter (lib/main.dart)

