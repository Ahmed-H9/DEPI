class Foods{
  
  int? id;
  String? src;
  String? mealName;
  String? resturantName;
  double? price;
  double? review;
  int? isFav;
  Foods({this.id,this.src,this.mealName,this.resturantName,this.price,this.review,this.isFav});

  factory Foods.fromJson(Map<String,dynamic>json){
    return Foods(
      id: json["id"],
      src: json["src"],
      mealName: json["mealName"],
      resturantName: json["resturantName"],
      price: (json["price"] as num).toDouble(),
      review: (json["review"] as num).toDouble(),
      isFav: json["isFav"] ?? 0
    );
  }
  
  Map<String,dynamic>toJson(){
    return{
      "id":id,
      "src":src,
      "mealName":mealName,
      "resturantName":resturantName,
      "price":price,
      "review":review,
      "isFav":isFav
   };
  }

}