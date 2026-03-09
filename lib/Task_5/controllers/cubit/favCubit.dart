import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_tasks/Task_5/controllers/cubit/favState.dart';
import 'package:for_tasks/Task_5/controllers/sqlite/favDatabase.dart';
import 'package:for_tasks/Task_5/controllers/sqlite/model.dart';

class Favcubit extends Cubit<Favstates>{
  Favcubit():super(favInitState());

  
  myOwnDB db=myOwnDB();

  List<Foods> favsList=[];
  List<Foods> allList=[];

  void loadAll()async{
    allList=await db.getall();
    favsList=await db.getFavs();
    emit(loadFavsState());
  }

  void loadFavs()async{
    favsList=await db.getFavs();
    emit(loadFavsState());
  }


  void changeIconFav(Foods food)async{
    food.isFav=food.isFav==1?0:1;
    await db.updateIsFav(food.id!,food.isFav!);
    loadFavs();
    emit(updateIsFavState());
    log("now we update ");
  }



}