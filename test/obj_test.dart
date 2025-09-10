import 'package:flutter_test/flutter_test.dart';

abstract class Pessoa {
  late int _id;
  String nome;

  Pessoa(this.nome);

  int get id => _id;

  set id(int id) {
    if (id > 0) {
      _id = id;
    } else {
      throw ArgumentError('Identificador deve ser não negativo.');
    }
  }
}

mixin Ano {
  late int _ano;

  int get ano => _ano;

  set ano(int ano) {
    if (ano > 0) {
      _ano = ano;
    } else {
      throw ArgumentError('Ano deve ser não negativo.');
    }
  }
}

class Aluno extends Pessoa with Ano {
  Aluno(super.nome, int ano) {
    this.ano = ano;
  }
}

// Classe Professor
class Professor extends Pessoa {
  Professor(super.nome);
}

class Disciplina {
  String nome;
  Disciplina(this.nome);
}

class Turma with Ano {
  Disciplina disciplina;
  Professor professor; // agora tem professor
  final List<Aluno> _alunos = [];

  Turma(this.disciplina, this.professor, int ano) {
    this.ano = ano;
  }

  void matricular(Aluno aluno) {
    if (aluno.ano == ano) {
      _alunos.add(aluno);
    } else {
      throw ArgumentError('Ano deve ser mesmo.');
    }
  }
}

class Historico extends Turma {
  Map<Aluno, List<double>> notas = {};

  Historico(super.disciplina, super.professor, super.ano);

  @override
  void matricular(Aluno aluno) {
    super.matricular(aluno);
    notas[aluno] = [];
  }

  double media(Aluno aluno) {
    double soma = 0;
    for (double nota in notas[aluno]!) {
      soma += nota;
    }
    return notas[aluno]!.isEmpty ? 0.0 : soma / notas[aluno]!.length;
  }

  // Verificar aprovação
  bool isAprovado(Aluno aluno) {
    return media(aluno) >= 6.0;
  }
}

void main() {
  test('Testar matrícula de alunos e aprovação', () {
    Disciplina disciplina1 = Disciplina('Flutter');
    Professor professor1 = Professor('Walber'); // novo professor
    professor1.id = 99;

    Historico historico1 = Historico(disciplina1, professor1, 2025);

    // Cadastrar primeiro aluno sem erros
    Aluno aluno1 = Aluno('Adriano', 2025);
    aluno1.id = 1;
    historico1.matricular(aluno1);

    expect(historico1.media(aluno1), 0.0);
    expect(historico1.isAprovado(aluno1), isFalse);

    // adicionar notas e testar aprovação
    historico1.notas[aluno1] = [7.0, 8.0];
    expect(historico1.media(aluno1), 7.5);
    expect(historico1.isAprovado(aluno1), isTrue);

    // Cadastrar segundo aluno com erros
    Aluno aluno2 = Aluno('Maria', 2024);
    try {
      aluno2.id = 0;
    } catch (error) {
      expect(error, isA<ArgumentError>());
    }
    try {
      historico1.matricular(aluno2);
    } catch (error) {
      expect(error, isA<ArgumentError>());
    }
  });
}

