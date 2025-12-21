import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_event.freezed.dart';  // ✅ هذا السطر كان ناقص!

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login() = _Login;
}