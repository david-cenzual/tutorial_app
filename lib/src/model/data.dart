
class Information {

  DateTime date = DateTime.now();
  int id;
  double weight;
  double sugar;
  double temperature;
  String bloodType;
  String comment;

  Information({
    this.id,
    this.weight = 70.0,
    this.sugar = 100.0,
    this.temperature = 37.5,
    this.bloodType = 'O−',
    this.comment = '',
  });

  factory Information.fromJson(Map<String, dynamic> json) => new Information(
        id          : json["id"],
        weight      : json["weight"],
        sugar       : json["sugar"],
        temperature : json["temperature"],
        bloodType   : json["bloodType"],
        comment     : json["comment"],
  );

  Map<String, dynamic> toJson() => {
      // "id"         : id,
      "weight"      : weight,
      "sugar"       : sugar,
      "temperature" : temperature,
      "bloodType"   : bloodType,
      "comment"     : comment,
  };
}