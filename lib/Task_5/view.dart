import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_tasks/Task_5/controllers/cubit/favCubit.dart';
import 'package:for_tasks/Task_5/controllers/cubit/favState.dart';
import 'package:for_tasks/Task_5/controllers/sqlite/model.dart';

class Task_5 extends StatelessWidget {
  const Task_5({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("lib/assets/live/notification_icon.png"),
        title: const Text(
          "المفضلة",
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
            child: IconButton(
              icon: Image.asset("lib/assets/live/back_icon.png"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(width: 20,),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: BlocBuilder<Favcubit,Favstates>(
          builder: (context, state){
          final Favcubit favlist=context.read<Favcubit>();
            favlist.loadAll();
            if(favlist.favsList.isEmpty){
              return const Material(
                color: Colors.white,
                child: Center(
                  child: CircularProgressIndicator(),
                )
              );
            }
            return ListView.separated(
              itemCount:  favlist.favsList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 5,),
              itemBuilder: (context, index) =>oneCard(index:  index,context: context),

            );
          } 
          
        )
      ),
    );
  }

  Widget oneCard({required int index,required BuildContext context}){
    final List<Foods> item=context.read<Favcubit>().favsList;
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow:const [BoxShadow(blurRadius: 14,offset:Offset(0, 0),color: Colors.black12)]
      ),
      child: Row(
        children: [
          Column(
            children: [
              IconButton(
                onPressed: ()async{
                  context.read<Favcubit>().changeIconFav(item[index]);
                },
                icon:item[index].isFav==1?Image.asset("lib/assets/Task_5/FillHeart.png"):Image.asset("lib/assets/Task_2/heart_icon.png")
              ),
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow:[BoxShadow(blurRadius: 14,offset:Offset(0, 0),color: Colors.black12)],
                  shape: BoxShape.circle
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.add,color: Color(0xffF55540),size: 18,),
                ), 
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                item[index].mealName.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                item[index].resturantName.toString(),
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        item[index].review.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ), 
                      const SizedBox(width: 5,),
                      const Icon(Icons.star,color: Color(0xffF55540),size: 16,)
                    ],
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    item[index].price.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 10,),
          SizedBox(
            width: 110,
            child: Image.asset(item[index].src.toString()),
          )
          
        ],
      ),
    );
  }
}