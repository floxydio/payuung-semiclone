// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_init.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _namaLengkapMeta =
      const VerificationMeta('namaLengkap');
  @override
  late final GeneratedColumn<String> namaLengkap = GeneratedColumn<String>(
      'nama_lengkap', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _tanggalLahirMeta =
      const VerificationMeta('tanggalLahir');
  @override
  late final GeneratedColumn<String> tanggalLahir = GeneratedColumn<String>(
      'tanggal_lahir', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _jenisKelaminMeta =
      const VerificationMeta('jenisKelamin');
  @override
  late final GeneratedColumn<String> jenisKelamin = GeneratedColumn<String>(
      'jenis_kelamin', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _noHpMeta = const VerificationMeta('noHp');
  @override
  late final GeneratedColumn<String> noHp = GeneratedColumn<String>(
      'no_hp', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _pendidikanMeta =
      const VerificationMeta('pendidikan');
  @override
  late final GeneratedColumn<String> pendidikan = GeneratedColumn<String>(
      'pendidikan', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _statusPernikahanMeta =
      const VerificationMeta('statusPernikahan');
  @override
  late final GeneratedColumn<String> statusPernikahan = GeneratedColumn<String>(
      'status_pernikahan', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _nikMeta = const VerificationMeta('nik');
  @override
  late final GeneratedColumn<String> nik = GeneratedColumn<String>(
      'nik', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _alamatMeta = const VerificationMeta('alamat');
  @override
  late final GeneratedColumn<String> alamat = GeneratedColumn<String>(
      'alamat', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _provinsiMeta =
      const VerificationMeta('provinsi');
  @override
  late final GeneratedColumn<String> provinsi = GeneratedColumn<String>(
      'provinsi', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _kotaMeta = const VerificationMeta('kota');
  @override
  late final GeneratedColumn<String> kota = GeneratedColumn<String>(
      'kota', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _kecamatanMeta =
      const VerificationMeta('kecamatan');
  @override
  late final GeneratedColumn<String> kecamatan = GeneratedColumn<String>(
      'kecamatan', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _kelurahanMeta =
      const VerificationMeta('kelurahan');
  @override
  late final GeneratedColumn<String> kelurahan = GeneratedColumn<String>(
      'kelurahan', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _kodePosMeta =
      const VerificationMeta('kodePos');
  @override
  late final GeneratedColumn<int> kodePos = GeneratedColumn<int>(
      'kode_pos', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _namaUsahaMeta =
      const VerificationMeta('namaUsaha');
  @override
  late final GeneratedColumn<String> namaUsaha = GeneratedColumn<String>(
      'nama_usaha', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _alamatUsahaMeta =
      const VerificationMeta('alamatUsaha');
  @override
  late final GeneratedColumn<String> alamatUsaha = GeneratedColumn<String>(
      'alamat_usaha', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _jabatanMeta =
      const VerificationMeta('jabatan');
  @override
  late final GeneratedColumn<String> jabatan = GeneratedColumn<String>(
      'jabatan', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _lamaBekerjaMeta =
      const VerificationMeta('lamaBekerja');
  @override
  late final GeneratedColumn<String> lamaBekerja = GeneratedColumn<String>(
      'lama_bekerja', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _sumberPendapatanMeta =
      const VerificationMeta('sumberPendapatan');
  @override
  late final GeneratedColumn<String> sumberPendapatan = GeneratedColumn<String>(
      'sumber_pendapatan', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _pendapatanKotorPertahunMeta =
      const VerificationMeta('pendapatanKotorPertahun');
  @override
  late final GeneratedColumn<String> pendapatanKotorPertahun =
      GeneratedColumn<String>('pendapatan_kotor_pertahun', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  static const VerificationMeta _namaBankMeta =
      const VerificationMeta('namaBank');
  @override
  late final GeneratedColumn<String> namaBank = GeneratedColumn<String>(
      'nama_bank', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _cabangBankMeta =
      const VerificationMeta('cabangBank');
  @override
  late final GeneratedColumn<String> cabangBank = GeneratedColumn<String>(
      'cabang_bank', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _nomorRekeningMeta =
      const VerificationMeta('nomorRekening');
  @override
  late final GeneratedColumn<String> nomorRekening = GeneratedColumn<String>(
      'nomor_rekening', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _namaPemilikRekeningMeta =
      const VerificationMeta('namaPemilikRekening');
  @override
  late final GeneratedColumn<String> namaPemilikRekening =
      GeneratedColumn<String>('nama_pemilik_rekening', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
          type: DriftSqlType.string,
          requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        namaLengkap,
        tanggalLahir,
        jenisKelamin,
        noHp,
        pendidikan,
        statusPernikahan,
        nik,
        alamat,
        provinsi,
        kota,
        kecamatan,
        kelurahan,
        kodePos,
        namaUsaha,
        alamatUsaha,
        jabatan,
        lamaBekerja,
        sumberPendapatan,
        pendapatanKotorPertahun,
        namaBank,
        cabangBank,
        nomorRekening,
        namaPemilikRekening
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nama_lengkap')) {
      context.handle(
          _namaLengkapMeta,
          namaLengkap.isAcceptableOrUnknown(
              data['nama_lengkap']!, _namaLengkapMeta));
    } else if (isInserting) {
      context.missing(_namaLengkapMeta);
    }
    if (data.containsKey('tanggal_lahir')) {
      context.handle(
          _tanggalLahirMeta,
          tanggalLahir.isAcceptableOrUnknown(
              data['tanggal_lahir']!, _tanggalLahirMeta));
    } else if (isInserting) {
      context.missing(_tanggalLahirMeta);
    }
    if (data.containsKey('jenis_kelamin')) {
      context.handle(
          _jenisKelaminMeta,
          jenisKelamin.isAcceptableOrUnknown(
              data['jenis_kelamin']!, _jenisKelaminMeta));
    } else if (isInserting) {
      context.missing(_jenisKelaminMeta);
    }
    if (data.containsKey('no_hp')) {
      context.handle(
          _noHpMeta, noHp.isAcceptableOrUnknown(data['no_hp']!, _noHpMeta));
    } else if (isInserting) {
      context.missing(_noHpMeta);
    }
    if (data.containsKey('pendidikan')) {
      context.handle(
          _pendidikanMeta,
          pendidikan.isAcceptableOrUnknown(
              data['pendidikan']!, _pendidikanMeta));
    }
    if (data.containsKey('status_pernikahan')) {
      context.handle(
          _statusPernikahanMeta,
          statusPernikahan.isAcceptableOrUnknown(
              data['status_pernikahan']!, _statusPernikahanMeta));
    }
    if (data.containsKey('nik')) {
      context.handle(
          _nikMeta, nik.isAcceptableOrUnknown(data['nik']!, _nikMeta));
    }
    if (data.containsKey('alamat')) {
      context.handle(_alamatMeta,
          alamat.isAcceptableOrUnknown(data['alamat']!, _alamatMeta));
    }
    if (data.containsKey('provinsi')) {
      context.handle(_provinsiMeta,
          provinsi.isAcceptableOrUnknown(data['provinsi']!, _provinsiMeta));
    }
    if (data.containsKey('kota')) {
      context.handle(
          _kotaMeta, kota.isAcceptableOrUnknown(data['kota']!, _kotaMeta));
    }
    if (data.containsKey('kecamatan')) {
      context.handle(_kecamatanMeta,
          kecamatan.isAcceptableOrUnknown(data['kecamatan']!, _kecamatanMeta));
    }
    if (data.containsKey('kelurahan')) {
      context.handle(_kelurahanMeta,
          kelurahan.isAcceptableOrUnknown(data['kelurahan']!, _kelurahanMeta));
    }
    if (data.containsKey('kode_pos')) {
      context.handle(_kodePosMeta,
          kodePos.isAcceptableOrUnknown(data['kode_pos']!, _kodePosMeta));
    }
    if (data.containsKey('nama_usaha')) {
      context.handle(_namaUsahaMeta,
          namaUsaha.isAcceptableOrUnknown(data['nama_usaha']!, _namaUsahaMeta));
    }
    if (data.containsKey('alamat_usaha')) {
      context.handle(
          _alamatUsahaMeta,
          alamatUsaha.isAcceptableOrUnknown(
              data['alamat_usaha']!, _alamatUsahaMeta));
    }
    if (data.containsKey('jabatan')) {
      context.handle(_jabatanMeta,
          jabatan.isAcceptableOrUnknown(data['jabatan']!, _jabatanMeta));
    }
    if (data.containsKey('lama_bekerja')) {
      context.handle(
          _lamaBekerjaMeta,
          lamaBekerja.isAcceptableOrUnknown(
              data['lama_bekerja']!, _lamaBekerjaMeta));
    }
    if (data.containsKey('sumber_pendapatan')) {
      context.handle(
          _sumberPendapatanMeta,
          sumberPendapatan.isAcceptableOrUnknown(
              data['sumber_pendapatan']!, _sumberPendapatanMeta));
    }
    if (data.containsKey('pendapatan_kotor_pertahun')) {
      context.handle(
          _pendapatanKotorPertahunMeta,
          pendapatanKotorPertahun.isAcceptableOrUnknown(
              data['pendapatan_kotor_pertahun']!,
              _pendapatanKotorPertahunMeta));
    }
    if (data.containsKey('nama_bank')) {
      context.handle(_namaBankMeta,
          namaBank.isAcceptableOrUnknown(data['nama_bank']!, _namaBankMeta));
    }
    if (data.containsKey('cabang_bank')) {
      context.handle(
          _cabangBankMeta,
          cabangBank.isAcceptableOrUnknown(
              data['cabang_bank']!, _cabangBankMeta));
    }
    if (data.containsKey('nomor_rekening')) {
      context.handle(
          _nomorRekeningMeta,
          nomorRekening.isAcceptableOrUnknown(
              data['nomor_rekening']!, _nomorRekeningMeta));
    }
    if (data.containsKey('nama_pemilik_rekening')) {
      context.handle(
          _namaPemilikRekeningMeta,
          namaPemilikRekening.isAcceptableOrUnknown(
              data['nama_pemilik_rekening']!, _namaPemilikRekeningMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      namaLengkap: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nama_lengkap'])!,
      tanggalLahir: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tanggal_lahir'])!,
      jenisKelamin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}jenis_kelamin'])!,
      noHp: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}no_hp'])!,
      pendidikan: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pendidikan']),
      statusPernikahan: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}status_pernikahan']),
      nik: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nik']),
      alamat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alamat']),
      provinsi: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}provinsi']),
      kota: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kota']),
      kecamatan: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kecamatan']),
      kelurahan: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kelurahan']),
      kodePos: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}kode_pos']),
      namaUsaha: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nama_usaha']),
      alamatUsaha: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alamat_usaha']),
      jabatan: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}jabatan']),
      lamaBekerja: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lama_bekerja']),
      sumberPendapatan: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sumber_pendapatan']),
      pendapatanKotorPertahun: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}pendapatan_kotor_pertahun']),
      namaBank: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nama_bank']),
      cabangBank: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cabang_bank']),
      nomorRekening: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nomor_rekening']),
      namaPemilikRekening: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}nama_pemilik_rekening']),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String namaLengkap;
  final String tanggalLahir;
  final String jenisKelamin;
  final String noHp;
  final String? pendidikan;
  final String? statusPernikahan;
  final String? nik;
  final String? alamat;
  final String? provinsi;
  final String? kota;
  final String? kecamatan;
  final String? kelurahan;
  final int? kodePos;
  final String? namaUsaha;
  final String? alamatUsaha;
  final String? jabatan;
  final String? lamaBekerja;
  final String? sumberPendapatan;
  final String? pendapatanKotorPertahun;
  final String? namaBank;
  final String? cabangBank;
  final String? nomorRekening;
  final String? namaPemilikRekening;
  const User(
      {required this.id,
      required this.namaLengkap,
      required this.tanggalLahir,
      required this.jenisKelamin,
      required this.noHp,
      this.pendidikan,
      this.statusPernikahan,
      this.nik,
      this.alamat,
      this.provinsi,
      this.kota,
      this.kecamatan,
      this.kelurahan,
      this.kodePos,
      this.namaUsaha,
      this.alamatUsaha,
      this.jabatan,
      this.lamaBekerja,
      this.sumberPendapatan,
      this.pendapatanKotorPertahun,
      this.namaBank,
      this.cabangBank,
      this.nomorRekening,
      this.namaPemilikRekening});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nama_lengkap'] = Variable<String>(namaLengkap);
    map['tanggal_lahir'] = Variable<String>(tanggalLahir);
    map['jenis_kelamin'] = Variable<String>(jenisKelamin);
    map['no_hp'] = Variable<String>(noHp);
    if (!nullToAbsent || pendidikan != null) {
      map['pendidikan'] = Variable<String>(pendidikan);
    }
    if (!nullToAbsent || statusPernikahan != null) {
      map['status_pernikahan'] = Variable<String>(statusPernikahan);
    }
    if (!nullToAbsent || nik != null) {
      map['nik'] = Variable<String>(nik);
    }
    if (!nullToAbsent || alamat != null) {
      map['alamat'] = Variable<String>(alamat);
    }
    if (!nullToAbsent || provinsi != null) {
      map['provinsi'] = Variable<String>(provinsi);
    }
    if (!nullToAbsent || kota != null) {
      map['kota'] = Variable<String>(kota);
    }
    if (!nullToAbsent || kecamatan != null) {
      map['kecamatan'] = Variable<String>(kecamatan);
    }
    if (!nullToAbsent || kelurahan != null) {
      map['kelurahan'] = Variable<String>(kelurahan);
    }
    if (!nullToAbsent || kodePos != null) {
      map['kode_pos'] = Variable<int>(kodePos);
    }
    if (!nullToAbsent || namaUsaha != null) {
      map['nama_usaha'] = Variable<String>(namaUsaha);
    }
    if (!nullToAbsent || alamatUsaha != null) {
      map['alamat_usaha'] = Variable<String>(alamatUsaha);
    }
    if (!nullToAbsent || jabatan != null) {
      map['jabatan'] = Variable<String>(jabatan);
    }
    if (!nullToAbsent || lamaBekerja != null) {
      map['lama_bekerja'] = Variable<String>(lamaBekerja);
    }
    if (!nullToAbsent || sumberPendapatan != null) {
      map['sumber_pendapatan'] = Variable<String>(sumberPendapatan);
    }
    if (!nullToAbsent || pendapatanKotorPertahun != null) {
      map['pendapatan_kotor_pertahun'] =
          Variable<String>(pendapatanKotorPertahun);
    }
    if (!nullToAbsent || namaBank != null) {
      map['nama_bank'] = Variable<String>(namaBank);
    }
    if (!nullToAbsent || cabangBank != null) {
      map['cabang_bank'] = Variable<String>(cabangBank);
    }
    if (!nullToAbsent || nomorRekening != null) {
      map['nomor_rekening'] = Variable<String>(nomorRekening);
    }
    if (!nullToAbsent || namaPemilikRekening != null) {
      map['nama_pemilik_rekening'] = Variable<String>(namaPemilikRekening);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      namaLengkap: Value(namaLengkap),
      tanggalLahir: Value(tanggalLahir),
      jenisKelamin: Value(jenisKelamin),
      noHp: Value(noHp),
      pendidikan: pendidikan == null && nullToAbsent
          ? const Value.absent()
          : Value(pendidikan),
      statusPernikahan: statusPernikahan == null && nullToAbsent
          ? const Value.absent()
          : Value(statusPernikahan),
      nik: nik == null && nullToAbsent ? const Value.absent() : Value(nik),
      alamat:
          alamat == null && nullToAbsent ? const Value.absent() : Value(alamat),
      provinsi: provinsi == null && nullToAbsent
          ? const Value.absent()
          : Value(provinsi),
      kota: kota == null && nullToAbsent ? const Value.absent() : Value(kota),
      kecamatan: kecamatan == null && nullToAbsent
          ? const Value.absent()
          : Value(kecamatan),
      kelurahan: kelurahan == null && nullToAbsent
          ? const Value.absent()
          : Value(kelurahan),
      kodePos: kodePos == null && nullToAbsent
          ? const Value.absent()
          : Value(kodePos),
      namaUsaha: namaUsaha == null && nullToAbsent
          ? const Value.absent()
          : Value(namaUsaha),
      alamatUsaha: alamatUsaha == null && nullToAbsent
          ? const Value.absent()
          : Value(alamatUsaha),
      jabatan: jabatan == null && nullToAbsent
          ? const Value.absent()
          : Value(jabatan),
      lamaBekerja: lamaBekerja == null && nullToAbsent
          ? const Value.absent()
          : Value(lamaBekerja),
      sumberPendapatan: sumberPendapatan == null && nullToAbsent
          ? const Value.absent()
          : Value(sumberPendapatan),
      pendapatanKotorPertahun: pendapatanKotorPertahun == null && nullToAbsent
          ? const Value.absent()
          : Value(pendapatanKotorPertahun),
      namaBank: namaBank == null && nullToAbsent
          ? const Value.absent()
          : Value(namaBank),
      cabangBank: cabangBank == null && nullToAbsent
          ? const Value.absent()
          : Value(cabangBank),
      nomorRekening: nomorRekening == null && nullToAbsent
          ? const Value.absent()
          : Value(nomorRekening),
      namaPemilikRekening: namaPemilikRekening == null && nullToAbsent
          ? const Value.absent()
          : Value(namaPemilikRekening),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      namaLengkap: serializer.fromJson<String>(json['namaLengkap']),
      tanggalLahir: serializer.fromJson<String>(json['tanggalLahir']),
      jenisKelamin: serializer.fromJson<String>(json['jenisKelamin']),
      noHp: serializer.fromJson<String>(json['noHp']),
      pendidikan: serializer.fromJson<String?>(json['pendidikan']),
      statusPernikahan: serializer.fromJson<String?>(json['statusPernikahan']),
      nik: serializer.fromJson<String?>(json['nik']),
      alamat: serializer.fromJson<String?>(json['alamat']),
      provinsi: serializer.fromJson<String?>(json['provinsi']),
      kota: serializer.fromJson<String?>(json['kota']),
      kecamatan: serializer.fromJson<String?>(json['kecamatan']),
      kelurahan: serializer.fromJson<String?>(json['kelurahan']),
      kodePos: serializer.fromJson<int?>(json['kodePos']),
      namaUsaha: serializer.fromJson<String?>(json['namaUsaha']),
      alamatUsaha: serializer.fromJson<String?>(json['alamatUsaha']),
      jabatan: serializer.fromJson<String?>(json['jabatan']),
      lamaBekerja: serializer.fromJson<String?>(json['lamaBekerja']),
      sumberPendapatan: serializer.fromJson<String?>(json['sumberPendapatan']),
      pendapatanKotorPertahun:
          serializer.fromJson<String?>(json['pendapatanKotorPertahun']),
      namaBank: serializer.fromJson<String?>(json['namaBank']),
      cabangBank: serializer.fromJson<String?>(json['cabangBank']),
      nomorRekening: serializer.fromJson<String?>(json['nomorRekening']),
      namaPemilikRekening:
          serializer.fromJson<String?>(json['namaPemilikRekening']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'namaLengkap': serializer.toJson<String>(namaLengkap),
      'tanggalLahir': serializer.toJson<String>(tanggalLahir),
      'jenisKelamin': serializer.toJson<String>(jenisKelamin),
      'noHp': serializer.toJson<String>(noHp),
      'pendidikan': serializer.toJson<String?>(pendidikan),
      'statusPernikahan': serializer.toJson<String?>(statusPernikahan),
      'nik': serializer.toJson<String?>(nik),
      'alamat': serializer.toJson<String?>(alamat),
      'provinsi': serializer.toJson<String?>(provinsi),
      'kota': serializer.toJson<String?>(kota),
      'kecamatan': serializer.toJson<String?>(kecamatan),
      'kelurahan': serializer.toJson<String?>(kelurahan),
      'kodePos': serializer.toJson<int?>(kodePos),
      'namaUsaha': serializer.toJson<String?>(namaUsaha),
      'alamatUsaha': serializer.toJson<String?>(alamatUsaha),
      'jabatan': serializer.toJson<String?>(jabatan),
      'lamaBekerja': serializer.toJson<String?>(lamaBekerja),
      'sumberPendapatan': serializer.toJson<String?>(sumberPendapatan),
      'pendapatanKotorPertahun':
          serializer.toJson<String?>(pendapatanKotorPertahun),
      'namaBank': serializer.toJson<String?>(namaBank),
      'cabangBank': serializer.toJson<String?>(cabangBank),
      'nomorRekening': serializer.toJson<String?>(nomorRekening),
      'namaPemilikRekening': serializer.toJson<String?>(namaPemilikRekening),
    };
  }

  User copyWith(
          {int? id,
          String? namaLengkap,
          String? tanggalLahir,
          String? jenisKelamin,
          String? noHp,
          Value<String?> pendidikan = const Value.absent(),
          Value<String?> statusPernikahan = const Value.absent(),
          Value<String?> nik = const Value.absent(),
          Value<String?> alamat = const Value.absent(),
          Value<String?> provinsi = const Value.absent(),
          Value<String?> kota = const Value.absent(),
          Value<String?> kecamatan = const Value.absent(),
          Value<String?> kelurahan = const Value.absent(),
          Value<int?> kodePos = const Value.absent(),
          Value<String?> namaUsaha = const Value.absent(),
          Value<String?> alamatUsaha = const Value.absent(),
          Value<String?> jabatan = const Value.absent(),
          Value<String?> lamaBekerja = const Value.absent(),
          Value<String?> sumberPendapatan = const Value.absent(),
          Value<String?> pendapatanKotorPertahun = const Value.absent(),
          Value<String?> namaBank = const Value.absent(),
          Value<String?> cabangBank = const Value.absent(),
          Value<String?> nomorRekening = const Value.absent(),
          Value<String?> namaPemilikRekening = const Value.absent()}) =>
      User(
        id: id ?? this.id,
        namaLengkap: namaLengkap ?? this.namaLengkap,
        tanggalLahir: tanggalLahir ?? this.tanggalLahir,
        jenisKelamin: jenisKelamin ?? this.jenisKelamin,
        noHp: noHp ?? this.noHp,
        pendidikan: pendidikan.present ? pendidikan.value : this.pendidikan,
        statusPernikahan: statusPernikahan.present
            ? statusPernikahan.value
            : this.statusPernikahan,
        nik: nik.present ? nik.value : this.nik,
        alamat: alamat.present ? alamat.value : this.alamat,
        provinsi: provinsi.present ? provinsi.value : this.provinsi,
        kota: kota.present ? kota.value : this.kota,
        kecamatan: kecamatan.present ? kecamatan.value : this.kecamatan,
        kelurahan: kelurahan.present ? kelurahan.value : this.kelurahan,
        kodePos: kodePos.present ? kodePos.value : this.kodePos,
        namaUsaha: namaUsaha.present ? namaUsaha.value : this.namaUsaha,
        alamatUsaha: alamatUsaha.present ? alamatUsaha.value : this.alamatUsaha,
        jabatan: jabatan.present ? jabatan.value : this.jabatan,
        lamaBekerja: lamaBekerja.present ? lamaBekerja.value : this.lamaBekerja,
        sumberPendapatan: sumberPendapatan.present
            ? sumberPendapatan.value
            : this.sumberPendapatan,
        pendapatanKotorPertahun: pendapatanKotorPertahun.present
            ? pendapatanKotorPertahun.value
            : this.pendapatanKotorPertahun,
        namaBank: namaBank.present ? namaBank.value : this.namaBank,
        cabangBank: cabangBank.present ? cabangBank.value : this.cabangBank,
        nomorRekening:
            nomorRekening.present ? nomorRekening.value : this.nomorRekening,
        namaPemilikRekening: namaPemilikRekening.present
            ? namaPemilikRekening.value
            : this.namaPemilikRekening,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      namaLengkap:
          data.namaLengkap.present ? data.namaLengkap.value : this.namaLengkap,
      tanggalLahir: data.tanggalLahir.present
          ? data.tanggalLahir.value
          : this.tanggalLahir,
      jenisKelamin: data.jenisKelamin.present
          ? data.jenisKelamin.value
          : this.jenisKelamin,
      noHp: data.noHp.present ? data.noHp.value : this.noHp,
      pendidikan:
          data.pendidikan.present ? data.pendidikan.value : this.pendidikan,
      statusPernikahan: data.statusPernikahan.present
          ? data.statusPernikahan.value
          : this.statusPernikahan,
      nik: data.nik.present ? data.nik.value : this.nik,
      alamat: data.alamat.present ? data.alamat.value : this.alamat,
      provinsi: data.provinsi.present ? data.provinsi.value : this.provinsi,
      kota: data.kota.present ? data.kota.value : this.kota,
      kecamatan: data.kecamatan.present ? data.kecamatan.value : this.kecamatan,
      kelurahan: data.kelurahan.present ? data.kelurahan.value : this.kelurahan,
      kodePos: data.kodePos.present ? data.kodePos.value : this.kodePos,
      namaUsaha: data.namaUsaha.present ? data.namaUsaha.value : this.namaUsaha,
      alamatUsaha:
          data.alamatUsaha.present ? data.alamatUsaha.value : this.alamatUsaha,
      jabatan: data.jabatan.present ? data.jabatan.value : this.jabatan,
      lamaBekerja:
          data.lamaBekerja.present ? data.lamaBekerja.value : this.lamaBekerja,
      sumberPendapatan: data.sumberPendapatan.present
          ? data.sumberPendapatan.value
          : this.sumberPendapatan,
      pendapatanKotorPertahun: data.pendapatanKotorPertahun.present
          ? data.pendapatanKotorPertahun.value
          : this.pendapatanKotorPertahun,
      namaBank: data.namaBank.present ? data.namaBank.value : this.namaBank,
      cabangBank:
          data.cabangBank.present ? data.cabangBank.value : this.cabangBank,
      nomorRekening: data.nomorRekening.present
          ? data.nomorRekening.value
          : this.nomorRekening,
      namaPemilikRekening: data.namaPemilikRekening.present
          ? data.namaPemilikRekening.value
          : this.namaPemilikRekening,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('namaLengkap: $namaLengkap, ')
          ..write('tanggalLahir: $tanggalLahir, ')
          ..write('jenisKelamin: $jenisKelamin, ')
          ..write('noHp: $noHp, ')
          ..write('pendidikan: $pendidikan, ')
          ..write('statusPernikahan: $statusPernikahan, ')
          ..write('nik: $nik, ')
          ..write('alamat: $alamat, ')
          ..write('provinsi: $provinsi, ')
          ..write('kota: $kota, ')
          ..write('kecamatan: $kecamatan, ')
          ..write('kelurahan: $kelurahan, ')
          ..write('kodePos: $kodePos, ')
          ..write('namaUsaha: $namaUsaha, ')
          ..write('alamatUsaha: $alamatUsaha, ')
          ..write('jabatan: $jabatan, ')
          ..write('lamaBekerja: $lamaBekerja, ')
          ..write('sumberPendapatan: $sumberPendapatan, ')
          ..write('pendapatanKotorPertahun: $pendapatanKotorPertahun, ')
          ..write('namaBank: $namaBank, ')
          ..write('cabangBank: $cabangBank, ')
          ..write('nomorRekening: $nomorRekening, ')
          ..write('namaPemilikRekening: $namaPemilikRekening')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        namaLengkap,
        tanggalLahir,
        jenisKelamin,
        noHp,
        pendidikan,
        statusPernikahan,
        nik,
        alamat,
        provinsi,
        kota,
        kecamatan,
        kelurahan,
        kodePos,
        namaUsaha,
        alamatUsaha,
        jabatan,
        lamaBekerja,
        sumberPendapatan,
        pendapatanKotorPertahun,
        namaBank,
        cabangBank,
        nomorRekening,
        namaPemilikRekening
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.namaLengkap == this.namaLengkap &&
          other.tanggalLahir == this.tanggalLahir &&
          other.jenisKelamin == this.jenisKelamin &&
          other.noHp == this.noHp &&
          other.pendidikan == this.pendidikan &&
          other.statusPernikahan == this.statusPernikahan &&
          other.nik == this.nik &&
          other.alamat == this.alamat &&
          other.provinsi == this.provinsi &&
          other.kota == this.kota &&
          other.kecamatan == this.kecamatan &&
          other.kelurahan == this.kelurahan &&
          other.kodePos == this.kodePos &&
          other.namaUsaha == this.namaUsaha &&
          other.alamatUsaha == this.alamatUsaha &&
          other.jabatan == this.jabatan &&
          other.lamaBekerja == this.lamaBekerja &&
          other.sumberPendapatan == this.sumberPendapatan &&
          other.pendapatanKotorPertahun == this.pendapatanKotorPertahun &&
          other.namaBank == this.namaBank &&
          other.cabangBank == this.cabangBank &&
          other.nomorRekening == this.nomorRekening &&
          other.namaPemilikRekening == this.namaPemilikRekening);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> namaLengkap;
  final Value<String> tanggalLahir;
  final Value<String> jenisKelamin;
  final Value<String> noHp;
  final Value<String?> pendidikan;
  final Value<String?> statusPernikahan;
  final Value<String?> nik;
  final Value<String?> alamat;
  final Value<String?> provinsi;
  final Value<String?> kota;
  final Value<String?> kecamatan;
  final Value<String?> kelurahan;
  final Value<int?> kodePos;
  final Value<String?> namaUsaha;
  final Value<String?> alamatUsaha;
  final Value<String?> jabatan;
  final Value<String?> lamaBekerja;
  final Value<String?> sumberPendapatan;
  final Value<String?> pendapatanKotorPertahun;
  final Value<String?> namaBank;
  final Value<String?> cabangBank;
  final Value<String?> nomorRekening;
  final Value<String?> namaPemilikRekening;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.namaLengkap = const Value.absent(),
    this.tanggalLahir = const Value.absent(),
    this.jenisKelamin = const Value.absent(),
    this.noHp = const Value.absent(),
    this.pendidikan = const Value.absent(),
    this.statusPernikahan = const Value.absent(),
    this.nik = const Value.absent(),
    this.alamat = const Value.absent(),
    this.provinsi = const Value.absent(),
    this.kota = const Value.absent(),
    this.kecamatan = const Value.absent(),
    this.kelurahan = const Value.absent(),
    this.kodePos = const Value.absent(),
    this.namaUsaha = const Value.absent(),
    this.alamatUsaha = const Value.absent(),
    this.jabatan = const Value.absent(),
    this.lamaBekerja = const Value.absent(),
    this.sumberPendapatan = const Value.absent(),
    this.pendapatanKotorPertahun = const Value.absent(),
    this.namaBank = const Value.absent(),
    this.cabangBank = const Value.absent(),
    this.nomorRekening = const Value.absent(),
    this.namaPemilikRekening = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String namaLengkap,
    required String tanggalLahir,
    required String jenisKelamin,
    required String noHp,
    this.pendidikan = const Value.absent(),
    this.statusPernikahan = const Value.absent(),
    this.nik = const Value.absent(),
    this.alamat = const Value.absent(),
    this.provinsi = const Value.absent(),
    this.kota = const Value.absent(),
    this.kecamatan = const Value.absent(),
    this.kelurahan = const Value.absent(),
    this.kodePos = const Value.absent(),
    this.namaUsaha = const Value.absent(),
    this.alamatUsaha = const Value.absent(),
    this.jabatan = const Value.absent(),
    this.lamaBekerja = const Value.absent(),
    this.sumberPendapatan = const Value.absent(),
    this.pendapatanKotorPertahun = const Value.absent(),
    this.namaBank = const Value.absent(),
    this.cabangBank = const Value.absent(),
    this.nomorRekening = const Value.absent(),
    this.namaPemilikRekening = const Value.absent(),
  })  : namaLengkap = Value(namaLengkap),
        tanggalLahir = Value(tanggalLahir),
        jenisKelamin = Value(jenisKelamin),
        noHp = Value(noHp);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? namaLengkap,
    Expression<String>? tanggalLahir,
    Expression<String>? jenisKelamin,
    Expression<String>? noHp,
    Expression<String>? pendidikan,
    Expression<String>? statusPernikahan,
    Expression<String>? nik,
    Expression<String>? alamat,
    Expression<String>? provinsi,
    Expression<String>? kota,
    Expression<String>? kecamatan,
    Expression<String>? kelurahan,
    Expression<int>? kodePos,
    Expression<String>? namaUsaha,
    Expression<String>? alamatUsaha,
    Expression<String>? jabatan,
    Expression<String>? lamaBekerja,
    Expression<String>? sumberPendapatan,
    Expression<String>? pendapatanKotorPertahun,
    Expression<String>? namaBank,
    Expression<String>? cabangBank,
    Expression<String>? nomorRekening,
    Expression<String>? namaPemilikRekening,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (namaLengkap != null) 'nama_lengkap': namaLengkap,
      if (tanggalLahir != null) 'tanggal_lahir': tanggalLahir,
      if (jenisKelamin != null) 'jenis_kelamin': jenisKelamin,
      if (noHp != null) 'no_hp': noHp,
      if (pendidikan != null) 'pendidikan': pendidikan,
      if (statusPernikahan != null) 'status_pernikahan': statusPernikahan,
      if (nik != null) 'nik': nik,
      if (alamat != null) 'alamat': alamat,
      if (provinsi != null) 'provinsi': provinsi,
      if (kota != null) 'kota': kota,
      if (kecamatan != null) 'kecamatan': kecamatan,
      if (kelurahan != null) 'kelurahan': kelurahan,
      if (kodePos != null) 'kode_pos': kodePos,
      if (namaUsaha != null) 'nama_usaha': namaUsaha,
      if (alamatUsaha != null) 'alamat_usaha': alamatUsaha,
      if (jabatan != null) 'jabatan': jabatan,
      if (lamaBekerja != null) 'lama_bekerja': lamaBekerja,
      if (sumberPendapatan != null) 'sumber_pendapatan': sumberPendapatan,
      if (pendapatanKotorPertahun != null)
        'pendapatan_kotor_pertahun': pendapatanKotorPertahun,
      if (namaBank != null) 'nama_bank': namaBank,
      if (cabangBank != null) 'cabang_bank': cabangBank,
      if (nomorRekening != null) 'nomor_rekening': nomorRekening,
      if (namaPemilikRekening != null)
        'nama_pemilik_rekening': namaPemilikRekening,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? namaLengkap,
      Value<String>? tanggalLahir,
      Value<String>? jenisKelamin,
      Value<String>? noHp,
      Value<String?>? pendidikan,
      Value<String?>? statusPernikahan,
      Value<String?>? nik,
      Value<String?>? alamat,
      Value<String?>? provinsi,
      Value<String?>? kota,
      Value<String?>? kecamatan,
      Value<String?>? kelurahan,
      Value<int?>? kodePos,
      Value<String?>? namaUsaha,
      Value<String?>? alamatUsaha,
      Value<String?>? jabatan,
      Value<String?>? lamaBekerja,
      Value<String?>? sumberPendapatan,
      Value<String?>? pendapatanKotorPertahun,
      Value<String?>? namaBank,
      Value<String?>? cabangBank,
      Value<String?>? nomorRekening,
      Value<String?>? namaPemilikRekening}) {
    return UsersCompanion(
      id: id ?? this.id,
      namaLengkap: namaLengkap ?? this.namaLengkap,
      tanggalLahir: tanggalLahir ?? this.tanggalLahir,
      jenisKelamin: jenisKelamin ?? this.jenisKelamin,
      noHp: noHp ?? this.noHp,
      pendidikan: pendidikan ?? this.pendidikan,
      statusPernikahan: statusPernikahan ?? this.statusPernikahan,
      nik: nik ?? this.nik,
      alamat: alamat ?? this.alamat,
      provinsi: provinsi ?? this.provinsi,
      kota: kota ?? this.kota,
      kecamatan: kecamatan ?? this.kecamatan,
      kelurahan: kelurahan ?? this.kelurahan,
      kodePos: kodePos ?? this.kodePos,
      namaUsaha: namaUsaha ?? this.namaUsaha,
      alamatUsaha: alamatUsaha ?? this.alamatUsaha,
      jabatan: jabatan ?? this.jabatan,
      lamaBekerja: lamaBekerja ?? this.lamaBekerja,
      sumberPendapatan: sumberPendapatan ?? this.sumberPendapatan,
      pendapatanKotorPertahun:
          pendapatanKotorPertahun ?? this.pendapatanKotorPertahun,
      namaBank: namaBank ?? this.namaBank,
      cabangBank: cabangBank ?? this.cabangBank,
      nomorRekening: nomorRekening ?? this.nomorRekening,
      namaPemilikRekening: namaPemilikRekening ?? this.namaPemilikRekening,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (namaLengkap.present) {
      map['nama_lengkap'] = Variable<String>(namaLengkap.value);
    }
    if (tanggalLahir.present) {
      map['tanggal_lahir'] = Variable<String>(tanggalLahir.value);
    }
    if (jenisKelamin.present) {
      map['jenis_kelamin'] = Variable<String>(jenisKelamin.value);
    }
    if (noHp.present) {
      map['no_hp'] = Variable<String>(noHp.value);
    }
    if (pendidikan.present) {
      map['pendidikan'] = Variable<String>(pendidikan.value);
    }
    if (statusPernikahan.present) {
      map['status_pernikahan'] = Variable<String>(statusPernikahan.value);
    }
    if (nik.present) {
      map['nik'] = Variable<String>(nik.value);
    }
    if (alamat.present) {
      map['alamat'] = Variable<String>(alamat.value);
    }
    if (provinsi.present) {
      map['provinsi'] = Variable<String>(provinsi.value);
    }
    if (kota.present) {
      map['kota'] = Variable<String>(kota.value);
    }
    if (kecamatan.present) {
      map['kecamatan'] = Variable<String>(kecamatan.value);
    }
    if (kelurahan.present) {
      map['kelurahan'] = Variable<String>(kelurahan.value);
    }
    if (kodePos.present) {
      map['kode_pos'] = Variable<int>(kodePos.value);
    }
    if (namaUsaha.present) {
      map['nama_usaha'] = Variable<String>(namaUsaha.value);
    }
    if (alamatUsaha.present) {
      map['alamat_usaha'] = Variable<String>(alamatUsaha.value);
    }
    if (jabatan.present) {
      map['jabatan'] = Variable<String>(jabatan.value);
    }
    if (lamaBekerja.present) {
      map['lama_bekerja'] = Variable<String>(lamaBekerja.value);
    }
    if (sumberPendapatan.present) {
      map['sumber_pendapatan'] = Variable<String>(sumberPendapatan.value);
    }
    if (pendapatanKotorPertahun.present) {
      map['pendapatan_kotor_pertahun'] =
          Variable<String>(pendapatanKotorPertahun.value);
    }
    if (namaBank.present) {
      map['nama_bank'] = Variable<String>(namaBank.value);
    }
    if (cabangBank.present) {
      map['cabang_bank'] = Variable<String>(cabangBank.value);
    }
    if (nomorRekening.present) {
      map['nomor_rekening'] = Variable<String>(nomorRekening.value);
    }
    if (namaPemilikRekening.present) {
      map['nama_pemilik_rekening'] =
          Variable<String>(namaPemilikRekening.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('namaLengkap: $namaLengkap, ')
          ..write('tanggalLahir: $tanggalLahir, ')
          ..write('jenisKelamin: $jenisKelamin, ')
          ..write('noHp: $noHp, ')
          ..write('pendidikan: $pendidikan, ')
          ..write('statusPernikahan: $statusPernikahan, ')
          ..write('nik: $nik, ')
          ..write('alamat: $alamat, ')
          ..write('provinsi: $provinsi, ')
          ..write('kota: $kota, ')
          ..write('kecamatan: $kecamatan, ')
          ..write('kelurahan: $kelurahan, ')
          ..write('kodePos: $kodePos, ')
          ..write('namaUsaha: $namaUsaha, ')
          ..write('alamatUsaha: $alamatUsaha, ')
          ..write('jabatan: $jabatan, ')
          ..write('lamaBekerja: $lamaBekerja, ')
          ..write('sumberPendapatan: $sumberPendapatan, ')
          ..write('pendapatanKotorPertahun: $pendapatanKotorPertahun, ')
          ..write('namaBank: $namaBank, ')
          ..write('cabangBank: $cabangBank, ')
          ..write('nomorRekening: $nomorRekening, ')
          ..write('namaPemilikRekening: $namaPemilikRekening')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}

typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  required String namaLengkap,
  required String tanggalLahir,
  required String jenisKelamin,
  required String noHp,
  Value<String?> pendidikan,
  Value<String?> statusPernikahan,
  Value<String?> nik,
  Value<String?> alamat,
  Value<String?> provinsi,
  Value<String?> kota,
  Value<String?> kecamatan,
  Value<String?> kelurahan,
  Value<int?> kodePos,
  Value<String?> namaUsaha,
  Value<String?> alamatUsaha,
  Value<String?> jabatan,
  Value<String?> lamaBekerja,
  Value<String?> sumberPendapatan,
  Value<String?> pendapatanKotorPertahun,
  Value<String?> namaBank,
  Value<String?> cabangBank,
  Value<String?> nomorRekening,
  Value<String?> namaPemilikRekening,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  Value<String> namaLengkap,
  Value<String> tanggalLahir,
  Value<String> jenisKelamin,
  Value<String> noHp,
  Value<String?> pendidikan,
  Value<String?> statusPernikahan,
  Value<String?> nik,
  Value<String?> alamat,
  Value<String?> provinsi,
  Value<String?> kota,
  Value<String?> kecamatan,
  Value<String?> kelurahan,
  Value<int?> kodePos,
  Value<String?> namaUsaha,
  Value<String?> alamatUsaha,
  Value<String?> jabatan,
  Value<String?> lamaBekerja,
  Value<String?> sumberPendapatan,
  Value<String?> pendapatanKotorPertahun,
  Value<String?> namaBank,
  Value<String?> cabangBank,
  Value<String?> nomorRekening,
  Value<String?> namaPemilikRekening,
});

class $$UsersTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get namaLengkap => $state.composableBuilder(
      column: $state.table.namaLengkap,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tanggalLahir => $state.composableBuilder(
      column: $state.table.tanggalLahir,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get jenisKelamin => $state.composableBuilder(
      column: $state.table.jenisKelamin,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get noHp => $state.composableBuilder(
      column: $state.table.noHp,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pendidikan => $state.composableBuilder(
      column: $state.table.pendidikan,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get statusPernikahan => $state.composableBuilder(
      column: $state.table.statusPernikahan,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nik => $state.composableBuilder(
      column: $state.table.nik,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get alamat => $state.composableBuilder(
      column: $state.table.alamat,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get provinsi => $state.composableBuilder(
      column: $state.table.provinsi,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get kota => $state.composableBuilder(
      column: $state.table.kota,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get kecamatan => $state.composableBuilder(
      column: $state.table.kecamatan,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get kelurahan => $state.composableBuilder(
      column: $state.table.kelurahan,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get kodePos => $state.composableBuilder(
      column: $state.table.kodePos,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get namaUsaha => $state.composableBuilder(
      column: $state.table.namaUsaha,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get alamatUsaha => $state.composableBuilder(
      column: $state.table.alamatUsaha,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get jabatan => $state.composableBuilder(
      column: $state.table.jabatan,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lamaBekerja => $state.composableBuilder(
      column: $state.table.lamaBekerja,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sumberPendapatan => $state.composableBuilder(
      column: $state.table.sumberPendapatan,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pendapatanKotorPertahun => $state.composableBuilder(
      column: $state.table.pendapatanKotorPertahun,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get namaBank => $state.composableBuilder(
      column: $state.table.namaBank,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cabangBank => $state.composableBuilder(
      column: $state.table.cabangBank,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nomorRekening => $state.composableBuilder(
      column: $state.table.nomorRekening,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get namaPemilikRekening => $state.composableBuilder(
      column: $state.table.namaPemilikRekening,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UsersTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get namaLengkap => $state.composableBuilder(
      column: $state.table.namaLengkap,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tanggalLahir => $state.composableBuilder(
      column: $state.table.tanggalLahir,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get jenisKelamin => $state.composableBuilder(
      column: $state.table.jenisKelamin,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get noHp => $state.composableBuilder(
      column: $state.table.noHp,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pendidikan => $state.composableBuilder(
      column: $state.table.pendidikan,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get statusPernikahan => $state.composableBuilder(
      column: $state.table.statusPernikahan,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nik => $state.composableBuilder(
      column: $state.table.nik,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get alamat => $state.composableBuilder(
      column: $state.table.alamat,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get provinsi => $state.composableBuilder(
      column: $state.table.provinsi,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get kota => $state.composableBuilder(
      column: $state.table.kota,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get kecamatan => $state.composableBuilder(
      column: $state.table.kecamatan,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get kelurahan => $state.composableBuilder(
      column: $state.table.kelurahan,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get kodePos => $state.composableBuilder(
      column: $state.table.kodePos,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get namaUsaha => $state.composableBuilder(
      column: $state.table.namaUsaha,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get alamatUsaha => $state.composableBuilder(
      column: $state.table.alamatUsaha,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get jabatan => $state.composableBuilder(
      column: $state.table.jabatan,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lamaBekerja => $state.composableBuilder(
      column: $state.table.lamaBekerja,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sumberPendapatan => $state.composableBuilder(
      column: $state.table.sumberPendapatan,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pendapatanKotorPertahun =>
      $state.composableBuilder(
          column: $state.table.pendapatanKotorPertahun,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get namaBank => $state.composableBuilder(
      column: $state.table.namaBank,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cabangBank => $state.composableBuilder(
      column: $state.table.cabangBank,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nomorRekening => $state.composableBuilder(
      column: $state.table.nomorRekening,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get namaPemilikRekening => $state.composableBuilder(
      column: $state.table.namaPemilikRekening,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UsersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UsersTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UsersTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> namaLengkap = const Value.absent(),
            Value<String> tanggalLahir = const Value.absent(),
            Value<String> jenisKelamin = const Value.absent(),
            Value<String> noHp = const Value.absent(),
            Value<String?> pendidikan = const Value.absent(),
            Value<String?> statusPernikahan = const Value.absent(),
            Value<String?> nik = const Value.absent(),
            Value<String?> alamat = const Value.absent(),
            Value<String?> provinsi = const Value.absent(),
            Value<String?> kota = const Value.absent(),
            Value<String?> kecamatan = const Value.absent(),
            Value<String?> kelurahan = const Value.absent(),
            Value<int?> kodePos = const Value.absent(),
            Value<String?> namaUsaha = const Value.absent(),
            Value<String?> alamatUsaha = const Value.absent(),
            Value<String?> jabatan = const Value.absent(),
            Value<String?> lamaBekerja = const Value.absent(),
            Value<String?> sumberPendapatan = const Value.absent(),
            Value<String?> pendapatanKotorPertahun = const Value.absent(),
            Value<String?> namaBank = const Value.absent(),
            Value<String?> cabangBank = const Value.absent(),
            Value<String?> nomorRekening = const Value.absent(),
            Value<String?> namaPemilikRekening = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            namaLengkap: namaLengkap,
            tanggalLahir: tanggalLahir,
            jenisKelamin: jenisKelamin,
            noHp: noHp,
            pendidikan: pendidikan,
            statusPernikahan: statusPernikahan,
            nik: nik,
            alamat: alamat,
            provinsi: provinsi,
            kota: kota,
            kecamatan: kecamatan,
            kelurahan: kelurahan,
            kodePos: kodePos,
            namaUsaha: namaUsaha,
            alamatUsaha: alamatUsaha,
            jabatan: jabatan,
            lamaBekerja: lamaBekerja,
            sumberPendapatan: sumberPendapatan,
            pendapatanKotorPertahun: pendapatanKotorPertahun,
            namaBank: namaBank,
            cabangBank: cabangBank,
            nomorRekening: nomorRekening,
            namaPemilikRekening: namaPemilikRekening,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String namaLengkap,
            required String tanggalLahir,
            required String jenisKelamin,
            required String noHp,
            Value<String?> pendidikan = const Value.absent(),
            Value<String?> statusPernikahan = const Value.absent(),
            Value<String?> nik = const Value.absent(),
            Value<String?> alamat = const Value.absent(),
            Value<String?> provinsi = const Value.absent(),
            Value<String?> kota = const Value.absent(),
            Value<String?> kecamatan = const Value.absent(),
            Value<String?> kelurahan = const Value.absent(),
            Value<int?> kodePos = const Value.absent(),
            Value<String?> namaUsaha = const Value.absent(),
            Value<String?> alamatUsaha = const Value.absent(),
            Value<String?> jabatan = const Value.absent(),
            Value<String?> lamaBekerja = const Value.absent(),
            Value<String?> sumberPendapatan = const Value.absent(),
            Value<String?> pendapatanKotorPertahun = const Value.absent(),
            Value<String?> namaBank = const Value.absent(),
            Value<String?> cabangBank = const Value.absent(),
            Value<String?> nomorRekening = const Value.absent(),
            Value<String?> namaPemilikRekening = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            namaLengkap: namaLengkap,
            tanggalLahir: tanggalLahir,
            jenisKelamin: jenisKelamin,
            noHp: noHp,
            pendidikan: pendidikan,
            statusPernikahan: statusPernikahan,
            nik: nik,
            alamat: alamat,
            provinsi: provinsi,
            kota: kota,
            kecamatan: kecamatan,
            kelurahan: kelurahan,
            kodePos: kodePos,
            namaUsaha: namaUsaha,
            alamatUsaha: alamatUsaha,
            jabatan: jabatan,
            lamaBekerja: lamaBekerja,
            sumberPendapatan: sumberPendapatan,
            pendapatanKotorPertahun: pendapatanKotorPertahun,
            namaBank: namaBank,
            cabangBank: cabangBank,
            nomorRekening: nomorRekening,
            namaPemilikRekening: namaPemilikRekening,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
}
