import 'package:freezed_practise/models/user_model/user_model.dart';
import 'package:freezed_practise/repository/auth/login_repository.dart';

class LoginMockApiRepository implements LoginRepository {
  @override
  Future<UserModel> loginApi(dynamic data) async {
    await Future.delayed(const Duration(seconds: 2));
    final response = {
      "token": "hy5ji6n776ffftt",
    };
    return UserModel.fromJson(response);
  }
}
