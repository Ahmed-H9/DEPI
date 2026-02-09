import 'package:flutter/material.dart';

class Task3p2 extends StatelessWidget {
  const Task3p2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 0,),
        itemBuilder: (context,index)=>one_card(),
        itemCount: 8,
      )
      
      
    );
  }
}

Widget one_card(){
  return Padding(
    padding: const EdgeInsets.all(5),
    child:Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: .1,color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(offset: Offset(0,0),blurRadius: 10,color: Colors.black12)]
      ),
      padding: const EdgeInsets.all(10),
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "كود الطلب: #545555",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 3,),
                  const Text(
                    "اسم المطعم",
                    style: TextStyle(
                      color: Color(0xffF55540),
                      fontSize: 12
                    ),
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      const Text(
                        "الساعه 12:30 ص",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey
                        ),
                      ),
                      const SizedBox(width: 5,),
                      const Text(
                        "15/1/2024",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Image.asset("lib/assets/live/clock_icon.png")
                    ],
                  )
                ],
              ),
              const SizedBox(width: 10,),
              Image.asset("lib/assets/live/Ellipse 375.png"),
            ],
          ),
          const SizedBox(height: 8,),
          Row(
            children: [
              Expanded(
                child: Container( 
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Color(0xff7F7F7F)),
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: const Text(
                    "رفض",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff7F7F7F),
                      fontWeight: FontWeight.w500,
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
                    "موافق",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                    ),
                  ),
                )
              ),
            ],
          )
        ],
      ),
    ),
  );
}