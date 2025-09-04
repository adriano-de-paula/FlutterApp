# FlutterApp - Semana 4

Este repositório faz parte das atividades da disciplina **Desenvolvimento de Aplicativos 1**.  
Na **Semana 4**, foi criada a branch `semana4` para dar continuidade ao projeto iniciado nas semanas anteriores.  

## O que foi feito nesta semana
- Criação da nova branch: **`semana4`**
- Estudo e prática sobre **estruturas de dados em Dart**:
  - **List** (listas)
  - **Map** (dicionários)
- Criação dos arquivos de testes unitários:
  - `test/list_test.dart` → Testes de operações comuns em listas.
  - `test/map_test.dart` → Testes de operações comuns em dicionários.

## Estrutura de Testes

### Testes com List (`list_test.dart`)
- Adicionar elementos em uma lista
- Adicionar outra lista com `addAll`
- Inserir elementos em posição específica
- Remover elementos (`remove`, `removeAt`)
- Verificar tamanho (`length`)
- Verificar se está vazia ou não (`isEmpty`, `isNotEmpty`)
- Testar ordenação (ordem direta e reversa)
- Percorrer lista, somar elementos e aplicar transformações (`map`, `where`)

### Testes com Map (`map_test.dart`)
- Adicionar novos elementos (`putIfAbsent`)
- Adicionar outro dicionário (`addAll`)
- Remover elemento (`remove`)
- Atualizar valores (`update` e atribuição direta)
- Percorrer dicionário (`keys`, `values`, `forEach`)
- **Exercício final:** calcular a **média das notas** dos alunos

## Observação Importante
Os testes com `Map` foram construídos de forma **sequencial**, ou seja, cada teste modifica o dicionário `alunos`.  
Assim, no último teste (`Calcular médias`), todas as médias resultam em **8.5**, pois os testes anteriores atualizaram os valores das listas de notas:

```dart
{
  'Maria': [8.0, 9.0],
  'Carla': [8.0, 9.0],
  'Elena': [9.0, 8.0],
  'Luiza': [8.0, 9.0],
}

