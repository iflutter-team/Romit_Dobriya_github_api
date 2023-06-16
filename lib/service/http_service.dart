import 'package:http/http.dart' as http;

class HttpService {
  static Future<http.Response?> getApi({required String url}) async {
    try {
      print('*** URL *** ======> $url');

      return await http.get(Uri.parse(url));
    } catch (e) {
      print(e);

      return null;
    }
  }

  static Future<http.Response?> postApi(
      {required String url, Map<String, dynamic>? body}) async {
    try {
      print('url==========>$url');
      print('body==========>$body');

      return await http.post(Uri.parse(url), body: body);
    } catch (e) {
      print(e);

      return null;
    }
  }
}
