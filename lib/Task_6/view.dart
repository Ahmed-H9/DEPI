import 'package:flutter/material.dart';
import 'package:for_tasks/Task_6/controller/apiServes.dart';
import 'package:for_tasks/Task_6/controller/model.dart';

class Task_6 extends StatelessWidget {
  const Task_6({super.key});

  @override
  Widget build(BuildContext context) {
    apiServes api=apiServes();
    return Scaffold(
      appBar: AppBar(
        leading:SizedBox(
          height: 25,
          width: 25,
          child: Image.asset("lib/assets/Task_1p1/Bell_icon.png"),
        ),
        title: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "الموقع الحالي",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(width: 5,),
                    SizedBox(
                      width: 15,
                      height: 15,
                      child: Image.asset("lib/assets/Task_1p1/arrow_icons.png",fit: BoxFit.cover,),
                    ),
                    
                  ],
                ),
                const Text(
                  "19 الشيخ احمد الصاوي, مدينة نصر",
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ],
            ),
          ),
        actions: [
          Container(
            decoration: BoxDecoration(
              shape:BoxShape.circle,
              border: Border.all()
            ),
            child: CircleAvatar(
              
              maxRadius: 50,
              backgroundColor: Colors.white,
              child: Image.asset("lib/assets/Task_1p1/personal.png"),
            )
          ),
        ],
      ),
      body: FutureBuilder(
        future:api.getProducts() ,
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return const  Center(
              child: CircularProgressIndicator(),
            );
          }

          var products=snapshot.data!;

          return ListView.separated(
            itemBuilder: (context,index)=>card(product: products[index]), 
            separatorBuilder: (context,index)=>const SizedBox(height: 10,), 
            itemCount: products.length,
          );
        },
      ),
    );
  }
  // ignore: avoid_types_as_parameter_names
  Widget card({required product product}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                product.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                product.description,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "${product.price} ج.م",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Image.network(product.imageSrc,width: 100,)
      ],
    );
  }
}