import 'package:flutter/material.dart';
import 'package:practice/repository/chat_repository.dart';
import 'package:practice/ui/chat_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  injector.registerLazySingleton<ChatRepository>(() => ChatRepository());
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatPage(),
    );
  }
}