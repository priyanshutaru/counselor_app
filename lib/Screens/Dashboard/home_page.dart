// import 'dart:convert';
// import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
// import 'package:counselor_app/Screens/Dashboard/Call_page.dart';
// import 'package:counselor_app/Screens/Dashboard/add_money.dart';
// import 'package:counselor_app/Screens/Dashboard/chat_page.dart';
// import 'package:counselor_app/Screens/Dashboard/counselor_profile.dart';
// import 'package:counselor_app/Screens/Dashboard/drawer_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// class home_page extends StatefulWidget {
//   const home_page({Key? key}) : super(key: key);
//   @override
//   State<home_page> createState() => _home_pageState();
// }
// class _home_pageState extends State<home_page> {
//   bool isloading = true;
//   bool bannerloading = true;
//   String msg = '';
//   List imageList = [];
//   List banner1_list = [];
//   bool imageloading = false;
//   Future getBannerList2() async {
//     var api = Uri.parse("https://leoon.in/Api/get_sub_banner");
//     final response = await http.get(
//       api,
//     );
//     var res = await json.decode(response.body);
//     msg = res['message'].toString();
//     if (msg == "Record found") {
//       setState(() {
//         banner1_list = res['data'];
//         imageloading = true;
//       });
//     }
//   }
//   final formKey = GlobalKey();
//   final String appSign = '';
//   final RoomIdController = TextEditingController();

