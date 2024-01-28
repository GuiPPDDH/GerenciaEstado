import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_imc/contador_codegen/contador_codegen_controller.dart';

class ContadorCodeGenPage extends StatefulWidget {
  const ContadorCodeGenPage({super.key});

  @override
  State<ContadorCodeGenPage> createState() => _ContadorCodeGenPageState();
}

class _ContadorCodeGenPageState extends State<ContadorCodeGenPage> {
  final controller = ContadorCodeGenController();
  final reactionDisposer = <ReactionDisposer>[];

  @override
  void initState() {
    super.initState();

    //* Autorun fica escutando as variáveis que estão sendo usadas dentro dele
    //* e também roda logo quando é criado.
    final autorunDispose = autorun((_) {
      print('============ Autorun ============');
      print(controller.fullName.first);
    });

    //* Reaction nós falamos para o mobx qual o atributo observavel que queremos observar.
    final reactionDispose = reaction((_) => controller.counter, (counter) {
      print('============ Reaction ============');
      print(counter);
    });

    final whenDispose = when((_) => controller.fullName.first == 'Guilherme', () {
      print('============ When ============');
      print(controller.fullName.first);
    });

    reactionDisposer.add(autorunDispose);
    reactionDisposer.add(reactionDispose);
    reactionDisposer.add(whenDispose);
  }

  @override
  void dispose() {
    super.dispose();
    reactionDisposer.forEach((reaction) => reaction());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Contador Mobx Code Gen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) {
                return Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Observer(
              builder: (_) {
                return Text(
                  controller.fullName.first,
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Observer(
              builder: (_) {
                return Text(
                  controller.fullName.last,
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Observer(
              builder: (_) {
                return Text(
                  controller.saudacao,
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            TextButton(
              onPressed: () => controller.changeName(),
              child: const Text('Change name'),
            ),
            TextButton(
              onPressed: () => controller.rollbackName(),
              child: const Text('Rollback name'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
