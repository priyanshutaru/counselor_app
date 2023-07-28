// import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
// import 'package:counselor_app/Screens/Dashboard/drawer_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// class Call_page extends StatefulWidget {
//   const Call_page({Key? key}) : super(key: key);

//   @override
//   State<Call_page> createState() => _Call_pageState();
// }

// class _Call_pageState extends State<Call_page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: drawer_page(),
//         appBar: AppBar(
//           backgroundColor: ABConstraints.themeColor,
//           title: Text("Call with Counselor",
//             style: TextStyle(
//               fontSize: 16,fontWeight: FontWeight.w700
//             ),
//           ),
//           elevation: 0.0,
//           foregroundColor:  ABConstraints.white,
//         ),
//         body: SingleChildScrollView(
//           child: SafeArea(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Container(
//                       height: 30,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         children: [
//                           Container(
//                               height: 30,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   color:ABConstraints.themeColor,
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.dashboard_customize_outlined,size: 16,color: Colors.white,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("All",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                           Container(
//                               height: 40,
//                               //width: 10,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.favorite,size: 16,color: Colors.red,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("Breakup",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                           Container(
//                               height: 35,
//                               //width: 10,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.man,size: 20,color: Colors.blue,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("Loneliness",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                           Container(
//                               height: 35,
//                               //width: 10,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.dashboard_customize_outlined,size: 16,color: Colors.black45,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("All",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                           Container(
//                               height: 35,
//                               //width: 10,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.dashboard_customize_outlined,size: 16,color: Colors.black45,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("All",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                           Container(
//                               height: 35,
//                               //width: 10,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.dashboard_customize_outlined,size: 16,color: Colors.black45,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("All",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                           Container(
//                               height: 35,
//                               //width: 10,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.dashboard_customize_outlined,size: 16,color: Colors.black45,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("All",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                           Container(
//                               height: 35,
//                               //width: 10,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.dashboard_customize_outlined,size: 16,color: Colors.black45,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("All",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                           Container(
//                               height: 35,
//                               //width: 10,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.all(Radius.circular(8)),
//                                   border: Border.all(color: ABConstraints.themeColor)
//                               ),
//                               child: Row(
//                                 children: [
//                                   Icon(Icons.dashboard_customize_outlined,size: 16,color: Colors.black45,),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("All",style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.normal
//                                   ),)
//                                 ],
//                               )
//                           ),
//                           SizedBox(
//                             width: 13,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Container(
//                       height: 40,
//                       margin: EdgeInsets.symmetric(horizontal: 0),
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
//                           border: Border.all(color: Colors.blue,width: 0.5)),
//                          child: TextFormField(
//                             decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.all(12),
//                                 border: InputBorder.none,
//                                 hintStyle: TextStyle(color: Colors.grey),
//                                 hintText: 'Search Counsellor',
//                               suffixIcon: IconButton(
//                                 onPressed: (){
//                                 },
//                                 icon: Icon(Icons.clear,size: 20,),
//                               ),
//                             ),
//                           ),

//                     ),
//                     SizedBox(
//                       height: 14,
//                     ),
//                     Container(
//                       height: MediaQuery.of(context).size.height*0.75,
//                       child: ListView.builder(
//                           itemCount: 100,
//                           itemBuilder: (BuildContext context, index){
//                         return Container(
//                           child: Card(
//                             elevation: 1,
//                             child: Row(
//                               children: [
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Container(
//                                   height: MediaQuery.of(context).size.height/6.8,
//                                   width: MediaQuery.of(context).size.width/3.5,
//                                   decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                           image: AssetImage("images/bg.jpg"),
//                                           fit: BoxFit.fill
//                                       ),
//                                       borderRadius: BorderRadius.all(Radius.circular(10))
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 18,
//                                 ),
//                                 Container(
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Container(
//                                         height: 30,
//                                         padding: EdgeInsets.symmetric(vertical: 15),
//                                         child: RatingBar.builder(
//                                           initialRating: 3.5,
//                                           direction: Axis.horizontal,
//                                           allowHalfRating: true,
//                                           itemCount: 5,
//                                           itemSize: 15.0,
//                                           itemPadding: EdgeInsets.symmetric(horizontal: 1),
//                                           itemBuilder: (context, _) =>
//                                               Icon(Icons.star, size: 50, color: Colors.amber,),
//                                           onRatingUpdate: (rating) async{
//                                           },
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 5,
//                                       ),
//                                       Text("Sardar Patel",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.normal,
//                                             fontSize: 17
//                                         ),
//                                       ),

//                                       Text("Tarot life Coach",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 12
//                                         ),
//                                       ),
//                                       Text("Hindi",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 12
//                                         ),
//                                       ),
//                                       Text("Exp 11 Year",
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 12
//                                         ),
//                                       ),
//                                       Row(
//                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text("₹ 30 / min",
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.normal,
//                                                 fontSize: 14
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: MediaQuery.of(context).size.width*0.15,
//                                           ),
//                                           Padding(
//                                             padding: const EdgeInsets.only(right: 10,bottom: 8),
//                                             child: Container(
//                                               height: 28,
//                                               width: 75,
//                                               decoration: BoxDecoration(
//                                                   color: ABConstraints.themeColor,
//                                                   borderRadius: BorderRadius.all(Radius.circular(7))
//                                               ),
//                                               child: MaterialButton(
//                                                 onPressed: (){
//                                                   showDialog(context: context, builder: (context){
//                                                     return AlertDialog(
//                                                       backgroundColor: ABConstraints.themeColor,
//                                                       content: Container(
//                                                         height: 90,
//                                                         child: Container(
//                                                           width: MediaQuery.of(context).size.width*0.9,
//                                                           child: Column(
//                                                             children: [
//                                                               Text("Are you sure want to Chat ?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
//                                                               Divider(thickness: 1,color: Colors.white,),
//                                                               Row(
//                                                                 mainAxisAlignment: MainAxisAlignment.end,
//                                                                 children: [
//                                                                   TextButton(onPressed: (){
//                                                                     Navigator.pop(context);
//                                                                   }, child: Text("No",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))),
//                                                                   TextButton(onPressed: (){
//                                                                     Navigator.pop(context);
//                                                                   }, child: Text("Yes",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white)))
//                                                                 ],
//                                                               )
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     );
//                                                   });
//                                                 },
//                                                 child: Row(
//                                                   children: [
//                                                     Icon(Icons.call_outlined,color: Colors.white,size: 16,),
//                                                     SizedBox(
//                                                       width: 2,
//                                                     ),
//                                                     Text("Call",
//                                                       style: TextStyle(
//                                                           fontSize: 12,fontWeight: FontWeight.w700,
//                                                           color: Colors.white
//                                                       )
//                                                       ,)
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         );
//                       }),
//                     ),
//                           ],
//                         ),
//                       ),
//                     ),
//         )
//     );
//   }
// }
