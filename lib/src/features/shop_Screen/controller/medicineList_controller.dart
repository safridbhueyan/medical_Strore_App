import 'package:get/get.dart';
import 'package:medical_store_app/core/constant/images.dart';
import 'package:medical_store_app/src/features/shop_Screen/model/medicine_model.dart';

class MedicinelistController extends GetxController {
  RxList<MedicineModel> addList = <MedicineModel>[].obs;

  RxList<MedicineModel> medicine = <MedicineModel>[
    MedicineModel(
      name: "Paracetamol",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.pracetamol1,
      id: 1,
      catagory: 'Health Kit',
    ),
    MedicineModel(
      name: "Paracetamol",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.pracetamol2,
      id: 2,
      catagory: 'Health Kit',
    ),
    MedicineModel(
      name: "Paracetamol",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.pracetamol3,
      id: 3,
      catagory: 'Health Kit',
    ),
    MedicineModel(
      name: "Diabetics Set",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.diabeticKit,
      id: 4,
      catagory: 'Diabetics Kit',
    ),
    MedicineModel(
      name: "Diabetics Set",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.diabeticKit,
      id: 4,
      catagory: 'Diabetics Kit',
    ),
    MedicineModel(
      name: "Diabetics Set",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.diabeticKit,
      id: 4,
      catagory: 'Diabetics Kit',
    ),
    MedicineModel(
      name: "Stethoscope",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.stetoscope,
      id: 5,
      catagory: 'Health Kit',
    ),
    MedicineModel(
      name: "XYZ",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.injection,
      id: 6,
      catagory: 'Health Kit',
    ),
    MedicineModel(
      name: "Paracetamol",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.napa,
      id: 7,
      catagory: 'Health Kit',
    ),
    MedicineModel(
      name: "Travel first Aid Box",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.medkit,
      id: 12,
      catagory: 'Health Kit',
    ),
    MedicineModel(
      name: "Chicco Baby Set",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.babyoil,
      id: 9,
      catagory: 'Baby Care',
    ),
    MedicineModel(
      name: "Baby Care",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.babyToy,
      id: 10,
      catagory: 'Baby Care',
    ),
    MedicineModel(
      name: "Baby Care",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.babyToy2,
      id: 11,
      catagory: 'Baby Care',
    ),
    MedicineModel(
      name: "Baby Care",
      power: "500 mg",
      quantity: '10 Tablets',
      price: "৳ 7",
      discountedPrice: "৳ 7",
      img: AppImages.babyoil,
      id: 13,
      catagory: 'Baby Care',
    ),
    MedicineModel(
      name: "Travel first Aid Box",
      power: "156",
      quantity: '1 Box',
      price: "৳ 700",
      discountedPrice: "৳ 700",
      img: AppImages.medkit,
      id: 14,
      catagory: 'Similar Products',
    ),
    MedicineModel(
      name: "XYZ",
      power: "1 Box",
      quantity: '100 pieces',
      price: "৳ 500",
      discountedPrice: "৳ 500",
      img: AppImages.mask,
      id: 15,
      catagory: 'Similar Products',
    ),
    MedicineModel(
      name: "Hot Water Pot",
      power: "RFL",
      quantity: '1 pcs',
      price: "৳ 200",
      discountedPrice: "৳ 200",
      img: AppImages.redpot,
      id: 16,
      catagory: 'Similar Products',
    ),
  ].obs;

  List<MedicineModel> getByCategory(String category) {
    return medicine.where((m) => m.catagory == category).toList();
  }

  MedicineModel? getByID(int id) {
    return medicine.firstWhereOrNull((m) => m.id == id);
  }

  void addToCart(int id) {
    final item = getByID(id);

    if (item != null) {
      if (!addList.any((m) => m.id == item.id)) {
        addList.add(item);
      }
    }
  }

  void removeFromCart(int id) {
    addList.removeWhere((m) => m.id == id);
  }

  bool isInCart(int id) {
    return addList.any((m) => m.id == id);
  }

  void updateTheItemCount(int id, int newCount) {
    final index = addList.indexWhere((m) => m.id == id);
    if (index != -1) {
      if (newCount <= 0) {
        addList.removeAt(index);
      } else {
        addList[index].cartQuantity = newCount;
        addList.refresh();
      }
    }
  }
}
