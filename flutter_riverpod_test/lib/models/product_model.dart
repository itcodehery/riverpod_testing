class ProductModel {
  final String id;
  final String name;
  final int price;
  final String? imagePath;

  ProductModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.imagePath});
}
