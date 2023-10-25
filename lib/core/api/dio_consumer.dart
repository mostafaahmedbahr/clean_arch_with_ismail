// import 'dart:convert';
// import 'dart:io';
//  import 'package:clean_arch_with_ismail/core/api/status_code.dart';
// import 'package:dio/dio.dart';
// import 'package:dio/io.dart';
// import 'package:flutter/foundation.dart';
//
// import 'api_service.dart';
// import 'end_point.dart';
//
//
// class DioConsumer implements ApiConsumer {
//   final Dio client;
//
//   DioConsumer({required this.client}) {
//     (client.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     } as CreateHttpClient?;
//
//     client.options
//       ..baseUrl = EndPoint.baseUrl
//       ..responseType = ResponseType.plain
//       ..followRedirects = false
//       ..validateStatus = (status) {
//         return status! < StatusCode.internalServerError;
//       };
//     client.interceptors.add(di.sl<AppIntercepters>());
//     if (kDebugMode) {
//       client.interceptors.add(di.sl<LogInterceptor>());
//     }
//   }
//
//   @override
//   Future get(String path, {Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response = await client.get(path, queryParameters: queryParameters);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   @override
//   Future post(String path,
//       {Map<String, dynamic>? body,
//         bool formDataIsEnabled = false,
//         Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response = await client.post(path,
//           queryParameters: queryParameters,
//           data: formDataIsEnabled ? FormData.fromMap(body!) : body);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   @override
//   Future put(String path,
//       {Map<String, dynamic>? body,
//         Map<String, dynamic>? queryParameters}) async {
//     try {
//       final response =
//       await client.put(path, queryParameters: queryParameters, data: body);
//       return _handleResponseAsJson(response);
//     } on DioError catch (error) {
//       _handleDioError(error);
//     }
//   }
//
//   dynamic _handleResponseAsJson(Response<dynamic> response) {
//     final responseJson = jsonDecode(response.data.toString());
//     return responseJson;
//   }
//
//   dynamic _handleDioError(DioError error) {
//     switch (error.type) {
//       case DioExceptionType.connectionTimeout:
//       case DioExceptionType.sendTimeout:
//       case DioExceptionType.receiveTimeout:
//         throw const FetchDataException();
//       case DioExceptionType.response:
//         switch (error.response?.statusCode) {
//           case StatusCode.badRequest:
//             throw const BadRequestException();
//           case StatusCode.unauthorized:
//           case StatusCode.forbidden:
//             throw const UnauthorizedException();
//           case StatusCode.notFound:
//             throw const NotFoundException();
//           case StatusCode.confilct:
//             throw const ConflictException();
//
//           case StatusCode.internalServerError:
//             throw const InternalServerErrorException();
//         }
//         break;
//       case DioExceptionType.cancel:
//         break;
//       case DioExceptionType.other:
//         throw const NoInternetConnectionException();
//     }
//   }
// }