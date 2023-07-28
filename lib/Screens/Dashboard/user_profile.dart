// import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
// import 'package:counselor_app/Screens/chat_folder/comment_chat_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:timer_count_down/timer_count_down.dart';
// class UserProfile extends StatefulWidget {
//   const UserProfile({Key? key}) : super(key: key);
//   @override
//   State<UserProfile> createState() => _UserProfileState();
// }
// class _UserProfileState extends State<UserProfile> {
//   TextEditingController otp = TextEditingController();
//   TextEditingController _mobileNumber = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ABConstraints.themeColor,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height*0.3,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
//                 child: Row(
//                   children: [
//                     SizedBox(height: 100,),
//                     Container(
//                       height: 120,width: 100,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           image: DecorationImage(image: AssetImage("images/p3.png"),fit: BoxFit.fill)
//                       ),
//                     ),
//                     SizedBox(width: 15,),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 40),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Rahul Shrivastava",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),)
//                           ,SizedBox(height: 5,),
//                           Text("B.Tech - Student in",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
//                           SizedBox(height: 5,),
//                           Container(
//                               width: MediaQuery.of(context).size.width*0.56,
//                               child: Text("Computer Science & Engineering",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),)),
//                           SizedBox(height: 5,),
//                           Row(
//                             children: [
//                               Text("+91-8965868525",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),),
//                               Container(
//                                 height: 30,
//                                 child: IconButton(
//                                     onPressed: (){
//                                       showDialog(
//                                         context: context,
//                                         builder: (BuildContext context) {
//                                           return Form(
//                                             // key: _formKey,
//                                             child: AlertDialog(
//                                               content: Container(
//                                                 decoration: BoxDecoration(
//                                                     color: Colors.transparent,
//                                                     borderRadius: BorderRadius.circular(10)),
//                                                 height: 100,
//                                                 child:  Column(
//                                                   children: [
//                                                     Text("Update Now",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
//                                                     Divider(thickness: 1,color: Colors.black,),
//                                                     SizedBox(height: 20,),
//                                                     Container(
//                                                       height: 40,
//                                                       child: TextFormField(
//                                                         validator: (value) {
//                                                           if (value == null || value.isEmpty) {
//                                                             return 'Please enter some text';
//                                                           }
//                                                           return null;
//                                                         },

//                                                         controller: _mobileNumber,
//                                                         keyboardType: TextInputType.number,
//                                                         decoration: InputDecoration(
//                                                             hintText: 'Enter Mobile Number',
//                                                             contentPadding: EdgeInsets.all(10),
//                                                             hintStyle: TextStyle(fontSize: 14,color: Colors.black),
//                                                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
//                                                         ),
//                                                       ),
//                                                     )
//                                                   ],
//                                                 ),
//                                               ),
//                                               actions: <Widget>[
//                                                 Center(
//                                                   child: Container(
//                                                       height:35,width: MediaQuery.of(context).size.width*0.65,
//                                                       color: Colors.transparent,
//                                                       child: RaisedButton(
//                                                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                                                         color:ABConstraints.themeColor,
//                                                         onPressed: (){
//                                                           showDialog(
//                                                             context: context,
//                                                             builder: (BuildContext context) {
//                                                               return AlertDialog(
//                                                                 content: Container(
//                                                                   height: 100,
//                                                                   color: Colors.transparent,
//                                                                   child:  Column(
//                                                                     children: [
//                                                                       Text("Otp Verify",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
//                                                                       Divider(thickness: 1,color: Colors.black,),
//                                                                       SizedBox(height: 20,),
//                                                                       Container(
//                                                                         height: 40,
//                                                                         child: TextFormField(
//                                                                           controller: otp,
//                                                                           validator: (value) {
//                                                                             if (value == null || value.isEmpty) {
//                                                                               return 'Please enter some text';
//                                                                             }
//                                                                             return null;
//                                                                           },
//                                                                           keyboardType: TextInputType.number,
//                                                                           decoration: InputDecoration(
//                                                                               hintText: 'Enter OTP',
//                                                                               contentPadding: EdgeInsets.all(10),
//                                                                               hintStyle: TextStyle(fontSize: 14,color: Colors.black),
//                                                                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
//                                                                           ),
//                                                                         ),
//                                                                       )
//                                                                     ],
//                                                                   ),
//                                                                 ),
//                                                                 actions: <Widget>[
//                                                                   Center(
//                                                                     child: Container(
//                                                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//                                                                         height:35,width: MediaQuery.of(context).size.width*0.65,
//                                                                         child: RaisedButton(
//                                                                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                                                                           color:ABConstraints.themeColor,
//                                                                           onPressed: (){
//                                                                             // Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile(name: "Infotech", email:"infotech@gmail.com", mobile: "8069785245")));
//                                                                           },child: Text("Verify",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),)),
//                                                                   ),
//                                                                   SizedBox(height: 20,),
//                                                                   Row(
//                                                                     mainAxisAlignment: MainAxisAlignment.center,
//                                                                     children: [
//                                                                       TextButton(onPressed: (){}, child:const Text('Resend Otp : ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),),
//                                                                       Countdown(
//                                                                         seconds: 20,
//                                                                         build: (BuildContext context, double time) => Text(time.toString(),style: TextStyle(color: Colors.green,fontSize: 14,fontWeight: FontWeight.bold),),
//                                                                         interval:const Duration(seconds: 1),
//                                                                         onFinished: () {
//                                                                           // print('Timer is done!');
//                                                                           Fluttertoast.showToast(msg: "Re-send OTP");
//                                                                         },
//                                                                       )

