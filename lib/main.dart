import 'package:cqrs_sembast/general_providers.dart';
import 'package:cqrs_sembast/presentation/add_todo_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: Consumer(
    builder: (((context, ref, child) {
      final states = [
        ref.watch(sembastDatabaseProvider),
      ];

      if (states.every((state) => state is AsyncData)) {
        return const MainApp();
      }

      if (states.any((state) => state is AsyncError)) {
        print(AsyncError);
      }

      return const Center(child: CircularProgressIndicator());
    })),
  )));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: AddTodoPage()),
    );
  }
}




