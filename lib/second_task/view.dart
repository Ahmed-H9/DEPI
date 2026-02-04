import 'package:flutter/material.dart';

class Task_2 extends StatelessWidget {
  const Task_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("lib/assets/Task_2/big_image.png",fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child:Column(
                children: [
                  Container(
                      decoration:  BoxDecoration(
                        border: Border.all(width: .2,color: Colors.grey)
                      ),
                      child:Row(
                        children: [
                          const SizedBox(width: 20,),
                          Column(
                            children: [
                              Image.asset("lib/assets/Task_2/heart_icon.png",width: 35,),
                              Image.asset("lib/assets/Task_2/share_icon.png",width: 35,),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  "اسم الطعم هنا",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "طعام بحري , مشويات , اكلات سريعة",
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Image.asset("lib/assets/Task_1/burger_icon.png"),
                                  ],
                                ),
                                const SizedBox(height: 3,),
                                Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    "(+100) 5.0",
                                    style: TextStyle(
                                      fontSize: 12
                                    ),
                                  ),
                                  const SizedBox(width: 4,),
                                  Image.asset("lib/assets/Task_2/star_icon.png")
                                ],
                              ),
                                const SizedBox(height: 3,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "متاح التوصيل",
                                      style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    Image.asset("lib/assets/Task_2/truck_icon.png"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 110,
                            child: Image.asset("lib/assets/Task_2/pasta_cover.png",fit: BoxFit.cover,),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        pick_up_one(text: "محاشي",selected: false),
                        const SizedBox(width: 10,),
                        pick_up_one(text: "حلويات",selected: false),
                        const SizedBox(width: 10,),
                        pick_up_one(text: "مشويات",selected: false),
                        const SizedBox(width: 10,),
                        pick_up_one(text: "بيتزا",selected: false),
                        const SizedBox(width: 10,),
                        pick_up_one(text: "الافضل 🔥",selected: true),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.red),
                            borderRadius: BorderRadius.circular(3)

                          ),
                          child: Image.asset("lib/assets/Task_2/setting_icon.png"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الافضل",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "🔥",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: pick_up_the_best(src: "lib/assets/Task_2/frise.png", describtion: "معكرونه بالصوص وقطع بانيه حار"),
                      ),
                      Expanded(
                        child: pick_up_the_best(src: "lib/assets/Task_2/chiken.png", describtion: "معكرونه بالصوص وقطع بانيه حار"),
                      )
                    ],
                  ),
                  const SizedBox(height: 5,), 
                  Row(
                    children: [
                      Expanded(
                        child: pick_up_the_best(src: "lib/assets/Task_2/hot_pasta.png", describtion: "معكرونه بالصوص وقطع بانيه حار"),
                      ),
                      Expanded(
                        child: pick_up_the_best(src: "lib/assets/Task_2/pasta&salad.png", describtion: "معكرونه بالصوص وقطع بانيه حار"),
                      )
                    ],
                  ),
                  read_about_it(),
                  const SizedBox(height: 10,),
                  read_about_it(),
                  const SizedBox(height: 10,),
                  read_about_it(),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xffF55540),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        const Text(
                          "ج.م",
                          textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                        const Text(
                          " 0.00",
                          textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                        const Expanded(
                          child: Text(
                            "الإطلاع على السلة",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Container(
                          padding: const EdgeInsets.all(2),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(.2)
                          ),
                          child: const Text(
                            "0",
                            textAlign: TextAlign.center,
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

Widget pick_up_one({required String  text,required bool selected}){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3.5),
    decoration: BoxDecoration(
      border: Border.all(width: 1,color: selected==false?Colors.grey:Colors.red),
      borderRadius: BorderRadius.circular(3)
    ),
    child: Text(
      text,
      style: TextStyle(
        color: selected==false?Colors.grey:Colors.red
      ),
    ),  
  );
}

Widget pick_up_the_best({required String src,required String describtion}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child:Image.asset(src),
      ),
      const SizedBox(height: 3,),
      Text(
        describtion,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold
        ),
      ),
      const SizedBox(height: 3,),
      const Text(
        "د.ك 2.20",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 10
        ),
      ),
    ],
  );
}

Widget read_about_it(){
  return Row(
    children: [
      const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "معكرونه بالصوص وقطع بانيه حار",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 4),
            Text(
              ".هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها",
              maxLines: 4,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 12
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "د.ك 2.20",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),
            )
          ],
        ),
      ),
      const SizedBox(width: 10,),
      Container(
        width: 130,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child:Image.asset("lib/assets/Task_2/pasta.png",fit: BoxFit.cover,),
      ),
      
    ],
  );
}