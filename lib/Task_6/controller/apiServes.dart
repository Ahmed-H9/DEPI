import 'package:dio/dio.dart';
import 'package:for_tasks/Task_6/controller/model.dart';

class apiServes{
  final Dio dio=Dio();
  Future<Response> getResponse()async{
    final response=await dio.get("https://dummyjson.com/products");
    return response;
  }

  Future<List<product>>getProducts()async{
    final response=await getResponse();
    List products=response.data["products"];
    return products.map((item)=>product.fromJson(item)).toList();
  }
}