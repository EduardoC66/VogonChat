import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:vogon_chat/pages/home/home_store.dart';

final store = GetIt.I.get<HomeStore>();

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Vogon Chat"),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return SimpleDialog(
                    children: [
                      const Text('Adicionar Contato'),
                      TextFormField(
                        controller: store.adicionarContatoController,
                        decoration: const InputDecoration(
                          hintText: 'Nome do Contato',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          store.adicionarNovoContato();
                          Navigator.of(context).pop();
                        },
                        child: Text('Salvar'),
                      ),
                    ],
                  );
                });
          }),
    );
  }
}
