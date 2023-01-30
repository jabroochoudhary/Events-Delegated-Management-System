import 'dart:convert';
import 'dart:io';
import '../app_exceptions.dart';
import '../network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No internet connection.");
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, final data) async {
    dynamic responseJson;
    print(data);
    try {
      // print("hit start");
      http.Response response = await http
          .post(
        Uri.parse(url),
        body: data,
      )
          .timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw FetchDataException("No internet connection.");
        },
      );
      print(response.statusCode.toString());
      print(response.body.toString());

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No internet connection.");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    // print(response.statusCode);
    switch (response.statusCode) {
      case 200:
        dynamic responsejason = jsonDecode(response.body);
        return responsejason;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        // print(response.body.toString());
        throw UnothorizedException(response.body.toString());
      default:
        FetchDataException(
            "Error accured while communicating with server. Status code: ${response.statusCode}");
    }
  }
}
