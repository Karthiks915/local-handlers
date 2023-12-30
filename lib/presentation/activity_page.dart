import 'package:cqrs_sembast/handlers/activity_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ActivityPage extends ConsumerWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activities = ref.watch(getAllActivitiesProvider);
    return activities.when(
        data: (data) => Text('Getting data'),
        error: (error, stack) => Text(error.toString()),
        loading: () => const CircularProgressIndicator());
  }
}


//UI > PRESENTATION > HANDLERS > REPOSITORY > DATABASE