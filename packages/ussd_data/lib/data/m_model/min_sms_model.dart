class MSMSModel {
  final String name;
  final String count;
  final String code;
  final String cost;
  final String? validity;

  MSMSModel({
    required this.name,
    required this.count,
    required this.code,
    required this.cost,
    this.validity,
  });
}

class MMinModel {
  final String name;
  final String code;
  final String cost;

  MMinModel({
    required this.name,
    required this.code,
    required this.cost,
  });
}
