import 'package:flutter/material.dart';

class Task_4 extends StatefulWidget {
  const Task_4({super.key});

  @override
  State<Task_4> createState() => _Task_4State();
}

class _Task_4State extends State<Task_4> {
  int number=1;
  bool is_selected1=false;
  bool is_selected2=false;
  bool is_selected3=false;
  bool is_selected4=false;
  bool is_selected5=false;
  bool is_selected6=false;
  bool is_selected7=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Column(
        children: [
          big_photo_header(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              
                child:Column(
                  children: [
                    things_u_buy(),
                    const SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      height: 2,
                      color: const Color(0xffD9D9D9)
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xffFFE9D9),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Text(
                            "الزامي",
                            style: TextStyle(
                              color: Color(0xffF55540),
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                            ),
                          ),
                        ),
                        const Spacer(), 
                        const Text(
                          "الحجم",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Text(
                          "0.50 د.ك",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "سنجل",
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              is_selected1=!is_selected1;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                            color: is_selected1?const Color(0xffF55540):Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(width: .5,color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Text(
                          "0.50 د.ك",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "دبل",
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              is_selected2=!is_selected2;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                            color: is_selected2?const Color(0xffF55540):Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(width: .5,color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      height: 2,
                      color: const Color(0xffD9D9D9)
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xffFFE9D9),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Text(
                            "اختياري",
                            style: TextStyle(
                              color: Color(0xffF55540),
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                            ),
                          ),
                        ),
                        const Spacer(), 
                        const Text(
                          "الإضافات",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Text(
                          "0.50 د.ك",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "سلطه",
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              is_selected3=!is_selected3;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                            color: is_selected3?const Color(0xffF55540):Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(width: .5,color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Text(
                          "0.50 د.ك",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "حار",
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              is_selected4=!is_selected4;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                            color: is_selected4?const Color(0xffF55540):Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(width: .5,color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Text(
                          "0.50 د.ك",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "عادي",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              is_selected5=!is_selected5;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                            color: is_selected5?const Color(0xffF55540):Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(width: .5,color: Colors.grey)
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
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
                            "150",
                            textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                          ),
                          const Expanded(
                            child: Text(
                              "إضافه إلى السلة",
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
                              "1",
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
            )
          )
        ],
      ),      
    );
  }
  
  Widget big_photo_header(){
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset("lib/assets/Task_4/big_chiken.png",fit: BoxFit.contain,),
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset("lib/assets/Task_1p1/Bell_icon.png"),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color(0xffF55540),
                shape: BoxShape.circle
              ),
              child: IconButton(
                icon: Image.asset("lib/assets/live/back_icon.png",color: Colors.white,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        )
      ],
    );
  }
  
  Widget things_u_buy(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "معكرونه بالصوص و قطع بانية حار",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                textAlign: TextAlign.right,
                "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    width: 134,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [BoxShadow(blurRadius: 14,offset: Offset(0,0),color: Colors.black12)],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            setState(() {
                              number++; 
                            });
                          }, 
                          icon: const Icon(Icons.add,color: Color(0xffF55540),size: 15,)
                        ),
                        const SizedBox(width: 15,),
                        Text(
                          "$number",
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(width: 15,),
                        IconButton(
                          onPressed: (){
                            setState(() {
                              if(number>=1){
                                number--; 
                              }
                            });
                          }, 
                          icon: const Icon(Icons.minimize_rounded,color: Color(0xffFFD2B0),size: 15,),
                          alignment: AlignmentDirectional.topCenter,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "2.20 د.ك",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget select_addition_things({required String text}){
    return Row(
      children: [
        const Text(
          "0.50 د.ك",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(width: 10,),
        GestureDetector(
          onTap: (){
            setState(() {
              is_selected1=!is_selected1;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
            color: is_selected1?const Color(0xffF55540):Colors.white,
              shape: BoxShape.circle,
              border: Border.all(width: .5,color: Colors.grey)
            ),
          ),
        )
        
      ],
    );
  }
}
