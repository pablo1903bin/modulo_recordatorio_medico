import 'http.dart';

class HttpSignIn extends Http {
  final String _hostApi;

  HttpSignIn({
    required super.client,
    required String hostApi,
  }) : _hostApi = hostApi;

  @override
  Uri getUrl(String uri) {
    return Uri.parse("$_hostApi$uri");
  }
}
