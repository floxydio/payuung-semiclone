import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_test/bloc/profile/profile_event.dart';
import 'package:interview_test/constant/storage_constant.dart';
import 'package:interview_test/main.dart';

class ProfileCubit extends Cubit<ProfileEvent> {
  ProfileCubit() : super(const ProfileEvent.initial());

  void getProfile() async {
    var prefs = await SharedPrefs.getUserId();
    emit(const ProfileEvent.loading());
    try {
      database?.getUserById(int.parse(prefs)).then((value) {
        emit(ProfileEvent.loaded(value));
      });
    } catch (e) {
      emit(ProfileEvent.error(e.toString()));
    }
  }

  void refreshProfile() {
    emit(const ProfileEvent.initial());
  }
}
