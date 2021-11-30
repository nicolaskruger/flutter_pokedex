import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

Future<dynamic> fileToJson(String path) async {
  return json.decode(await File(path).readAsString());
}

Future<Response> fileToResponse(String path) async {
  return Response(
    requestOptions: RequestOptions(path: ""),
    data: await fileToJson(path),
  );
}
