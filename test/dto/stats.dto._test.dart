import 'dart:io';
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/dto/stats.dto.dart';
import 'package:path/path.dart';

void main() {
  final currDir = dirname(Platform.script.path);
  test("test fromJson StatDto", () async {
    final fileJson = File('test/dto/stat.json');
    final stat = StatsDto.fromJson(json.decode(await fileJson.readAsString()));
    expect(stat.name, "hp");
    expect(stat.point, 45);
  });
}
