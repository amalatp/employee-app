// import 'dart:convert';
//
// import '../model/employeemodel.dart';
 import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:fetchingdata/model/employeemodel.dart';
class ApiClass {

  Future<List<Welcome>> fetchAlbum() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/bdcdffd7-df4c-4645-8290-d451ea6fe98a'));

    List<dynamic> list = convert.jsonDecode(response.body);
    // print("jhggjhg"+list.toString());
    return list.map((e) => Welcome.fromJson(e)).toList();
    // print("jhggjhg"+list.length.toString());
    // print("jhwbfbds");
    // print(details[0].name);
    // return details;
    //Welcome.fromJson()
  }
}
