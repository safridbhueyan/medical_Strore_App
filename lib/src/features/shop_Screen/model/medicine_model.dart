class MedicineModel {
  final String name;
  final String img;
  final String power;
  final String quantity;
  final String price;
  final String? discountedPrice;

  MedicineModel({
    required this.name,
    required this.img,
    required this.power,
    required this.quantity,
    required this.price,
    required this.discountedPrice,
  });
}
