import 'package:flutter/material.dart';


class Task_1 extends StatelessWidget {
  const Task_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:SizedBox(
          height: 25,
          width: 25,
          child: Image.asset("lib/assets/Task_1/Bell_icon.png"),
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
                      child: Image.asset("lib/assets/Task_1/arrow_icons.png",fit: BoxFit.cover,),
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
              child: Image.asset("lib/assets/Task_1/personal.png"),
            )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFF55540)),
                      borderRadius: BorderRadius.circular(25)
                    ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "تبحث عن وجبة معينه ؟",
                        style: TextStyle(
                          color: Colors.red
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Image.asset("lib/assets/Task_1/search_icon.png"),
                    ],
                  ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child:catigory(box_color:const Color(0xFFB0E4DD),image_src: "lib/assets/Task_1/meat.png",information: "لحوم")
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child:catigory(box_color:const Color(0xFF00A991),image_src: "lib/assets/Task_1/sea_food.png",information: "ماكؤلات بحرية")
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child:catigory(box_color:const Color(0xFFFCCAC4),image_src: "lib/assets/Task_1/chiken.png",information: "مشويات")
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child:catigory(box_color:const Color(0xFFF55540),image_src: "lib/assets/Task_1/burger.png",information: "وجبات سريعة")
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: Image.asset("lib/assets/Task_1/big photo.png",fit: BoxFit.cover,) 
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "الافضل خلال اليوم",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                  Text(
                    "🔥 ",
                    style: TextStyle(
                      fontSize: 25,

                      color: Colors.red
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  sales(image_src: "lib/assets/Task_1/sea_food.png",name: "بج بيرجر سبايسي"),
                  const Spacer(),
                  sales(image_src: "lib/assets/Task_1/burger.png",name: "بج بيرجر سبايسي")
                ],
              )
            ],
          ),
        ),
        
        )
      );
  }
}

Widget catigory({required String image_src,required Color box_color,required String information}){
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: box_color,
          borderRadius: BorderRadius.circular(20),
        ),
        child:Image.asset(image_src) ,
      ),
      const SizedBox(height: 10,),
      Text(information,
        style:const  TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      )
    ],
  );
}

Widget sales({required String image_src,required String name}){
  return SizedBox(
    width: 150,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: const Color(0xFFFEEEEC),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset(image_src,fit: BoxFit.fill,),
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "وجبات سريعة",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w100,
                
              ),
            ),
            const SizedBox(width: 4,),
            Image.asset("lib/assets/Task_1/burger_icon.png")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFFF55540),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10))
              ),
              child: Image.asset("lib/assets/Task_1/shpping_icon.png",),
            ),
            const Spacer(),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "(+100) 5.0"
                    ),
                    SizedBox(width: 4,),
                    Icon(Icons.star,color: Color(0xFFFFB700),),
                  ],
                ),
                Text("150 ج.م")
              ],
            )
          ],
        ),
      ],
    ),
  );
}

