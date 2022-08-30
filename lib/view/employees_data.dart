// import 'package:flutter/material.dart';
// import 'package:fetchingdata/main.dart';
// import 'package:fetchingdata/apiconnection/apiconnection.dart';
// import 'package:fetchingdata/model/employeemodel.dart';
// class EmployeesData extends StatelessWidget {
//
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Container(
//                 height: 332,
//                 width: 227,
//                 decoration: BoxDecoration(
//                     color: Color.fromRGBO(253, 237, 235, 1),
//                     borderRadius:BorderRadius.horizontal(
//                       right: Radius.circular(15),
//                     ),),
//                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     IconButton(
//                         icon: Icon(
//                           Icons.arrow_back_ios,
//                           color: Color.fromRGBO(209, 45, 45, 1),
//                           size: 23,
//                         ),
//                         onPressed: () { Navigator.pop(context);},
//                       ),
//
//                     Padding(
//                       padding: const EdgeInsets.only(left: 56.0),
//                       child: Container(
//                         height: 113,
//                         width: 116,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"),
//                                 fit: BoxFit.cover),
//                             border: Border.all(
//                                 color: Colors.white,
//                                 width: 5.65
//                             )
//                         ),
//
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 48.0,top:36),
//                       child: Text("Jithin K\nNarayanan",
//                         style: TextStyle(
//                           fontSize:25,
//                           fontWeight: FontWeight.w700,
//
//                         ),),
//                     )
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(14.0),
//                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 83.0,bottom: 20),
//                       child: Text("profile",
//                       style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: Text("ID:",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: Text("User name:\njithin997",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: Text("Email:\n jithin@edapt.me",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: Text("Phone:\n902789289",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: Text("website:\njithin.me",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                   ],
//
//                 ),
//               )
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Company",
//                   style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,
//                       color:Colors.red ),),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10.0),
//                   child: Row(
//                     children: [
//                       Text("Name:",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,
//                             color:Colors.grey ),),
//                       Text(" Edapt",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10.0),
//                   child: Row(
//                     children: [
//                       Text("catch Phrase:\n ",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,
//                             color:Colors.grey ),),
//                       Text(" Proactive didactic\n contingency",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10.0),
//                   child: Row(
//                     children: [
//                       Text("Bs:",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,
//                             color:Colors.grey ),),
//                       Text(" harness real-time e-maerkets",
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 24.0),
//                   child: Text("Address",
//                     style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,
//                         color:Colors.red ),),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10.0),
//                   child: Text("kulas light,Apt.556, Gwendhfvdh\n"
//                       "68990-6647",
//                     style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//import 'package:maps_launcher/maps_launcher.dart';
import 'package:fetchingdata/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fetchingdata/model/employeemodel.dart';
import 'package:fetchingdata/controller/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
//import 'package:maps_launcher/maps_launcher.dart';

class Employeesdata extends StatefulWidget {
  //Employeesdata({Key? key, required this.index}) ;


  @override
  State<Employeesdata> createState() => _EmployeesdataState();
}

