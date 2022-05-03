import 'package:dio/dio.dart';

class PlacesInterceptor extends Interceptor {
  final accessToken =
      'pk.eyJ1IjoiZGFuaS1lc3F1aXZlbGM5NyIsImEiOiJjbDJoc241dHEwZ3lwM2RteGdub3RlZThjIn0.dnb-OoqxH-QWSDo8WDcRHw';
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'language': 'es',
      'access_token': accessToken,
    });
    super.onRequest(options, handler);
  }
}
