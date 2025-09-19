import 'package:flutter_test/flutter_test.dart';

Future<int> process() async {
  await Future.delayed(Duration(seconds: 5));
  return 0;
}

Map<String, List<double>> alunos = {
  'Maria': [8.0, 9.0],
  'Bruna': [7.0, 7.0],
  'Carla': [10.0, 9.0],
};

Future<List<double>?> search(String key) async {
  return Future.delayed(Duration(seconds: 2), () {
    if (alunos.containsKey(key)) {
      return alunos[key]!;
    }
    throw ArgumentError('Aluno não encontrado.');
  });
}

Stream<int> count() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

//Exercício da semana 6: Stream que calcula a média das notas
Stream<double> media(List<String> nomes) async* {
  for (final nome in nomes) {
    final List<double>? notasNullable = await search(nome);
    if (notasNullable == null) {
      throw ArgumentError('Aluno não encontrado: $nome'); // fecha o stream
    }
    final notas = notasNullable;
    final soma = notas.fold<double>(0.0, (a, b) => a + b);
    yield notas.isEmpty ? 0.0 : soma / notas.length;
  }
}



void main() {
  group('Testes de programação assíncrona', () {
    late Future<int> result;
    setUp(() => result = process());

    test('Aguardando...', () => expect(result, isNotNull));

    test('Testando o resultado', () async {
      int num = await result;
      expect(num, 0);
    });

    test('Testando busca sem erros em Future', () {
      search('Maria').then((notas) => expect(notas, [8.0, 9.0]));
    });

    test('Testando busca com erros em Future', () {
      search('Paula').then((notas) {}).catchError((error) {
        expect(error, isA<ArgumentError>());
      });
    });

    test('Testando contagem em Stream', () {
      List<int> resultados = [];
      count().listen(
        (resultado) {
          resultados.add(resultado);
        },
        onDone: () {
          expect(resultados, [1, 2, 3]);
        },
        onError: (error) => expect(error, isNotNull),
      );
    });

    // 🚀 Testando a Stream de médias
    test('Testando media em Stream', () {
      List<double> resultados = [];
      media(['Maria', 'Paula', 'Bruna']).listen(
        (resultado) {
          resultados.add(resultado);
        },
        onDone: () {
          expect(resultados, [8.5, 7]);
        },
        onError: (error) => expect(error, isA<ArgumentError>()),
      );
    });
  });
}

