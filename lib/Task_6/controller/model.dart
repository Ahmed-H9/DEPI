class product{
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageSrc;

  product({required this.id, required this.title, required this.description, required this.price, required this.imageSrc});

  factory product.fromJson(Map<String,dynamic> jsonData){
    return product(
      id: jsonData["id"],
      title:jsonData["title"] ,
      description: jsonData["description"],
      price: jsonData["price"], 
      imageSrc: jsonData["thumbnail"]
    );
  }

}