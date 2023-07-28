// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
// import 'package:counselor_app/Screens/Sign_up/OTP_page.dart';
// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:flutter/material.dart';
// import 'Name_page.dart';
// class Login_page extends StatefulWidget {
//    Login_page({Key? key,  this.name,  this.email,this.mobile}) : super(key: key);
//    String ?name;
//    String ?email;
//    String ?mobile;
//   @override
//   State<Login_page> createState() => _Login_pageState();
// }
// class _Login_pageState extends State<Login_page> {
//   @override
//   String? phoneNumber;
//   TextEditingController _mobileNumber = TextEditingController();
//   var _formKey = GlobalKey();
//   Future Login() async {
//       var api = Uri.parse("https://counsellor.creditmywallet.in.net/api/login");
//       Map mapeddate = {
//         "mobile":_mobileNumber.text.toString(),
//       };
//       final response = await http.post(
//         api,
//         body: mapeddate,
//       );
//       String msg='';
//       var res = await json.decode(response.body);
//       print("response"+ response.body);
//       msg = res['status_message'].toString();
//       print(msg);
//       try {
//         if (response.statusCode == 200) {
//           if (msg == 'OTP Sent Successfully') {
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP_page(
//               mobile: _mobileNumber.text.toString(), email: '${widget.email.toString()}', name:'${widget.name.toString()}',
//             )));
//           }
//         }
//       } catch (e) {
//         print(e);
//       }
//     }
//   void _onCountryChange(CountryCode countryCode) {
//     phoneNumber =  countryCode.toString();
//     print("New Country selected: " + countryCode.toString());
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 70,
//               ),
//               Center(
//                 child: Container(
//                   height: MediaQuery.of(context).size.height*0.3,
//                   width: MediaQuery.of(context).size.width*0.45,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage("images/councellor.jpeg",),fit: BoxFit.fill
//                       )
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Container(
//                   height: MediaQuery.of(context).size.height*0.53,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           begin: Alignment.bottomLeft,
//                           end: Alignment.bottomRight,
//                           colors: [
//                             Colors.blue.shade400,
//                             Color(0xff0096bb),
//                             Color(0xff0096bb),
//                           ]),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30),
//                     )
//                   ),
//                   child:Container(
//                     padding: EdgeInsets.symmetric(horizontal: 13),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Center(
//                           child: Text("Login/SignUP",
//                             style: TextStyle(
//                                 color: ABConstraints.blackshade,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         Form(
//                           key: _formKey,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color: Colors.white,
//                             ),
//                             height: 50,
//                             width:MediaQuery.of(context).size.width,
//                             child: TextFormField(
//                               controller:_mobileNumber,
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                 contentPadding: EdgeInsets.all(15.0),
//                                 border: InputBorder.none,
//                                 hintText: "Mobile Number",
//                                 hintStyle: TextStyle(
//                                     fontWeight: FontWeight.w400,
//                                     color: Color(0xff878383),
//                                     fontSize: 14
//                                 ),
//                                 prefixIcon: CountryCodePicker(
//                                   onChanged: _onCountryChange,
//                                   initialSelection: 'IN',
//                                   favorite: ['+91', 'INDIA'],
//                                   showCountryOnly: false,
//                                   showOnlyCountryWhenClosed: false,
//                                   alignLeft: false,
//                                   padding: EdgeInsets.all(10),
//                                 ), // pass the hint text parameter here
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: 50,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.all(Radius.circular(10))
//                           ),
//                           child: MaterialButton(
//                               color: ABConstraints.black,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                               ),
//                               onPressed: (){
//                                 Login();
//                               },
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     width: MediaQuery.of(context).size.width/3,
//                                   ),
//                                   Center(
//                                     child: Text("Send OTP",
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w700,
//                                           color: ABConstraints.white,
//                                           fontSize: 16
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               )
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text("By Signing up, you agree to our ",
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   color: ABConstraints.blackshade
//                               ),
//                             ),
//                             Text("Terms of use ",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: ABConstraints.red,
//                                   fontWeight: FontWeight.w700
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text("and ",
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   color: ABConstraints.blackshade
//                               ),
//                             ),
//                             SizedBox(width: 5,),
//                             Text("Privacy Policy",
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   color: ABConstraints.red,
//                                   fontWeight: FontWeight.w700
//                               ),
//                             )
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Text("Or",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),),
//                         SizedBox(height: 20,),
//                         Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: 50,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.all(Radius.circular(10))
//                           ),
//                           child: MaterialButton(
//                               color: Colors.black12,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               onPressed: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Name_page()));
//                               },
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     width: MediaQuery.of(context).size.width/3,
//                                   ),
//                                   Center(
//                                     child: Text("Registration",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w700,
//                                           color: ABConstraints.white,
//                                           fontSize: 16
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               )
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//               )
//             ],
//           ),
//         )
//     );
//   }
// }
