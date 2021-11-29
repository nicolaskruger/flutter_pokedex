class StatsDto {
  StatsDto({required this.name, required this.point});
  final int point;
  final String name;
  factory StatsDto.fromJson(dynamic json) {
    return StatsDto(
      name: json["stat"]["name"] as String,
      point: json["base_stat"] as int,
    );
  }
}