//   var currentPage = 0;
//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//       getBannerList2();
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//         drawer: drawer_page(),
//         appBar: AppBar(
//           backgroundColor: ABConstraints.themeColor,
//           // backgroundColor:Colors.white,
//           title: Text("HOME PAGE",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
//           ),
//           elevation: 0.0,
//           foregroundColor:  ABConstraints.white,
//           actions: [
//             InkWell(
//               onTap: () {
//                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMoney()));
//               },
//               child: Container(
//                 margin: EdgeInsets.symmetric(
//                   vertical: 11,
//                 ),
//                 decoration: BoxDecoration(
//                     //color: ABConstraints.themeColor,
//                     borderRadius: BorderRadius.circular(10),
//                     border: Border.all(width: 1,color: Colors.white,)
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 6,right: 6),
//                   child: Row(
//                     children: [
//                       Icon(Icons.account_balance_wallet_outlined),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       Text(' ₹ '+ "6453",style: TextStyle(fontWeight: FontWeight.w700),),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 25,
//             )
//           ],
//         ),
//         body: SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 10,),
//                   Center(
//                     child: Container(
//                       height: MediaQuery.of(context).size.height*0.18,
//                       width: MediaQuery.of(context).size.width*0.95,
//                       decoration: BoxDecoration(
//                         // border: Border.all(width: 5,color: ABConstraints.btn),
//                         borderRadius: BorderRadius.circular(10),
//                         image: DecorationImage(image: AssetImage("images/banner1.png"),fit: BoxFit.fill)
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text("Popular Counselor",
//                     style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     height: MediaQuery.of(context).size.height/3.45,
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       children: [
//                         Container(
//                             height: MediaQuery.of(context).size.height/3.48,
//                             width: MediaQuery.of(context).size.width/2.2,
//                             child: Card(
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               color: Colors.white70,
//                               elevation: 1,
//                               child: Column(
//                                 children: [
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   Container(
//                                     height: 80,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(50),
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1),
//                                         image: DecorationImage(
//                                           image: AssetImage("images/p1.png"),
//                                           fit: BoxFit.fill,
//                                         ),
//                                         // shape: BoxShape.circle
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Text("Nilesh kumar",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.normal
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text("₹ 30 /min",
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Container(
//                                     height: 30,
//                                     width: 120,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(Radius.circular(6)),
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1)
//                                     ),
//                                     child: MaterialButton(
//                                       onPressed: (){
//                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>CounselorProfile()));
//                                       },
//                                       child: Text("Connect",
//                                         style: TextStyle(
//                                           color: ABConstraints.themeColor,
//                                         ),),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                         ),
//                         Container(
//                             height: MediaQuery.of(context).size.height/3.48,
//                             width: MediaQuery.of(context).size.width/2.2,
//                             child: Card(
//                               color: Colors.white70,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               elevation: 1,
//                               child: Column(
//                                 children: [
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   Container(
//                                     height: 80,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1),
//                                         image: DecorationImage(
//                                           image: AssetImage("images/p2.png"),
//                                           fit: BoxFit.fill,
//                                         ),
//                                         shape: BoxShape.circle
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Text("Nilesh",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.normal
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text("₹ 25 /min",
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Container(
//                                     height: 30,
//                                     width: 120,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(Radius.circular(6)),
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1)
//                                     ),
//                                     child: MaterialButton(
//                                       onPressed: (){
//                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>CounselorProfile()));
//                                       },
//                                       child: Text("Connect",
//                                         style: TextStyle(
//                                           color: ABConstraints.themeColor,
//                                         ),),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                         ),
//                         Container(
//                             height: MediaQuery.of(context).size.height/3.48,
//                             width: MediaQuery.of(context).size.width/2.2,
//                             child: Card(
//                               color: Colors.white70,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               elevation: 1,
//                               child: Column(
//                                 children: [
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   Container(
//                                     height: 80,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1),
//                                         image: DecorationImage(
//                                           image: AssetImage("images/p3.png"),
//                                           fit: BoxFit.fill,
//                                         ),
//                                         shape: BoxShape.circle
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Text("Nilesh",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.normal
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text("₹ 5 /min",
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Container(
//                                     height: 30,
//                                     width: 120,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(Radius.circular(6)),
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1)
//                                     ),
//                                     child: MaterialButton(
//                                       onPressed: (){
//                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>CounselorProfile()));
//                                       },
//                                       child: Text("Connect",
//                                         style: TextStyle(
//                                           color: ABConstraints.themeColor,
//                                         ),),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                         ),
//                         Container(
//                             height: MediaQuery.of(context).size.height/3.48,
//                             width: MediaQuery.of(context).size.width/2.2,
//                             child: Card(
//                               color: Colors.white70,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               elevation: 1,
//                               child: Column(
//                                 children: [
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   Container(
//                                     height: 80,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1),
//                                         image: DecorationImage(
//                                           image: AssetImage("images/p2.png"),
//                                           fit: BoxFit.fill,
//                                         ),
//                                         shape: BoxShape.circle
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Text("Nilesh Kumar",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.normal
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text("₹ 35 /min",
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Container(
//                                     height: 30,
//                                     width: 120,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(Radius.circular(6)),
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1)
//                                     ),
//                                     child: MaterialButton(
//                                       onPressed: (){
//                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>CounselorProfile()));
//                                       },
//                                       child: Text("Connect",
//                                         style: TextStyle(
//                                           color: ABConstraints.themeColor,
//                                         ),),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                         ),
//                         Container(
//                             height: MediaQuery.of(context).size.height/3.48,
//                             width: MediaQuery.of(context).size.width/2.2,
//                             child: Card(
//                               color: Colors.white70,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               elevation: 1,
//                               child: Column(
//                                 children: [
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   Container(
//                                     height: 80,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1),
//                                         image: DecorationImage(
//                                           image: AssetImage("images/pro.jpg"),
//                                           fit: BoxFit.fill,
//                                         ),
//                                         shape: BoxShape.circle
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Text("Nilesh Kumar",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.normal
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text("₹ 35 /min",
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Container(
//                                     height: 30,
//                                     width: 120,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(Radius.circular(6)),
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1)
//                                     ),
//                                     child: MaterialButton(
//                                       onPressed: (){
//                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>CounselorProfile()));
//                                       },
//                                       child: Text("Connect",
//                                         style: TextStyle(
//                                           color: ABConstraints.themeColor,
//                                         ),),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                         ),
//                         Container(
//                             height: MediaQuery.of(context).size.height/4.58,
//                             width: MediaQuery.of(context).size.width/2.2,
//                             child: Card(
//                               color: Colors.white70,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               elevation: 1,
//                               child: Column(
//                                 children: [
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   Container(
//                                     height: 80,
//                                     width: 80,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1),
//                                         image: DecorationImage(
//                                           image: AssetImage("images/logo.png"),
//                                           fit: BoxFit.fill,
//                                         ),
//                                         shape: BoxShape.circle
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Text("Virendra Kumar",
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.normal
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   Text("₹ 35 /min",
//                                     style: TextStyle(
//                                       fontSize: 13,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Container(
//                                     height: 30,
//                                     width: 120,
//                                     decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.all(Radius.circular(6)),
//                                         border: Border.all(color: ABConstraints.themeColor,width: 1)
//                                     ),
//                                     child: MaterialButton(
//                                       onPressed: (){
//                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>CounselorProfile()));
//                                       },
//                                       child: Text("Connect",
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           color: ABConstraints.themeColor,
//                                         ),),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             )
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         height: 40,
//                         width: MediaQuery.of(context).size.width/2.1,
//                         decoration: BoxDecoration(
//                           color: ABConstraints.themeColor,
//                           // color: Colors.blue[300],
//                             borderRadius: BorderRadius.all(Radius.circular(8))
//                         ),
//                         child: MaterialButton(
//                           onPressed: () async{
//                             var prefs = await SharedPreferences.getInstance();
//                             var user_id4 =prefs.getString('user_id');
//                             setState((){
//                               print(user_id4.toString());
//                             });
//                             //Navigator.push(context, MaterialPageRoute(builder: (context)=>chat_page()));
//                           },
//                           child: Row(
//                             children: [
//                               Icon(Icons.chat_bubble_outline_outlined,color: Colors.white,size: 18,),
//                               SizedBox(
//                                 width: 2,
//                               ),
//                               Text("Chat with Counselor",
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w700,
//                                   color: Colors.white
//                                 )
//                                 ,)
//                             ],
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: 40,
//                         width: MediaQuery.of(context).size.width/2.2,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                               begin: Alignment.bottomLeft,
//                               end: Alignment.topRight,
//                               colors: [
//                             Colors.red.shade400,
//                             Color(0xffaa2516)
//                           ]),
//                           // color: Colors.red[300],
//                             borderRadius: BorderRadius.all(Radius.circular(8))
//                         ),
//                         child: MaterialButton(
//                           onPressed: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Call_page()));
//                           },
//                           child: Row(
//                             children: [
//                               Icon(Icons.call_outlined,color: Colors.white,size: 18,),
//                               SizedBox(
//                                 width: 2,
//                               ),
//                               Text("Call with Counselor",
//                                 style: TextStyle(
//                                     fontSize: 12,fontWeight: FontWeight.w700,
//                                     color: Colors.white
//                                 )
//                                 ,)
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Center(
//                         child: Text("Our Facilities",
//                           style: TextStyle(
//                             fontSize: 17,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                  SizedBox(height: 10,),
//                  Container(
//                    decoration: BoxDecoration(
//                        color: Colors.black12,
//                        borderRadius: BorderRadius.circular(10)),
//                    child: Padding(
//                      padding: const EdgeInsets.all(15.0),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          Container(
//                            height: 100,
//                            width: 100,
//                            child: Card(
//                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                              elevation: 0,
//                              child: Column(
//                                children: [
//                                  Container(
//                                    height: MediaQuery.of(context).size.height/11.5,
//                                    width: MediaQuery.of(context).size.width/5.2,
//                                    decoration: BoxDecoration(
//                                        // color: Colors.grey.shade300,
//                                        borderRadius: BorderRadius.circular(70)
//                                    ),
//                                    child: IconButton(
//                                      onPressed: (){},
//                                      icon: Icon(Icons.folder_copy_outlined,size: 45,color: Colors.green[300]),
//                                    ),
//                                  ),
//                                  SizedBox(
//                                    height: 5,
//                                  ),
//                                  Text("Experience",
//                                    style: TextStyle(
//                                        fontSize: 14,
//                                        color: Colors.black
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ),
//                          Container(
//                            height: 100,
//                            width: 100,
//                            child: Card(
//                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                              elevation: 0,
//                              child: Column(
//                                children: [
//                                  Container(
//                                    height: MediaQuery.of(context).size.height/13,
//                                    width: MediaQuery.of(context).size.width/5.2,
//                                    child: IconButton(
//                                      onPressed: (){},
//                                      icon: Icon(Icons.privacy_tip_outlined,size: 40,color: Colors.blue[300]),
//                                    ),
//                                  ),
//                                  Text("Availabale",
//                                    style: TextStyle(
//                                        fontSize: 14,
//                                        color: Colors.black
//                                      // color: ABConstraints.btn
//                                    ),
//                                  ),
//                                  Text("24X7",
//                                    style: TextStyle(
//                                        fontSize: 14,
//                                        color: Colors.black
//                                        // color: ABConstraints.btn
//                                    ),
//                                  )
//                                ],
//                              ),
//                            ),
//                          ),
//                          Container(
//                            height: 100,
//                            width: 100,
//                            child: Card(
//                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                              elevation: 0,
//                              child: Column(
//                                children: [
//                                  Container(
//                                    height: MediaQuery.of(context).size.height/13,
//                                    width: MediaQuery.of(context).size.width/5.2,
//                                    decoration: BoxDecoration(
//                                        // color: Colors.grey.shade300,
//                                        borderRadius: BorderRadius.circular(70)
//                                    ),
//                                    child: IconButton(
//                                      onPressed: (){},
//                                      icon: Icon(Icons.call,size: 40,color: ABConstraints.btn),
//                                    ),
//                                  ),
//                                  Text("Calling with",
//                                    style: TextStyle(
//                                        fontSize: 14,
//                                        color: Colors.black
//                                    ),
//                                  ),
//                                  Text("Counsellor",
//                                    style: TextStyle(
//                                        fontSize: 14,
//                                        color: Colors.black
//                                    ),
//                                  )
//                                ],
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                   SizedBox(height: 20,),
//                 ],
//               ),
//             ),
//         ),
//     );
//   }
// }
