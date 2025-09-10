# FlutterApp - Semana 5

Este repositório faz parte das atividades da disciplina **Desenvolvimento de Aplicativos 1**.  
Na **Semana 5**, foi criada a branch `semana5` para dar continuidade ao projeto iniciado nas semanas anteriores.  

## O que foi feito nesta semana
- Criação da nova branch: **`semana5`**
- Evolução do projeto com foco em **classes, herança, polimorfismo e mixins**:
  1. **Classe `Professor`** criada, herdando de `Pessoa`.
  2. Alteração da classe **`Turma`** para receber um objeto `Professor`.
  3. Alteração da classe **`Historico`** para incluir método de verificação de aprovação:
     - `bool isAprovado(Aluno aluno)` → retorna `true` se a média do aluno for **≥ 6**.
  4. Ajustes nos **testes unitários** para contemplar professor, matrícula e aprovação.

## Estrutura de Classes
- **Pessoa (abstract)**: classe base para `Aluno` e `Professor`.  
- **Aluno**: herda de `Pessoa`, utiliza o mixin `Ano`.  
- **Professor**: herda de `Pessoa`.  
- **Disciplina**: representa a matéria da turma.  
- **Turma**: possui `Disciplina`, `Professor`, `Ano` e lista de alunos.  
- **Historico**: herda de `Turma` e adiciona notas, cálculo de média e aprovação.

## Estrutura de Testes
- **Matrícula de alunos**
  - Alunos do mesmo ano → matrícula aceita.
  - Alunos de ano diferente → lança erro.
  - ID de aluno ≤ 0 → lança erro.
- **Cálculo de médias**
  - Aluno sem notas → média `0.0`.
  - Aluno com notas → média calculada corretamente.
- **Verificação de aprovação**
  - Média `< 6` → reprovado.
  - Média `≥ 6` → aprovado.
- **Professor**
  - Toda turma deve ter um professor associado.

## Branches do projeto
- semana2 → Implementações do primeiro app no Firebase e integração com GitHub

- semana3 → testes unitários (dart_test.dart)

- semana4 → Estruturas de dados List e Map

- semana5 → Orientação a Objetos em Dart

