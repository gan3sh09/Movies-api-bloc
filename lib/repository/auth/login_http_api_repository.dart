import 'package:freezed_practise/config/app_urls.dart';
import 'package:freezed_practise/data/network/network_services_api.dart';
import 'package:freezed_practise/models/user_model/user_model.dart';
import 'package:freezed_practise/repository/auth/login_repository.dart';

class LoginHttpApiRepository implements LoginRepository {
  final _api = NetworkServicesApi();
  @override
  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrls.loginApi, data);
    return UserModel.fromJson(response);
  }
}
