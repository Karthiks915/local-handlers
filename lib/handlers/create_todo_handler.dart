import 'package:cqrs_sembast/domain/read_todo.dart';
import 'package:cqrs_sembast/domain/write_todo.dart';
import 'package:cqrs_sembast/general_providers.dart';
import 'package:cqrs_sembast/handlers/activity_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

part 'create_todo_handler.g.dart';

class CreateTodoHandler {
  final Database database;

  CreateTodoHandler({required this.database});
  var store = intMapStoreFactory.store('todos');

  Future<void> createTodo(String title) async {
    try {
      await database.transaction((txn) async {
        await store.add(
            txn,
            WriteTodo(
                    title: title,
                    createdAt: DateTime.now(),
                    dateModified: DateTime.now(),
                    status: 'active')
                .toJson());
        await ActivityRepository.add(txn, 'add', database);
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteTodo(int key) async {
    await database.transaction((txn) async {
      await store.record(key).delete(txn);

      // Log the activity
      await ActivityRepository.add(txn, 'delete', database);
    });
  }

  Future<void> updateTodo(int key, String newTitle) async {
    await database.transaction((txn) async {
      var record = store.record(key);
      var currentData = await record.get(txn) as Map<String, dynamic>;
      currentData['title'] = newTitle; // Updating the title
      currentData['dateModified'] =
          DateTime.now().toIso8601String(); // Updating the modified date
      await record.update(txn, currentData);

      // Log the activity
      await ActivityRepository.add(txn, 'update', database);
    });
  }

  Future<List<ReadTodo>> getAllTodos() async {
    // Open the store
    final store = intMapStoreFactory.store('todos');

    // Fetch all records as snapshots
    final snapshots = await store.find(database);

    // Convert each snapshot to a TodoQueryModel
    List<ReadTodo> todos = snapshots.map((snapshot) {
      // Assuming TodoQueryModel has a fromJson factory constructor
      return ReadTodo.fromJson(snapshot.value);
    }).toList();

    return todos;
  }
}

@riverpod
CreateTodoHandler createTodo(CreateTodoRef ref) {
  return CreateTodoHandler(
      database: ref.watch(sembastDatabaseProvider).requireValue);
}
