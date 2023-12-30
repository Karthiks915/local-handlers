import 'package:cqrs_sembast/general_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';

part 'activity_repository.g.dart';

class ActivityRepository {
  static Future<void> add(
      Transaction txn, String operation, Database database) async {
    var store = intMapStoreFactory.store('activity');
    Map<String, dynamic> activityData;

    if (operation == 'add') {
      activityData = {'Operation': 'A new todo was added'};
    } else if (operation == 'delete') {
      activityData = {'Operation': 'A todo was deleted'};
    } else if (operation == 'update') {
      activityData = {'Operation': 'A todo was updated'};
    } else {
      print('Invalid operation');
      return;
    }

    await store.add(txn, activityData);
  }

  Future<List<String>> getAllActivities(Database database) async {
    var store = intMapStoreFactory.store('activity');

    // Fetch all records as snapshots
    final snapshots = await store.find(database);

    // Convert each snapshot to a String (representing the Operation)
    List<String> activities = snapshots.map((snapshot) {
      return snapshot.value['Operation'] as String;
    }).toList();

    return activities;
  }
}

@Riverpod(keepAlive: true)
Future<List> getAllActivities(GetAllActivitiesRef ref) {
  return ActivityRepository()
      .getAllActivities(ref.watch(sembastDatabaseProvider).requireValue);
}