//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               );
//                                                             },
//                                                           );
//                                                         },child: Text("Update",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),)),
//                                                 ),
//                                                 SizedBox(height: 20,)
//                                               ],
//                                             ),
//                                           );
//                                         },
//                                       );
//                                     }, icon:const Icon(Icons.edit,size: 20,color: Colors.white70,)),
//                               )
//                             ],
//                           )

//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               elevation: 3,
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//               child: Container(
//                 width: MediaQuery.of(context).size.width*0.95,
//                 child: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text("My Profile :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
//                         ],
//                       ),
//                       Divider(thickness: 1,color: Colors.black,endIndent: 220,),
//                       SizedBox(height: 10,),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Email_id :",style: TextStyle(fontSize: 14,color: Colors.black45),),
//                           Container(
//                             height: 30,
//                             child: Row(
//                               children: [
//                                 Text("testinfotech@gmail.com",style: TextStyle(fontSize: 15),),
//                                 Spacer(),
//                                 IconButton(onPressed: (){
//                                   showDialog(context: context, builder:(BuildContext){
//                                     return AlertDialog(
//                                       content: Container(
//                                         height: 170,
//                                         child: Column(
//                                           children: [
//                                             Text("Update Now",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
//                                             // Divider(thickness: 1,color: Colors.black,),
//                                             SizedBox(height: 4,),
//                                             Container(
//                                               height: 40,
//                                               child: TextFormField(
//                                                 decoration: InputDecoration(
//                                                   hintText: 'Update Your Email',
//                                                   contentPadding: EdgeInsets.all(10),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(height: 50,),
//                                             Container(
//                                                 height: 40,
//                                                 decoration: BoxDecoration(
//                                                     color: ABConstraints.themeColor,
//                                                     borderRadius: BorderRadius.circular(10)),
//                                                 width: MediaQuery.of(context).size.width,
//                                                 child: MaterialButton(onPressed: (){},child: Text("Update",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w700,color: Colors.white),),))
//                                           ],
//                                         ),
//                                       ),
//                                     );
//                                   });
//                                 }, icon:Icon(Icons.edit,size: 20,color: Colors.black54,))
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Divider(thickness: 0.5,color: Colors.black38,),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Graduate :",style: TextStyle(fontSize: 14,color: Colors.black45),),
//                               Text("Indian Institute of Technology, Mumbai",style: TextStyle(fontSize: 15),),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Divider(thickness: 0.5,color: Colors.black38,),
//                       SizedBox(height: 10,),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text("Address :",style: TextStyle(fontSize: 14,color: Colors.black45),),
//                           Row(
//                             children: [
//                               Container(
//                                   width: MediaQuery.of(context).size.width*0.7,
//                                   child: Text("Munsi Puliya indra nagar, lucknow, sector-25",style: TextStyle(fontSize: 15),)),
//                               Spacer(),
//                               IconButton(onPressed: (){
//                                 showDialog(context: context, builder:(BuildContext){
//                                   return AlertDialog(
//                                     content: Container(
//                                       height: 170,
//                                       child: Column(
//                                         children: [
//                                           Text("Update Now",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
//                                           // Divider(thickness: 1,color: Colors.black,),
//                                           SizedBox(height: 4,),
//                                           Container(
//                                             height: 40,
//                                             child: TextFormField(
//                                               decoration: InputDecoration(
//                                                 hintText: 'Update Your Address',
//                                                 contentPadding: EdgeInsets.all(10),
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(height: 50,),
//                                           Container(
//                                               height: 40,
//                                               decoration: BoxDecoration(
//                                                   color: ABConstraints.themeColor,
//                                                   borderRadius: BorderRadius.circular(10)),
//                                               width: MediaQuery.of(context).size.width,
//                                               child: MaterialButton(onPressed: (){},child: Text("Update",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w700,color: Colors.white),),))
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 });
//                               }, icon:Icon(Icons.edit,size: 20,color: Colors.black54,))
//                             ],
//                           ),
//                         ],
//                       ),
//                       Divider(thickness: 0.5,color: Colors.black38,),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Date of Birth",style: TextStyle(fontSize: 14,color: Colors.black45),),
//                               Text("18 May 1985",style: TextStyle(fontSize: 15),),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Divider(thickness: 0.5,color: Colors.black38,),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Gender   ",style: TextStyle(fontSize: 14,color: Colors.black45),),
//                               Text("Male",style: TextStyle(fontSize: 15),),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Divider(thickness: 0.5,color: Colors.black38,),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("City  ",style: TextStyle(fontSize: 14,color: Colors.black45),),
//                               Text("Lucknow",style: TextStyle(fontSize: 16),),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Divider(thickness: 0.5,color: Colors.black38,),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("State  ",style: TextStyle(fontSize: 14,color: Colors.black45),),
//                               Text("Uttar Pradesh",style: TextStyle(fontSize: 15),),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Divider(thickness: 0.5,color: Colors.black38,),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Nationality",style: TextStyle(fontSize: 14,color: Colors.black45),),
//                               Text("Indian",style: TextStyle(fontSize: 15),),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.only(left: 15),
//               child: Row(
//                 children: [
//                   Center(
//                     child: Text("Description :",
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               thickness: 1,color: Colors.white,endIndent: 250,indent: 15,
//             ),
//             SizedBox(height: 10,),
//             Container(
//               width: MediaQuery.of(context).size.width*0.96,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8)
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     SizedBox(height: 10,),
//                     Row(
//                       children: [
//                         Text("Bio :",style: TextStyle(fontWeight: FontWeight.w700),),
//                       ],
//                     ),
//                    SizedBox(height: 10,),
//                    Text("My Self Rahul Srivastava, and i want to be a successfull software engineer in my future, I,m fast learning.........",
//                    style: TextStyle(fontSize: 14,color: Colors.black45,),maxLines: 100,
//                    ),
//                     IconButton(onPressed: (){
//                       showDialog(context: context, builder:(BuildContext){
//                         return AlertDialog(
//                           content: Container(
//                             height: 170,
//                             child: Column(
//                               children: [
//                                 Text("Update Now",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Colors.black),),
//                                 // Divider(thickness: 1,color: Colors.black,),
//                                 SizedBox(height: 4,),
//                                 Container(
//                                   height: 40,
//                                   child: TextFormField(
//                                     decoration: InputDecoration(
//                                       hintText: 'Update Your Descripton',
//                                       contentPadding: EdgeInsets.all(10),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 50,),
//                                 Container(
//                                     height: 40,
//                                     decoration: BoxDecoration(
//                                         color: ABConstraints.themeColor,
//                                         borderRadius: BorderRadius.circular(10)),
//                                     width: MediaQuery.of(context).size.width,
//                                     child: MaterialButton(onPressed: (){},child: Text("Update",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w700,color: Colors.white),),))
//                               ],
//                             ),
//                           ),
//                         );
//                       });
//                     }, icon:Icon(Icons.edit,size: 20,color: Colors.black54,))
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.only(left: 15),
//               child: Row(
//                 children: [
//                   Center(
//                     child: Text("Contact Us :",
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.white
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               thickness: 1,color: Colors.white,endIndent: 250,indent: 15,
//             ),
//             SizedBox(height: 10,),
//             Container(
//               width: MediaQuery.of(context).size.width*0.96,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8)
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 8,top: 20,bottom: 20),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 5),
//                       child: Row(
//                         children: [
//                           Container(
//                             height: 30,width: 30,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(image: AssetImage("images/whats1.png"))
//                             ),
//                           ),
//                           SizedBox(width: 20,),
//                           Text("+91-8545554285",style: TextStyle(fontSize: 15),)
//                         ],
//                       ),
//                     ),
//                     Divider(thickness: 0.5,color: Colors.black38,),
//                     SizedBox(height: 5,),
//                     Row(
//                       children: [
//                         Container(
//                           height: 42,width: 42,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(image: AssetImage("images/instag.png"))
//                           ),
//                         ),
//                         SizedBox(width: 20,),
//                         Text("--instagram@485hjhs",style: TextStyle(fontSize: 15),)
//                       ],
//                     ),
//                     Divider(thickness: 0.5,color: Colors.black38,),
//                     SizedBox(height: 5,),
//                     Row(
//                       children: [
//                         Container(
//                           height: 40,width: 40,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(image: AssetImage("images/face.png"),fit: BoxFit.fill)
//                           ),
//                         ),
//                         SizedBox(width: 20,),
//                         Text("--facebook@485hjhs",style: TextStyle(fontSize: 15),)
//                       ],
//                     ),
//                     Divider(thickness: 0.5,color: Colors.black38,),
//                     SizedBox(height: 5,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 5),
//                       child: Row(
//                         children: [
//                           Container(
//                             height: 30,width: 30,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5),
//                                 image: DecorationImage(image: AssetImage("images/twit.png"))
//                             ),
//                           ),
//                           SizedBox(width: 20,),
//                           Text("--twitter@485hjhs",style: TextStyle(fontSize: 15),)
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,)
//           ],
//         ),
//       ),
//     );
//   }
// }
