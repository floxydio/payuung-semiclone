import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'db_init.g.dart';

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get namaLengkap => text().withLength(max: 50)();
  TextColumn get tanggalLahir => text().withLength(max: 50)();
  TextColumn get jenisKelamin => text().withLength(max: 50)();
  TextColumn get noHp => text().withLength(max: 50)();
  TextColumn get pendidikan => text().nullable().withLength(max: 50)();
  TextColumn get statusPernikahan => text().nullable().withLength(max: 50)();
  TextColumn get nik => text().nullable().withLength(max: 50)();
  TextColumn get alamat => text().nullable().withLength(max: 50)();
  TextColumn get provinsi => text().nullable().withLength(max: 50)();
  TextColumn get kota => text().nullable().withLength(max: 50)();
  TextColumn get kecamatan => text().nullable().withLength(max: 50)();
  TextColumn get kelurahan => text().nullable().withLength(max: 50)();
  IntColumn get kodePos => integer().nullable()();
  TextColumn get namaUsaha => text().nullable().withLength(max: 50)();
  TextColumn get alamatUsaha => text().nullable().withLength(max: 50)();
  TextColumn get jabatan => text().nullable().withLength(max: 50)();
  TextColumn get lamaBekerja => text().nullable().withLength(max: 50)();
  TextColumn get sumberPendapatan => text().nullable().withLength(max: 50)();
  TextColumn get pendapatanKotorPertahun =>
      text().nullable().withLength(max: 50)();
  TextColumn get namaBank => text().nullable().withLength(max: 50)();
  TextColumn get cabangBank => text().nullable().withLength(max: 50)();
  TextColumn get nomorRekening => text().nullable().withLength(max: 50)();
  TextColumn get namaPemilikRekening => text().nullable().withLength(max: 50)();
}

@DriftDatabase(tables: [Users])
class AppDatabase extends _$AppDatabase {
  AppDatabase._internal() : super(_openConnection());

  static final AppDatabase _instance = AppDatabase._internal();

  factory AppDatabase() {
    return _instance;
  }

  @override
  int get schemaVersion => 1;

  Future<List<User>> getAllUsers() => select(users).get();
  Future<User> getUserById(int id) {
    return (select(users)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<int> updateUser(User user) {
    return (update(users)..where((tbl) => tbl.id.equals(user.id))).write(user);
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}
