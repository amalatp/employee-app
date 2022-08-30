import 'package:fetchingdata/controller/apiconnection.dart';
//import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
class DataProvider with ChangeNotifier {
  ApiClass apiClass = ApiClass();
  int currentUser =0;

  late Future<List> datalist = apiClass.fetchAlbum();

  updateCurrentUser(context, id) {
    currentUser = id;
    notifyListeners();
  }
  nextUser(context) async{
   List list=await datalist;
    if(list.length==currentUser+1){
      currentUser=0;
    }
    else{
      currentUser++;
    }
    notifyListeners();
  }
}