import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/dto/item.dto.dart';

import '../helper/file_to_json.dart';
import 'pokemon.dto._test.dart';

serialyseItem(ItemDto itemDto) {
  return [itemDto.name, itemDto.price, itemDto.url];
}

testItem(ItemDto actual, ItemDto expected) {
  expectList(serialyseItem(actual), serialyseItem(expected));
}

createItem() {
  return ItemDto(
    name: "master-ball",
    price: 0,
    url:
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/master-ball.png",
  );
}

void main() {
  test("deve transformar o json em um item", () async {
    dynamic json = await fileToJson("test/dto/item.json");

    ItemDto pokeBall = ItemDto.fromJson(json);

    testItem(pokeBall, createItem());
  });
}
