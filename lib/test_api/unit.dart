class Unit {
  int? id;
  String? name;

  Unit({this.id, this.name});

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
