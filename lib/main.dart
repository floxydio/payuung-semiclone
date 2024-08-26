import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_test/bloc/profile/profile_state.dart';
import 'package:interview_test/database/db_init.dart';
import 'package:interview_test/presentation/home/home.dart';

AppDatabase? database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = AppDatabase();

  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ProfileCubit())],
      child: MaterialApp(
          theme: ThemeData(useMaterial3: false),
          debugShowCheckedModeBanner: false,
          home: const HomePage())));
}
