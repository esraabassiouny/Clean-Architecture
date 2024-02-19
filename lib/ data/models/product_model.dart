class Product {
  var id;
  String? title;
  String? description;
  var price;
  double? discountPercentage;
  var rating;
  var stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;
  bool isFavorite = false;

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }

}