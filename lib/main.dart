import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:vogon_chat/app.dart';
import 'package:vogon_chat/app_store.dart';
import 'package:vogon_chat/pages/chat/presentation/chat_store.dart';
import 'package:vogon_chat/pages/home/home_store.dart';

void main() {
  runApp(const App());
  GetIt.I.registerSingleton(() => AppStore());
  GetIt.I.registerSingleton(() => HomeStore());
}
