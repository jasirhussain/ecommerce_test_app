class ProductModel {
  int id;
  String title;
  int price;
  String description;
  String futuredImage;
  String createdAt;
  CategoriesModel categoryList1;

  ProductModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        price = json['price'],
        description = json['description'],
        futuredImage = json['image'] ?? "",
        createdAt = json['createdAt'] ?? "",
        categoryList1 = CategoriesModel.fromJson(json['category']);
}

class CategoriesModel {
  String id;
  late String name;
  late String image;

  CategoriesModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        image = json['image'];
}
