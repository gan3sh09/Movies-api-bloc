import 'package:freezed_practise/models/user_model/user_model.dart';

abstract class LoginRepository {
  Future<UserModel> loginApi(dynamic data);
}
