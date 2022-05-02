import 'package:dio/dio.dart';

const accessToken =
    'pk.eyJ1IjoiZGFuaS1lc3F1aXZlbGM5NyIsImEiOiJjbDJoc241dHEwZ3lwM2RteGdub3RlZThjIn0.dnb-OoqxH-QWSDo8WDcRHw';

class TrafficInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': accessToken
    });
    super.onRequest(options, handler);
  }
}
