import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/observables/future/future_controller.dart';

class FuturePage extends StatelessWidget {
  const FuturePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = FutureController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Observable'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.buscarNome(),
        child: const Icon(Icons.add),
      ),
      body: Observer(
        builder: (_) {
          return FutureBuilder(
            future: controller.nomeFuture,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const SizedBox.shrink();
                case ConnectionState.waiting:
                case ConnectionState.active:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case ConnectionState.done:
                  if (snapshot.hasData) {
                    return Center(
                      child: Text(snapshot.data!),
                    );
                  }
                  return const Center(
                      child: Text('Nome não encontrado'),
                    );
              }
            },
          );
        },
      ),
    );
  }
}
