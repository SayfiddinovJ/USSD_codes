class UMBModel {
  final String name;
  final String mb;
  final String payment;
  final String code;
  final String validityPeriod;

  UMBModel({
    required this.name,
    required this.mb,
    required this.payment,
    required this.code,
    required this.validityPeriod,
  });
}

class UMBNightModel {
  final String name;
  final String mb;
  final String payment;
  final String code;
  final String validityPeriod;
  final String periodOfUse;

  UMBNightModel({
    required this.name,
    required this.mb,
    required this.payment,
    required this.code,
    required this.validityPeriod,
    required this.periodOfUse,
  });
}

class UMBTrafikPlusModel {
  final List<String> options;
  final String mb;
  final String payment;
  final String code;
  final String validityPeriod;

  UMBTrafikPlusModel({
    required this.options,
    required this.mb,
    required this.payment,
    required this.code,
    required this.validityPeriod,
  });
}
