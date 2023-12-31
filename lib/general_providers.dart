import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

part 'general_providers.g.dart';

@Riverpod(keepAlive: true)
Future<Database> sembastDatabase(SembastDatabaseRef ref) async {
// get the application documents directory
  var dir = await getApplicationDocumentsDirectory();
// make sure it exists
  await dir.create(recursive: true);
// build the database path
  var dbPath = join(dir.path, 'my_database.db');
// open the database
  print(dbPath);
  var db = await databaseFactoryIo.openDatabase(dbPath);
  return db;
}
