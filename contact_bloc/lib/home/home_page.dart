import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.grey),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/bloc/example');
                    },
                    child: const Text('Bloc Example', style: TextStyle(color: Colors.black),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/bloc/example/freezed');
                    },
                    child: const Text('Bloc Freezed Example', style: TextStyle(color: Colors.black),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/contacts/list');
                    },
                    child: const Text('Contacts Bloc', style: TextStyle(color: Colors.black),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/contacts/cubit/list');
                    },
                    child: const Text('Contacts Cubit', style: TextStyle(color: Colors.black),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
