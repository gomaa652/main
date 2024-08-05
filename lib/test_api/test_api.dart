import 'unit.dart';

class TestApi {
  int? lineNo;
  String? productName;
  Unit? unit;
  int? unitNo;
  int? price;
  int? quantity;
  int? total;
  DateTime? expiryDate;

  TestApi({
    this.lineNo,
    this.productName,
    this.unit,
    this.unitNo,
    this.price,
    this.quantity,
    this.total,
    this.expiryDate,
  });

  factory TestApi.fromJson(Map<String, dynamic> json) => TestApi(
        lineNo: json['lineNo'] as int?,
        productName: json['productName'] as String?,
        unit: json['unit'] == null
            ? null
            : Unit.fromJson(json['unit'] as Map<String, dynamic>),
        unitNo: json['unitNo'] as int?,
        price: json['price'] as int?,
        quantity: json['quantity'] as int?,
        total: json['total'] as int?,
        expiryDate: json['expiryDate'] == null
            ? null
            : DateTime.parse(json['expiryDate'] as String),
      );

  Map<String, dynamic> toJson() => {
        'lineNo': lineNo,
        'productName': productName,
        'unit': unit?.toJson(),
        'unitNo': unitNo,
        'price': price,
        'quantity': quantity,
        'total': total,
        'expiryDate': expiryDate?.toIso8601String(),
      };
}
