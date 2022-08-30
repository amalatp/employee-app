
import 'package:fetchingdata/view/employees_data.dart';
import 'package:flutter/material.dart';
import 'package:fetchingdata/controller/apiconnection.dart';
import 'package:fetchingdata/controller/provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     return Consumer(builder: (context, provider, child)
     {
       return Scaffold(

         appBar: AppBar(
           backgroundColor: Colors.white,
           elevation: 0,
           leading: IconButton(
             icon: Icon(
               Icons.arrow_back_ios,
               color: Color.fromRGBO(209, 45, 45, 1),
               size: 23,
             ),
             onPressed: () {},
           ),
         ),
         body: Padding(
           padding: const EdgeInsets.all(21.0),
           child: FutureBuilder<List>(
               future: context
                   .read<DataProvider>()
                   .datalist,
               builder: (context, snapshot) {
                 // print(snapshot.data![2].name.toString());
                 if (snapshot.hasData) {
                   return GridView.builder(
                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

                           crossAxisSpacing: 21,
                           mainAxisSpacing: 16,
                           crossAxisCount: 2,
                           childAspectRatio: .7
                       ),
                       itemCount: snapshot.data!.length,
                       itemBuilder: (BuildContext context, int index) {
                         return GestureDetector(
                           onTap: () async {
                             context.read<DataProvider>()
                                 .updateCurrentUser(context, index);
                             Navigator.push(
                                 context, MaterialPageRoute(
                                 builder: (BuildContext context) =>
                                 new Employeesdata()));
                           },
                           child: Container(
                             height: 235,
                             width: 154,
                             decoration: BoxDecoration(
                                 color: Color.fromRGBO(209, 45, 45, 1),
                                 borderRadius: BorderRadius.all(
                                     Radius.circular(15))),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(19.0),
                                   child: Container(
                                     height: 113,
                                     width: 116,
                                     decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         image: DecorationImage(
                                             image: NetworkImage(
                                                 snapshot.data![index]
                                                     .profileImage ?? ""),
                                             fit: BoxFit.cover),
                                         border: Border.all(
                                             color: Colors.white,
                                             width: 5.65
                                         )
                                     ),

                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 15.0),
                                   child: Text(snapshot.data![index].name ?? "",
                                     style: TextStyle(
                                       fontSize: 18,
                                       fontWeight: FontWeight.w700,
                                       color: Colors.white,

                                     ),),
                                 )
                               ],
                             ),
                           ),
                         );
                       }
                   );
                 }
                 if (snapshot.hasError) {
                   return Text(snapshot.error.toString());
                 }
                 else {
                   return CircularProgressIndicator();
                 }
               }
           ),

         ),
        );
     }
     );
}
}
