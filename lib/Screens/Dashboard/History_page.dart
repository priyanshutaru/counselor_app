// import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
// import 'package:counselor_app/Screens/Dashboard/chat_history.dart';
// import 'package:counselor_app/Screens/Dashboard/drawer_page.dart';
// import 'package:counselor_app/Screens/chat_folder/comment_chat_page.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// class History_page extends StatefulWidget {
//   const History_page({Key? key}) : super(key: key);
//   @override
//   State<History_page> createState() => _History_pageState();
// }
// class _History_pageState extends State<History_page> with SingleTickerProviderStateMixin {
//   TabController? _tabController;
//   @override
//   void initState() {
//     _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _tabController?.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 0,
//         length: 3,
//         child: Scaffold(
//           drawer: drawer_page(),
//           appBar: AppBar(
//             backgroundColor: ABConstraints.themeColor,
//             title: Text("History",
//               style: TextStyle(
//                 fontSize: 16,fontWeight: FontWeight.w700
//               ),
//             ),
//             elevation: 0.0,
//             foregroundColor:  ABConstraints.white,
//           ),
//           body: SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Container(
//                     height: 30,
//                     child: TabBar(
//                         unselectedLabelColor: Colors.black,
//                         labelColor: ABConstraints.btn,
//                         indicatorColor: ABConstraints.btn,
//                         tabs: [
//                           Tab(
//                             child: Text("Wallet",style: TextStyle(fontWeight: FontWeight.w700),),
//                           ),
//                           Tab(
//                             child: Text("Chat",style: TextStyle(fontWeight: FontWeight.w700),),
//                           ),
//                           Tab(
//                             child: Text("Call",style: TextStyle(fontWeight: FontWeight.w700),),
//                           ),
//                         ]),
//                   ),
//                   Container(
//                     height:MediaQuery.of(context).size.height*0.9,
//                     child: TabBarView(
//                       children: [
//                         Wallet(),
//                         Chat(),
//                         Call(),
//                       ],
//                     ),
//                   )

//                 ],
//               ),
//             ),
//           )
//         ),
//     );
//   }
//   Widget Wallet(){
//     return DefaultTabController(
//       initialIndex: 0,
//         length: 2,
//         child: Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 border: Border.all(width: 0.5)
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Wallet History",
//                             style: TextStyle(
//                               fontSize: 16,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Text("₹ 5485",
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.bold
//                                 ),
//                               ),
//                               Spacer(),
//                               Container(
//                                 height: 34,
//                                 width: 110,
//                                 decoration: BoxDecoration(
//                                     color: ABConstraints.btn,
//                                     borderRadius: BorderRadius.all(Radius.circular(11))
//                                 ),
//                                 child: MaterialButton(
//                                   onPressed: (){},
//                                   child: Text("Recharge",
//                                     style: TextStyle(
//                                         color: Colors.white
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               height: 45,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade200,
//                 borderRadius: BorderRadius.circular(
//                   10.0,
//                 ),
//               ),
//               child: TabBar(
//                 controller: _tabController,
//                 indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(
//                     10.0,
//                   ),
//                   color: ABConstraints.themeColor,
//                 ),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.black,
//                 tabs: [
//                   Tab(
//                     text: 'Wallet Transaction',
//                   ),
//                   Tab(
//                     text: 'Payment Log',
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   ChatDet(),
//                   payment_logs(),
//                 ],
//               ),
//             ),
//           ],
//         )
//     );
//   }

