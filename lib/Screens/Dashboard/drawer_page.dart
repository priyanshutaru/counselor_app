// import 'dart:convert';
// import 'package:counselor_app/Screens/Dashboard/call_history.dart';
// import 'package:counselor_app/Screens/Dashboard/chat_history.dart';
// import 'package:counselor_app/Screens/Dashboard/user_profile.dart';
// import 'package:counselor_app/Screens/Sign_up/Login_page.dart';
// import 'package:http/http.dart' as http;
// import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
// import 'package:flutter/material.dart';
// class drawer_page extends StatefulWidget {
//    drawer_page({Key? key,this.user}) : super(key: key);
//   String ?user;
//   @override
//   State<drawer_page> createState() => _drawer_pageState();
// }
// class _drawer_pageState extends State<drawer_page> {
//   var getData ;
//   Future getProfile() async{
//     var api = Uri.parse("https://counsellor.creditmywallet.in.net/api/getuserprofile");
//     Map map = {
//       'user_id':"CNS4446"
//     };
//     print(map.toString()+"dfhjgjk");
//     final response = await http.post(
//       api,
//       body: map,
//     );
//     String msg='';
//     var res = await json.decode(response.body);
//     getData = res['response'];
//     print("response"+ response.body);
//     msg = res['status_message'].toString();
//     print(msg);
//     try{
//       if(response.statusCode==200){
//         if(msg =="Get Profile"){
//           setState((){
//             var name=getData['name'];
//                 print("name===>>>>>"+name.toString());
//           });
//         }
//       }
//     }catch(e){
//       print(e);
//     }
//   }
//   initState(){
//     getProfile();
//   }
//   TextEditingController userid = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         width: MediaQuery.of(context).size.width/1.4,
//         child: Container(
//           child: Column(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height*0.25,
//                 color: ABConstraints.themeColor,
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10,top: 22),
//                       child: Container(
//                         height: 100,width: 80,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(image: AssetImage("images/p3.png"),fit: BoxFit.fill),
//                           color: Colors.white38,
//                             borderRadius: BorderRadius.circular(15),
//                             border: Border.all(width: 1.5)),
//                       ),
//                      ),

