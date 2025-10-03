class MedicineModel {
  final int id;
  final String name;
  final String img;
  final String power;
  final String quantity;
  final String price;
  final String? discountedPrice;
  final String catagory;
  int cartQuantity;
  MedicineModel({
    required this.catagory,
    required this.id,
    required this.name,
    required this.img,
    required this.power,
    required this.quantity,
    required this.price,
    required this.discountedPrice,
    this.cartQuantity = 1,
  });
}
