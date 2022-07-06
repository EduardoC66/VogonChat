import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:vogon_chat/app_store.dart';

class ConfigView extends StatelessWidget {
  const ConfigView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I<AppStore>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Config.'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Observer(
              builder: (_) {
                return TextFormField(
                  controller: store.controllerUsuario,
                  decoration: const InputDecoration(
                    hintText: 'Nome do usuário',
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            Observer(
              builder: (_) {
                return TextFormField(
                  controller: store.controllerContato,
                  decoration: const InputDecoration(
                    hintText: 'Nome do contato',
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Recarregar Contatos'),
            ),
          ],
        ),
      ),
    );
  }
}