//   Widget Chat(){
//     return Column(
//       children: [
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           height: 40,
//           margin: EdgeInsets.symmetric(vertical: 0),
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
//               border: Border.all(color: Colors.blue,width: 0.5)),
//           child: Row(
//             children: [
//               IconButton(
//                 onPressed: (){
//                 },
//                 icon: Icon(Icons.search,size: 20,),
//               ),
//               Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
//                         border: InputBorder.none,
//                         hintStyle: TextStyle(color: Colors.grey),
//                         hintText: 'Search Counsellor'),
//                   )),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Container(
//           child: Card(
//               elevation: 1,
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Text("# 166557",
//                           style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey
//                           ),
//                         ),
//                         Spacer(),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 15),
//                           child: Text("HELP",
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: ABConstraints.themeColor,
//                                 fontWeight: FontWeight.bold
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text("Sardar Patel",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.black,
//                                 fontWeight: FontWeight.normal
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("12 oct 2022, 05:59 PM",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Completed",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.green
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Row(
//                               children: [
//                                 Text("Chat Type: ",
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.grey
//                                   ),
//                                 ),
//                                 Text("Free Session",
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       color: ABConstraints.btn
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Rate: ₹ 0.0/min",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Duration: 2 minutes",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Deduction: ₹ 0.0",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                           ],
//                         ),
//                         Spacer(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: <Widget>[
//                             Container(
//                               height: 70,
//                               width: 70,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: AssetImage("images/bg.jpg"),
//                                   fit: BoxFit.fill
//                                 ),
//                                 shape: BoxShape.circle
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("₹ 12.0/min",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             SizedBox(
//                               height: 3,
//                             ),
//                             Text("Wait - time ~ 5m",
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   color: ABConstraints.btn
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           height: 35,
//                           width: MediaQuery.of(context).size.width*0.55,
//                           decoration: BoxDecoration(
//                               //color: ABConstraints.themeColor,
//                               borderRadius: BorderRadius.all(Radius.circular(7)),
//                             border: Border.all(color: Colors.black,width: 1)
//                           ),
//                           child: MaterialButton(
//                             onPressed: (){},
//                             child: Row(
//                               children: [
//                                 Icon(Icons.whatsapp,color: Colors.black,size: 14,),
//                                 SizedBox(
//                                   width: 2,
//                                 ),
//                                 Text("Share with your friends",
//                                   style: TextStyle(
//                                       fontSize: 12,
//                                       color: Colors.black
//                                   )
//                                   ,)
//                               ],
//                             ),
//                           ),
//                         ),
//                         Spacer(),
//                         Container(
//                           height: 35,
//                           width: 75,
//                           decoration: BoxDecoration(
//                             //color: ABConstraints.themeColor,
//                               borderRadius: BorderRadius.all(Radius.circular(7)),
//                               border: Border.all(width: 1)
//                           ),
//                           child: MaterialButton(
//                             onPressed: (){
//                               Navigator.push(context, MaterialPageRoute(
//                                   builder: (context)=>comment_chat_page()));
//                             },
//                             child: Text("Chat",
//                                 style: TextStyle(
//                                     fontSize: 12,
//                                 )
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//               )
//           ),
//         )
//       ],
//     );
//   }
//   Widget Call(){
//     return Column(
//       children: [
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           height: 40,
//           margin: EdgeInsets.symmetric(vertical: 0),
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
//               border: Border.all(color: Colors.blue,width: 0.5)),
//           child: Row(
//             children: [
//               IconButton(
//                 onPressed: (){
//                 },
//                 icon: Icon(Icons.search,size: 20,),
//               ),
//               Expanded(
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
//                         border: InputBorder.none,
//                         hintStyle: TextStyle(color: Colors.grey),
//                         hintText: 'Search Counsellor'),
//                   )),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Container(
//           child: Card(
//               elevation: 1,
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Text("# 166557",
//                           style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey
//                           ),
//                         ),
//                         Spacer(),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 15),
//                           child: Text("HELP",
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: ABConstraints.themeColor,
//                                 fontWeight: FontWeight.bold
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Text("Sardar Patel",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.normal
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("12 oct 2022, 05:59 PM",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Completed",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.green
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Row(
//                               children: [
//                                 Text("Chat Type: ",
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.grey
//                                   ),
//                                 ),
//                                 Text("Free Session",
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       color: ABConstraints.btn
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Rate: ₹ 0.0/min",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Duration: 2 minutes",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Deduction: ₹ 0.0",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                           ],
//                         ),
//                         Spacer(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: <Widget>[
//                             Container(
//                               height: 70,
//                               width: 70,
//                               decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage("images/bg.jpg"),
//                                       fit: BoxFit.fill
//                                   ),
//                                   shape: BoxShape.circle
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("₹ 12.0/min",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey
//                               ),
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             SizedBox(
//                               height: 3,
//                             ),
//                             Text("Wait - time ~ 5m",
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   color: ABConstraints.btn
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           height: 35,
//                           width: MediaQuery.of(context).size.width*0.55,
//                           decoration: BoxDecoration(
//                             //color: ABConstraints.themeColor,
//                               borderRadius: BorderRadius.all(Radius.circular(7)),
//                               border: Border.all(color: Colors.black,width: 1)
//                           ),
//                           child: MaterialButton(
//                             onPressed: (){},
//                             child: Row(
//                               children: [
//                                 Icon(Icons.whatsapp,color: Colors.black,size: 14,),
//                                 SizedBox(
//                                   width: 2,
//                                 ),
//                                 Text("Share with your friends",
//                                   style: TextStyle(
//                                       fontSize: 12,
//                                       color: Colors.black
//                                   )
//                                   ,)
//                               ],
//                             ),
//                           ),
//                         ),
//                         Spacer(),
//                         Container(
//                           height: 35,
//                           width: 75,
//                           decoration: BoxDecoration(
//                             //color: ABConstraints.themeColor,
//                               borderRadius: BorderRadius.all(Radius.circular(7)),
//                               border: Border.all(width: 1)
//                           ),
//                           child: MaterialButton(
//                             onPressed: (){
//                               Navigator.push(context, MaterialPageRoute(
//                                   builder: (context)=>comment_chat_page()));
//                             },
//                             child: Text("Call",
//                                 style: TextStyle(
//                                   fontSize: 12,
//                                 )
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//               )
//           ),
//         )
//       ],
//     );
//   }

//   Widget payment_logs(){
//     return  Container(
//       width: MediaQuery.of(context).size.width,
//       child: ListView.builder(itemBuilder: (BuildContext context , index){
//         return Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             InkWell(
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetailsCounselor()));
//               },
//               child: Container(
//                 height: 90,
//                 width: MediaQuery.of(context).size.width,
//                 child: Card(
//                   elevation: 1,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             RichText(
//                               text: TextSpan(
//                                 style: DefaultTextStyle.of(context).style,
//                                 children: const <TextSpan>[
//                                   TextSpan(text: 'Chat to  ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54)),
//                                   TextSpan(text: 'Mr.Raghvan Das',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700)),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("10 oct 22, 03:30 PM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("#23453211234478999",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),)
//                           ],
//                         ),
//                       ),
//                       Spacer(),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Text("+ ₹ 50.0",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500
//                               ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("GST 9.0",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text("Successfull",
//                               style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.green),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         );
//       })
//     );
//   }
//   Widget ChatDet(){
//     return   Container(
//       width: MediaQuery.of(context).size.width*0.98,
//       height: MediaQuery.of(context).size.height*0.98,
//       child: ListView.builder(
//           // itemCount: 3,
//           itemBuilder: (BuildContext context, index){
//             return InkWell(
//               onTap: (){
//                 payment_logs();
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetailsCounselor()));
//               },
//               child: Card(
//                 elevation: 1,
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Container(
//                           width: MediaQuery.of(context).size.width*0.6,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text("Sardar Patel",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.w700,
//                                     fontSize: 15
//                                 ),
//                               ),
//                               SizedBox(width: 120,),
//                               Text("Motivational Speaker",
//                                 style: TextStyle(
//                                     color: Colors.black54,
//                                     fontSize: 13
//                                 ),
//                               ),
//                               Text("Date: 12-08-2022 10:20 AM",
//                                 style: TextStyle(
//                                     color: Colors.black54,
//                                     fontSize: 13
//                                 ),
//                               ),
//                               Text("Duration : 20 min 30 sec",
//                                 style: TextStyle(
//                                     color: Colors.black54,
//                                     fontSize: 13
//                                 ),
//                               ),
//                               Text("₹ 15 / min",
//                                 style: TextStyle(
//                                     color: Colors.black54,
//                                     fontWeight: FontWeight.normal,
//                                     fontSize: 13
//                                 ),
//                               ),
//                               SizedBox(height: 10,),
//                             ],
//                           ),
//                         ),
//                         Spacer(),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 15),
//                           child: Container(
//                             height: 80,width: 80,
//                             decoration: BoxDecoration(
//                                 border: Border.all(width: 0.5),
//                                 borderRadius: BorderRadius.circular(10),
//                                 image: DecorationImage(image: AssetImage("images/back.jpg"),fit: BoxFit.fill)
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15,right: 20,bottom: 10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Total Chat Charge :",
//                             style: TextStyle(
//                                 color: Colors.green,
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14
//                             ),
//                           ),
//                           SizedBox(width: 40,),
//                           Text("₹ 307.50",
//                             style: TextStyle(
//                                 color: Colors.green,
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
// class ChatDetailsCounselor extends StatefulWidget {
//   const ChatDetailsCounselor({Key? key}) : super(key: key);

//   @override
//   State<ChatDetailsCounselor> createState() => _ChatDetailsCounselorState();
// }

// class _ChatDetailsCounselorState extends State<ChatDetailsCounselor> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: ABConstraints.themeColor,
//         title: Text("Chat Details",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//         Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//           child: ListView.builder(
//               itemCount: 4,
//               itemBuilder: (BuildContext context , index){
//             return Column(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   child: Card(
//                     elevation: 1,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: Row(
//                       children: [
//                         Container(
//                           width: MediaQuery.of(context).size.width*0.7,
//                           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               RichText(
//                                 text: TextSpan(
//                                   style: DefaultTextStyle.of(context).style,
//                                   children: const <TextSpan>[
//                                     TextSpan(text: 'Chat Duration  ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54)),
//                                     TextSpan(text: '12:10 PM to 01:20 PM',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700)),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2,
//                               ),
//                               Text("10 oct 22, 03:30 PM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
//                               SizedBox(
//                                 height: 2,
//                               ),
//                               Text("Transaction_id-  quize_hsg454_bwg",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)
//                             ],
//                           ),
//                         ),
//                         Spacer(),
//                         Container(
//                           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.end,
//                             children: [
//                               Text(" ₹ 50.0",
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 35,
//                               ),
//                               Text("Successfull",
//                                 style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.green),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             );
//           })
//       ),
//           ],
//         ),
//       ),
//     );
//   }
// }
