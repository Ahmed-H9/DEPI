import 'package:flutter/material.dart';

class Task3p1 extends StatelessWidget {
  const Task3p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("lib/assets/live/notification_icon.png"),
        title: const Text(
          "تتبع الطلب",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.all(2),
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: Color(0xffF55540),
              shape: BoxShape.circle
            ),
            child: Image.asset("lib/assets/live/back_icon.png") ,
          ),
          const SizedBox(width: 20,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              child:Image.asset("lib/assets/Task_3/big_photo.png",fit: BoxFit.cover,),
            ),
            const SizedBox(height: 15,),
            const Center(
              child:Text(
                "سيتم توصيل طعامك خلال",
                style: TextStyle(
                  color: Color(0xff686868),
                  fontWeight: FontWeight.bold,
                  fontSize: 14
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "دقيقة",
                  style: TextStyle(
                    color: Color(0xffF46423),
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 5,),
                Text(
                  "20/15",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25,),
            Container(
              color: Colors.grey.shade400,
              width: double.infinity,
              height: 1,
            ),
            const SizedBox(height: 15,),
            const Text(
              "معلومات الطلب",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
            const SizedBox(height: 15,),
            order_information(),
            const SizedBox(height: 15,),
            Container(
              color: Colors.grey.shade400,
              width: double.infinity,
              height: 1,
            ),
            const SizedBox(height: 15,),
            information(the_text_side: "رقم التعريف بالطلب", the_number_side: "#8456156",is_bold: true),
            const SizedBox(height: 10,),
            information(the_text_side: "كود التحقيق", the_number_side: "1973",is_bold: true),
            const SizedBox(height: 10,),
            information(the_text_side: "عدد العناصر", the_number_side: "1",is_bold: true),
            const SizedBox(height: 15,),
            const Spacer(),
            last_buttons()
          ],
        ),
      )
    );
  }
  Widget order_information(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "معكرونه بالصوص و قطع بانية حار",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
              Text(
                "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "د.ك 2.20",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 20,),
        Image.asset("lib/assets/Task_2/pasta.png"),
      ],
    );
  }

  Widget information({required String the_text_side,required String the_number_side,bool is_bold=false}){
    return Row(
      children: [
        Text(
          the_number_side,
          style: TextStyle(
            fontWeight: is_bold==true?FontWeight.bold:FontWeight.w400,
            fontSize: 13,
            
          ),
        ),
        const Spacer(),
        Text(
          the_text_side,
          style: TextStyle(
            fontWeight: is_bold==true?FontWeight.bold:FontWeight.w400,
            fontSize: 13
          ),
        ),
      ],
    );
  }

  Widget last_buttons(){
    return Row(
      children: [
        Expanded(
          child: Container( 
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: const Color(0xffF55540)),
              borderRadius: BorderRadius.circular(6)
            ),
            child: const Text(
              "الغاء الطلب",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffF55540),
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),
            ),
          )
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xffF55540),
              borderRadius: BorderRadius.circular(6)
            ),
            child: const Text(
              "تتبع الطلب",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),
            ),
          )
        ),
      ],
    );
  }

}