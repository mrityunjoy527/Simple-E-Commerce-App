class ProductDataModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final List<String> images;
  bool isWishlisted;
  bool isCarted;
  ProductDataModel({required this.id, required this.name, required this.description, required this.price, required this.images, required this.isCarted, required this.isWishlisted});

}