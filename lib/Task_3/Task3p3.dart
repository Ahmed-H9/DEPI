import 'package:flutter/material.dart';

class Task3p3 extends StatefulWidget {
  const Task3p3({super.key});

  @override
  State<Task3p3> createState() => _view2State();
}

class _view2State extends State<Task3p3> {
  var scale=1.0;
  var number=1;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset("lib/assets/live/notification_icon.png"),
        title: const Text(
          "عربة التسوق",
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            things_u_buy(),
            const SizedBox(height: 15,),
            const Text(
              "ملخص الدفع",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            const SizedBox(height: 10,),
            payment(the_text_side: "المجموع الفرعي", the_number_side: "2.00 ج.م"),
            const SizedBox(height: 10,),
            payment(the_text_side: "توصيل", the_number_side: "0.30 ج.م"),
            const SizedBox(height: 10,),
            payment(the_text_side: "المبلغ الإجمالي", the_number_side: "2.60 ج.م",is_bold: true),
          ],
        ),
      )
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
              const Text(
                "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة",
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
                    "2.20 ج.م",
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
        const SizedBox(width: 20,),
        Image.asset("lib/assets/Task_2/pasta.png"),
      ],
    );
  }

  Widget payment({required String the_text_side,required String the_number_side,bool is_bold=false}){
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
  
  Widget one_burger(){
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(width: .5,color: Colors.amber),
        borderRadius: BorderRadius.circular(15)
      ),
      child: GestureDetector(
        onLongPress: (){
          setState(() {
            scale=2.0;
          });
        },
        onLongPressEnd: (detail){
          setState(() {
            scale=1.0;
          });
        },
        child: Transform.scale(
          scale: scale,
          child:Image.asset("lib/assets/Task_1/burger.png"),
        ),
      )
      
    );



}
}