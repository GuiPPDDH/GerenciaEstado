import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExample extends StatelessWidget {
  const BlocExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        listenWhen: (previous, current) {
          if (previous is ExampleInitialState && current is ExampleStateData) {
            if (current.names.length > 3) {
              return true;
            }
          }
          return false;
        },
        listener: (context, state) {
          if (state is ExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('A quantidade de nomes é ${state.names.length}'),
              ),
            );
          }
        },
        child: Column(
          children: [
            BlocConsumer<ExampleBloc, ExampleState>(
              builder: (_, state) {
                if (state is ExampleStateData) {
                  return Text('Total de nomes é ${state.names.length}');
                }
                return const SizedBox.shrink();
              },
              listener: (context, state) {
                print('Estado alterado para ${state.runtimeType}');
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: (state) {
                if (state is ExampleInitialState) {
                  return true;
                }

                return false;
              },
              builder: (context, showLoader) {
                if (showLoader) {
                  return const Expanded(
                    child: CircularProgressIndicator(),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            BlocBuilder<ExampleBloc, ExampleState>(builder: (context, state) {
              if (state is ExampleStateData) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.names.length,
                  itemBuilder: (context, index) {
                    final name = state.names[index];
                    return ListTile(
                      onTap: () {
                        context.read<ExampleBloc>().add(ExampleRemoveNameEvent(name: name));
                      },
                      title: Text(name),
                    );
                  },
                );
              }
              return const SizedBox.shrink();
            }),
            BlocBuilder<ExampleBloc, ExampleState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: () {
                    context.read<ExampleBloc>().add(
                          ExampleAddNameEvent(name: 'Guilherme, desafio simples concluído'),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.orange,
                    minimumSize: const Size(120, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                  child: const Text('Clique para inserir um nome'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
