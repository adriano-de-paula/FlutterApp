# FlutterApp - Semana 6

Este repositório faz parte das atividades da disciplina **Desenvolvimento de Aplicativos 1**.  
Na **Semana 6**, foi criada a branch `semana6` para dar continuidade ao projeto iniciado nas semanas anteriores.  

## O que foi feito nesta semana
- Criação da nova branch: **`semana6`**
- Estudo e prática de **programação assíncrona em Dart**, utilizando:
  - **Future** → representa um valor que estará disponível no futuro.
  - **Stream** → representa uma sequência de valores assíncronos.
- Implementação do arquivo `test/async_test.dart`, com testes cobrindo:
  - Uso de `Future` para simular tarefas demoradas (`process`).
  - Pesquisa assíncrona de notas de alunos (`search`).
  - Contagem assíncrona em `Stream` (`count`).
  - 🚀 **Exercício final:** criação da `Stream<double> media(List<String> nomes)`, que recebe uma lista de nomes, busca as notas de cada aluno de forma assíncrona e retorna a média.

## Estrutura de Testes

### Testes implementados
- **Future**
  - Verificação de retorno assíncrono (`process`).
  - Pesquisa com sucesso (`search('Maria')`).
  - Pesquisa com erro (`search('Paula')`).
- **Stream**
  - Contagem em sequência (`count` → `[1, 2, 3]`).
- **Stream de médias**
  - `media(['Maria', 'Paula', 'Bruna'])`:
    - Maria → média **8.5**.
    - Paula → lança **ArgumentError** (não encontrada).
    - Bruna → média **7.0**.

### Fluxo esperado
A `Stream media` emite os resultados **em tempos diferentes**, refletindo a natureza assíncrona do Dart:
1. Emite `8.5` (Maria).  
2. Emite erro (`ArgumentError`) para Paula.  
3. Emite `7.0` (Bruna).  
4. Finaliza (`onDone`).  

O teste confirma que os resultados acumulados são `[8.5, 7]` e que o erro é tratado no `onError`.

## Branches do projeto

- main → Implementações da Semana 2 (primeiro app e integração com GitHub)

- semana3 → Testes unitários (dart_test.dart)

- semana4 → Estruturas de dados List e Map

- semana5 → Orientação a Objetos em Dart

- semana6 → Programação assíncrona com Future e Stream
