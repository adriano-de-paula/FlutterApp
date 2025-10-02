# FlutterApp - Semana 8

Este repositório faz parte das atividades da disciplina **Desenvolvimento de Aplicativos 1**.  
Na **Semana 8**, foi criada a branch `semana8`.

## O que foi feito nesta semana
- Estudo e prática de **navegação entre páginas** no Flutter com `Navigator`.
- Criação de nova página **ComponentsPage**.
- Alteração no `main.dart` para inserir um **Drawer (menu lateral)** que possibilite a navegação até a página de componentes.

## Ferramentas / conceitos usados
- **Navigator.push** e **Navigator.pop** para empilhar/desempilhar rotas.  
- **Drawer** como menu lateral para navegar dentro do app.

## Interface e navegação

### Drawer no `main.dart`
No menu lateral, foi incluída uma opção **“Componentes”**:
```dart
ListTile(
  leading: const Icon(Icons.pages),
  title: const Text('Componentes'),
  onTap: () {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ComponentsPage()),
    );
  },
),
```

### ComponentsPage `components.dart`

```dart
class ComponentsPage extends StatelessWidget {
  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes')),
      body: const Center(),
    );
  }
}
```

### Branches do projeto

- semana2 → Implementações do app no Firebase Studio e integração com GitHub

- semana3 → Testes unitários (dart_test.dart)

- semana4 → Estruturas de dados List e Map

- semana5 → Orientação a Objetos em Dart

- semana6 → Programação assíncrona com Future e Stream

- semana7 → Primeiras alterações na interface gráfica do Flutter (lib/main.dart)

- semana8 → Navegação entre páginas com Navigator e menu lateral