class _EmployeesdataState extends State<Employeesdata> {
  @override
  Widget build(BuildContext context) {
    // MapUtils._();
    Future<void> openMap(double latitude, double longitude) async {
      String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
      if (await canLaunch(googleUrl)) {
        await launch(googleUrl);
      } else {
        throw 'Could not open the map.';
      }
    }
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(onPressed: (){
            context.read<DataProvider>().nextUser(context);
          }, child:const Text("Next"))
        ],
      ),
        body: Consumer<DataProvider>(
          // stream: null,
          builder: (context, dataProvider,_) {
            return FutureBuilder<List>(
                future: context.read<DataProvider>().datalist,
                builder: (ctx, snapshot)
                {
                  if (snapshot.hasData) {

                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  height: 332,
                                  width: 190,
                                  child: Card(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30))),
                                    color: const Color.fromRGBO(253, 237, 235, 1),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [

                                        CircleAvatar(
                                          radius: 52,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                              radius: 50,
                                              backgroundImage: NetworkImage(snapshot
                                                  .data![dataProvider.currentUser].profileImage
                                              )),
                                        ),
                                      //  Padding(
                                        //    padding: EdgeInsets.only(bottom: 30)),
                                        SizedBox(
                                            width: 100,
                                            child: Text(
                                              maxLines: 2,
                                              //overflow: TextOverflow.ellipsis,
                                              snapshot.data![context
                                                  .read<DataProvider>()
                                                  .currentUser].name.toString()  ,
                                              style: TextStyle(
                                                  color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ))
                                      ],
                                    ),
                                  )),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                          padding: const EdgeInsets.only(left: 120.0,bottom: 20),
                          child: Text("profile",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10.0),
                                        child: RichText(
                                            textAlign: TextAlign.start,
                                            text:  TextSpan(
                                                text: "ID :",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                                children: [
                                                  TextSpan(
                                                      text:snapshot.data![context
                                                          .read<DataProvider>()
                                                          .currentUser].id.toString()   ,
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 18))
                                                ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom:10.0),
                                        child: RichText(
                                            textAlign: TextAlign.start,
                                            text:  TextSpan(
                                                text: "User Name :\n",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                                children: [
                                                  TextSpan(
                                                      text: snapshot.data![context
                                                          .read<DataProvider>()
                                                          .currentUser].username.toString()  ,
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 18))
                                                ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom:10.0),
                                        child: RichText(
                                            textAlign: TextAlign.start,
                                            text:  TextSpan(
                                                text: "Email :\n",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                                children: [
                                                  TextSpan(
                                                      text: snapshot.data![context
                                                          .read<DataProvider>()
                                                          .currentUser].email.toString()  ,
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 18))
                                                ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom:10.0),
                                        child: RichText(
                                            textAlign: TextAlign.start,
                                            text:  TextSpan(
                                                text: "Phone :\n",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                                children: [
                                                  TextSpan(
                                                      text: snapshot.data![context
                                                          .read<DataProvider>()
                                                          .currentUser].phone.toString()  ,
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 18))
                                                ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10.0),
                                        child: RichText(
                                            textAlign: TextAlign.start,
                                            text:  TextSpan(
                                                text: "Website :\n",

                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                                children: [
                                                  TextSpan(
                                                      text: snapshot.data![context
                                                          .read<DataProvider>()
                                                          .currentUser].website.toString()  ,
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize:18))
                                                ])),
                                      ),
                                    ],
                                  ),
                                ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Padding(
                                //   padding:
                                //   const EdgeInsets.only(top: 20, bottom: 20),
                                //   child: Container(
                                //       alignment: Alignment.topLeft,
                                //       child: RichText(
                                //         text:  TextSpan(
                                //             text: "Company",
                                //             style: TextStyle(
                                //                 color: Colors.red, fontSize: 20)),
                                //       )),
                                // ),
                                // RichText(
                                //     textAlign: TextAlign.start,
                                //     text:  TextSpan(
                                //         text: "Name :",
                                //         style: TextStyle(
                                //             color: Colors.grey, fontSize: 20),
                                //         children: [
                                //           TextSpan(
                                //               text: snapshot.data![widget.index].company.name.toString()  ,
                                //               style: TextStyle(
                                //                   color: Colors.black,
                                //                   fontWeight: FontWeight.bold,
                                //                   fontSize: 20))
                                //         ])),
                                // RichText(
                                //     textAlign: TextAlign.start,
                                //     text:  TextSpan(
                                //         text: "Catch Phrase :",
                                //         style: TextStyle(
                                //             color: Colors.grey, fontSize: 20),
                                //         children: [
                                //           TextSpan(
                                //               text: snapshot.data![widget.index].company.catchPhrase.toString() ,
                                //               style: TextStyle(
                                //                   color: Colors.black,
                                //                   fontWeight: FontWeight.bold,
                                //                   fontSize: 20))
                                //         ])),
                                // RichText(
                                //     textAlign: TextAlign.start,
                                //     text:  TextSpan(
                                //         text: "Bs :",
                                //         style: TextStyle(
                                //             color: Colors.grey, fontSize: 20),
                                //         children: [
                                //           TextSpan(
                                //               text:  snapshot.data![widget.index].company.bs.toString(),
                                //               style: TextStyle(
                                //                   color: Colors.black,
                                //                   fontWeight: FontWeight.bold,
                                //                   fontSize: 20))
                                //         ])),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, bottom: 15),
                                  child: Text(
                                    "Address",
                                    style:
                                    TextStyle(fontSize: 20, color: Colors.red),
                                  ),
                                ),
                                SizedBox(
                                    width: 250,
                                    child: Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      "${snapshot.data![context
                                          .read<DataProvider>()
                                          .currentUser].address.street},${snapshot.data![context
                                          .read<DataProvider>()
                                          .currentUser].address.suite},${snapshot.data![context
                                          .read<DataProvider>()
                                          .currentUser].address.city},${snapshot.data![context
                                          .read<DataProvider>()
                                          .currentUser].address.zipcode}",
                                      style: TextStyle(color: Colors.black),
                                    )),
                                const SizedBox(
                                  height: 30,
                                ),
                                //const Image(image: AssetImage("219017-white-map-ui.png"))
                              ],
                            ),
                          ),
                          // SizedBox(
                          //     height: 200,
                          //     child: const Image(
                          //         image: NetworkImage(
                          //             "https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/map-route-image-6807-68565d04f06014aba2f90b32d2c61f45@1x.jpg")))
                          InkWell(
                            child: Container(
                                width: 480,
                                height: 200,
                                alignment: Alignment.center,
                                child:Image(image: NetworkImage( "https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/map-route-image-6807-68565d04f06014aba2f90b32d2c61f45@1x.jpg"))
                            ),
                            onTap: (() {
                              openMap(double.parse(snapshot.data![context
                                  .read<DataProvider>()
                                  .currentUser].address.geo.lat),double.parse(snapshot.data![context
                                  .read<DataProvider>()
                                  .currentUser].address.geo.lng));


                            }),
                          )

                        ],
                      ),
                    );


                   } else {
                    return Container(
                        margin: const EdgeInsets.only(bottom: 80.0),
                        child: const Center(
                          child: CircularProgressIndicator(
                              backgroundColor: Colors.blue,
                              valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.red)),
                        ));
                  }
                });
          }
        ));

  }
}
// class MapUtils {



  // static

// }