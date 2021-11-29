import 'dart:io';
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/dto/stats.dto.dart';

void main(List<String> args) {
  test("test fromJson StatDto", () async {
    final fileJson = File("./stat.json");
    final stat = StatsDto.fromJson(json.decode(await fileJson.readAsString()));
    expect(stat.name, "hp");
    expect(stat.point, 45);
  });
}
