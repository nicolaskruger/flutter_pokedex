import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/dto/move.dto.dart';

import '../helper/file_to_json.dart';
import 'pokemon.dto._test.dart';

serialyzeMove(MoveDto moveDto) {
  return [
    moveDto.accuracy,
    moveDto.basePower,
    moveDto.name,
    moveDto.pp,
    moveDto.type,
  ];
}

testMove(MoveDto actual, MoveDto exp) {
  expectList(serialyzeMove(actual), serialyzeMove(exp));
}

createMove() {
  return MoveDto(
    accuracy: 100,
    basePower: 40,
    name: "pound",
    pp: 35,
    type: "normal",
  );
}

void main() {
  test("deve converte o json para movedto", () async {
    dynamic json = await fileToJson("test/dto/move.json");
    testMove(MoveDto.fromJson(json), createMove());
  });
}
