abstract class BaseApiServices {
  Future<dynamic> getApi(String url);

  Future<dynamic> postApi(String url, var data);

  Future<dynamic> putApi(String url, var data);

  Future<dynamic> deleteApi(String url);
}
