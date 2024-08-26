import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test/database/db_init.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initial() = Initial;
  const factory ProfileEvent.loading() = Loading;
  const factory ProfileEvent.loaded(User data) = Loaded;
  const factory ProfileEvent.error(String message) = Error;
}