//                    Container(
//                       width: MediaQuery.of(context).size.width*0.45,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(height: 50,),
//                             Text(getData['name'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 5,bottom: 5),
//                               child: Text(getData['mobile'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white),),
//                             ),
//                             Text(getData['email'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.white),),
//                             SizedBox(height: 5,),
//                             Text("B.Tech in Computer Science & Engineering",style: TextStyle(color: Colors.white),),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: 30,),
//               Container(
//                 height: 30,
//                 child: MaterialButton(onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
//                 },child: Row(
//                   children: [
//                     Container(
//                       height: 25,width: 25,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(image: AssetImage("images/profile.png"))
//                       ),
//                     ),
//                     SizedBox(width: 15,),
//                     Text("My Profile",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.w700),),
//                     Spacer(),
//                     Icon(Icons.arrow_forward_ios,size: 20,),
//                   ],
//                 ),),
//               ),
//               Divider(endIndent: 15,indent: 15,thickness: 0.5,color: Colors.black38,),
//               Container(
//                 height: 40,
//                 child: MaterialButton(onPressed: (){},child: Row(
//                   children: [
//                     Icon(Icons.headset_mic_outlined,color: Colors.red,),
//                     SizedBox(width: 10,),
//                     Text("Customer Support Chat",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.w700),),
//                     Spacer(),
//                     Icon(Icons.arrow_forward_ios,size: 20,),
//                   ],
//                 ),),
//               ),
//               Divider(endIndent: 15,indent: 15,thickness: 0.5,color: Colors.black38,),
//               Container(
//                 height: 40,
//                 child: MaterialButton(onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>WalletTracsaction()));
//                 },child: Row(
//                   children: [
//                     Icon(Icons.account_balance_wallet_outlined,color: Colors.blue,),
//                     SizedBox(width: 10,),
//                     Text("Wallet Transaction",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.w700)),
//                     Spacer(),
//                     Icon(Icons.arrow_forward_ios,size: 20,),
//                   ],
//                 ),),
//               ),
//               Divider(endIndent: 15,indent: 15,thickness: 0.5,color: Colors.black38,),
//               Container(
//                 height: 40,
//                 child: MaterialButton(onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>CallingHistory()));
//                 },child: Row(
//                   children: [
//                     Container(
//                       height: 25,width: 25,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(image: AssetImage("images/call.png"))
//                       ),
//                     ),
//                     SizedBox(width: 10,),
//                     Text("Calling History",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.w700)),
//                     Spacer(),
//                     Icon(Icons.arrow_forward_ios,size: 20,),
//                   ],
//                 ),),
//               ),
//               Divider(endIndent: 15,indent: 15,thickness: 0.5,color: Colors.black38,),
//               Container(
//                 height: 40,
//                 child: MaterialButton(onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatHistory()));
//                 },child: Row(
//                   children: [
//                     Container(
//                       height: 25,width: 25,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(image: AssetImage("images/chat.png"))
//                       ),
//                     ),
//                     SizedBox(width: 10,),
//                     Text("Chat With CounSellor",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.w700)),
//                     Spacer(),
//                     Icon(Icons.arrow_forward_ios,size: 20,),
//                   ],
//                 ),),
//               ),
//               // Container(
//               //   height: 50,
//               //   child: MaterialButton(onPressed: (){
//               //     Navigator.push(context, MaterialPageRoute(builder: (context)=>KYCPage()));
//               //   },child: Row(
//               //     children: [
//               //       Icon(Icons.security),
//               //       SizedBox(width: 10,),
//               //       Text("KYC",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
//               //       SizedBox(width: 40,),
//               //       Text("Verified",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w700),),
//               //       SizedBox(width: 5,),
//               //       Icon(Icons.check_circle_outline,color: Colors.green,)
//               //     ],
//               //   ),),
//               // ),
//               // Container(
//               //   height: 50,
//               //   child: MaterialButton(onPressed: (){
//               //     Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFav()));
//               //   },child: Row(
//               //     children: [
//               //       Icon(Icons.favorite_border),
//               //       SizedBox(width: 10,),
//               //       Text("Your Favorite",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
//               //     ],
//               //   ),),
//               // ),
//               Divider(endIndent: 15,indent: 15,thickness: 0.5,color: Colors.black38,),
//               Container(
//                 height: 50,
//                 child: MaterialButton(onPressed: (){},child: Row(
//                   children: [
//                     Icon(Icons.card_giftcard,color: Colors.purple,),
//                     SizedBox(width: 10,),
//                     Text("Refer & Earn",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.w700)),
//                     Spacer(),
//                     Icon(Icons.arrow_forward_ios,size: 20,),
//                   ],
//                 ),),
//               ),
//               Divider(endIndent: 15,indent: 15,thickness: 0.5,color: Colors.black38,),
//               Container(
//                 height: 50,
//                 child: MaterialButton(onPressed: (){
//                   showDialog(context: context, builder: (BuildContext){
//                     return AlertDialog(
//                       content: Container(
//                         height: 90,
//                         child: Column(
//                           children: [
//                             Text("Are you sure want to exit ?"),
//                             Divider(thickness: 1,),
//                             SizedBox(height: 6,),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 TextButton(onPressed: (){
//                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_page()));
//                                 }, child: Text("Yes",style: TextStyle(color: ABConstraints.btn),)),
//                                 TextButton(onPressed: (){
//                                   Navigator.pop(context);
//                                 }, child: Text("No")),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     );
//                   });
//                 },child: Row(
//                   children: [
//                     Container(
//                       height: 25,width: 25,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(image: AssetImage("images/logout.png"))
//                       ),
//                     ),
//                     SizedBox(width: 10,),
//                     Text("Log Out",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.w700)),
//                     Spacer(),
//                     Icon(Icons.arrow_forward_ios,size: 20,),
//                   ],
//                 ),),
//               ),
//               Divider(endIndent: 15,indent: 15,thickness: 0.5,color: Colors.black38,),
//             ],
//           ),
//         )
//     );
//   }
// }
// // class MyFav extends StatefulWidget {
// //   const MyFav({Key? key}) : super(key: key);
// //
// //   @override
// //   State<MyFav> createState() => _MyFavState();
// // }
// //
// // class _MyFavState extends State<MyFav> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("My Favroits",style: TextStyle(fontWeight:FontWeight.w700,fontSize: 16),),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Container(
// //           height: MediaQuery.of(context).size.height*0.88,
// //            child: GridView.builder(
// //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                 crossAxisCount: 2,
// //               ),
// //               // itemCount: 10,
// //               itemBuilder: (BuildContext context, int index) {
// //                 return Container(
// //                   child: Column(
// //                     children: <Widget>[
// //                       InkWell(
// //                         onTap: (){},
// //                         child: Container(
// //                             width: MediaQuery.of(context).size.width*0.46,
// //                             height: MediaQuery.of(context).size.height*0.25,
// //                             child: Card(
// //                               shape: RoundedRectangleBorder(
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               elevation: 1,
// //                               child: Container(
// //                                 decoration: BoxDecoration(
// //                                     borderRadius: BorderRadius.circular(10),
// //                                     image: DecorationImage(
// //                                         opacity: 0.9,
// //                                         image: AssetImage("images/p1.png"),fit: BoxFit.fill)
// //                                 ),
// //                                 child: Column(
// //                                   children: [
// //                                     Row(
// //                                       mainAxisAlignment: MainAxisAlignment.end,
// //                                       children: [
// //                                         Padding(
// //                                           padding: const EdgeInsets.all(10),
// //                                           child: CircleAvatar(radius: 18,child: Icon(Icons.call,color: Colors.white,),backgroundColor: ABConstraints.themeColor,),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                     SizedBox(height: 40,),
// //                                     Container(
// //                                       height: 20,
// //                                       width: 60,
// //                                       decoration: BoxDecoration(
// //                                         borderRadius: BorderRadius.circular(8),
// //                                         gradient: LinearGradient(
// //                                             begin: Alignment.bottomLeft,
// //                                             end: Alignment.bottomRight,
// //                                             colors: [
// //                                               Colors.blue.shade400,
// //                                               Colors.white,
// //                                               Color(0xff0096bb),
// //                                             ]),
// //                                       ),
// //                                       child: Center(
// //                                           child: Row(
// //                                             mainAxisAlignment: MainAxisAlignment.center,
// //                                             children: [
// //                                               CircleAvatar(radius: 5,backgroundColor: Colors.green,),
// //                                               SizedBox(width: 5,),
// //                                               Text("Live",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
// //                                             ],
// //                                           )),
// //                                     ),
// //                                     SizedBox(height: 10,),
// //                                     Text("Ronaldo Rathore",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),)
// //                                   ],
// //                                 ),
// //                               ),
// //                             )
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 );
// //               },
// //             ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// class WalletTracsaction extends StatefulWidget {
//   const WalletTracsaction({Key? key}) : super(key: key);
//   @override
//   State<WalletTracsaction> createState() => _WalletTracsactionState();
// }
// class _WalletTracsactionState extends State<WalletTracsaction> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: ABConstraints.themeColor,
//         foregroundColor: Colors.white,
//         title: Text("Wallet History",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height*0.88,
//           child: ListView.builder(
//               // itemCount: 10,
//               itemBuilder: (BuildContext context , index){
//             return Column(
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
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
//                           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Recharge",
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 2,
//                               ),
//                               Text("To Mr. Alex Pandyan on Chat",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
//                               SizedBox(
//                                 height: 2,
//                               ),
//                               Text("10 oct 22, 03:30 PM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
//                               SizedBox(
//                                 height: 2,
//                               ),
//                               Text("Transaction_Id - ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)
//                               ,Text("quix_bsg_1412hdg_ns",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),)
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
//                              SizedBox(height: 50,),
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
//           }),
//         ),
//       ),
//     );
//   }
// }

