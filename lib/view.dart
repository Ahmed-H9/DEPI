// import 'dart:developer';

import 'package:flutter/material.dart';


class Task_1 extends StatefulWidget {
  const Task_1({super.key});

  @override
  State<Task_1> createState() => _Task_1State();
}
class _Task_1State extends State<Task_1> with TickerProviderStateMixin  {
  int nav_index=4;
  List nav_is_activ=[
    0,0,0,0,1
  ];
  late AnimationController imageController;
  late Animation<Offset> animation;
  late AnimationController bellController;
  late Animation<Offset> animationBell;

  @override
  void initState() {
    super.initState();
    imageController=AnimationController(
      vsync: this,
      duration: const Duration(milliseconds:500 ),
    );
    animation=Tween<Offset>(begin: const Offset(0,0),end: const Offset(0,-20)).animate(CurvedAnimation(parent: imageController, curve: Curves.easeInOut));
    imageController.repeat(reverse: true);
    // ----------------
    bellController=AnimationController(
      vsync: this,
      duration: const Duration(milliseconds:200 ),
    );
    animationBell=Tween<Offset>(begin: const Offset(0,0),end: const Offset(-5,0)).animate(bellController);
    bellController.repeat(reverse: true);
  }

  @override
  void dispose() {
    imageController.dispose();
    bellController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

  List nav_icons=[
    Image.asset("lib/assets/Task_1p2/account_nav_icon.png",color:nav_is_activ[0]==0?const Color(0xff292D32): const Color(0xffF55540),),
    Image.asset("lib/assets/Task_1p2/bag_nav_icon.png",color:nav_is_activ[1]==0?const Color(0xff292D32): const Color(0xffF55540),),
    Image.asset("lib/assets/Task_1p2/shopping_nav_icon.png"),
    Image.asset("lib/assets/Task_2/heart_icon.png",color:nav_is_activ[3]==0?const Color(0xff292D32): const Color(0xffF55540),),
    Image.asset("lib/assets/Task_1p2/home_nav_icon.png",color:nav_is_activ[4]==0?const Color(0xff292D32): const Color(0xffF55540),),
  ];

    return Scaffold(
      appBar: AppBar(
        leading:SizedBox(
          height: 25,
          width: 25,
          child:AnimatedBuilder(
            animation: animationBell,
            builder: (context, child) => Transform.translate(
              offset: animationBell.value,
              child: Image.asset("lib/assets/Task_1p1/Bell_icon.png"),
            ),
          )
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
                      Image.asset("lib/assets/Task_1p1/search_icon.png"),
                    ],
                  ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child:catigory(box_color:const Color(0xFFB0E4DD),image_src: "lib/assets/Task_1p1/meat.png",information: "لحوم",animation: animation)
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child:catigory(box_color:const Color(0xFF00A991),image_src: "lib/assets/Task_1p1/sea_food.png",information: "ماكؤلات بحرية",animation: animation)
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child:catigory(box_color:const Color(0xFFFCCAC4),image_src: "lib/assets/Task_1p1/chiken.png",information: "مشويات",animation: animation)
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child:catigory(box_color:const Color(0xFFF55540),image_src: "lib/assets/Task_1p1/burger.png",information: "وجبات سريعة",animation: animation)
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: Image.asset("lib/assets/Task_1p1/big photo.png",fit: BoxFit.cover,) 
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
                  sales(image_src: "lib/assets/Task_1p1/sea_food.png",name: "بج بيرجر سبايسي"),
                  const Spacer(),
                  sales(image_src: "lib/assets/Task_1p1/burger.png",name: "بج بيرجر سبايسي")
                ],
              )
            ],
          ),
        ),
      ),      
      bottomNavigationBar: BottomNavigationBar(
        onTap:(index){
          setState(() {
            nav_is_activ[nav_index]=0;
            nav_index=index;
            if(nav_index!=2){
              nav_is_activ[nav_index]=1;
            }
            switch (nav_index){
              case 0:
                Navigator.pushNamed(context, "acc");
                break;
              case 1:
                Navigator.pushNamed(context, "follow_order");
                break;
              case 2:
                Navigator.pushNamed(context, "shopping_cart");
                break;
              case 3:
                Navigator.pushNamed(context, "fav");
                break;
              case 4:
                Navigator.pushNamed(context, "\\");
                break;
            }
              // setState(() {
              //   nav_is_activ[nav_index]=0;
              //   nav_index=4;
              //   if(nav_index!=2){
              //     nav_is_activ[nav_index]=1;
              //   }
              // });
          });
          // log("this is: $nav_index");
        } ,
        currentIndex: nav_index,
        items: [
          BottomNavigationBarItem(
            icon: nav_icons[0],
            label: "",
          ),
          BottomNavigationBarItem(
            icon: nav_icons[1],
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF55540)
              ),
              child: nav_icons[2],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: nav_icons[3],
            label: "",
          ),
          BottomNavigationBarItem(
            icon: nav_icons[4],
            label: "",
          )
        ],
      ),
    );
  }
}

Widget catigory({required String image_src,required Color box_color,required String information,required Animation animation}){
  
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: box_color,
          borderRadius: BorderRadius.circular(20),
        ),
        child:AnimatedBuilder(
          animation: animation, 
          builder: (context,child){
            return Transform.translate(
              offset: animation.value,
              child: Image.asset(image_src),
            );
          }
        ) ,
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
            Image.asset("lib/assets/Task_1p1/burger_icon.png")
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
              child: Image.asset("lib/assets/Task_1p1/shpping_icon.png",),
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

