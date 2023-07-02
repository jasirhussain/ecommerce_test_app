class CategoriesModel {
  String id;
  late String name;
  late String image;

  CategoriesModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        image = json['image'];
}
