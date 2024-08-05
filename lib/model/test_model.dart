class TestModel {
  final int id;
  final  String name;
  final int lineNo;
  final String productName;
  final int unitNo;
  final int price;
  final int quantity;
  final int total;
  final String date;

  TestModel(this.id, this.name, 
      {required this.lineNo,
      required this.productName,
      required this.unitNo,
      required this.price,
      required this.quantity,
      required this.total,
      required this.date});
}
