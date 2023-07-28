// import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
// import 'package:flutter/material.dart';
//
// class AddMoney extends StatefulWidget {
//   const AddMoney({Key? key}) : super(key: key);
//   @override
//   State<AddMoney> createState() => _AddMoneyState();
// }
// class _AddMoneyState extends State<AddMoney> {
//   String dropdownvalue = '--Select--';
//   var items = [
//     '--Select--',
//     'Punjab National Bank',
//     'Purvanchal Bank',
//     'Allahabad Bank',
//     'ICICI Bank',
//     'Kotak Bank',
//     'State Bank of India',
//     'Axis Bank',
//     'Yas Bank',
//     'DhanLaxmi Bank',
//   ];
//   TextEditingController name = TextEditingController();
//   TextEditingController number = TextEditingController();
//   TextEditingController validdate = TextEditingController();
//   TextEditingController cvv = TextEditingController();
//   bool card = true;
//   bool iscard = false;
//   bool other = false;
//   String ?gender='card';
//   var _formkey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: ABConstraints.themeColor,
//         foregroundColor: Colors.white,
//         title: Text("Add Money",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Column(
//               children: [
//                 RadioListTile(
//                   title: Text("By Card"),
//                   value: "card",
//                   groupValue: gender,
//                   onChanged: (value){
//                     setState(() {
//                       gender = value.toString();
//                       if(value == "card"){
//                         card=true;
//                         iscard=false;
//                         other=false;
//                       }
//                     });
//                   },
//                 ),
//                 RadioListTile(
//                   title: Text("By Account"),
//                   value: "female",
//                   groupValue: gender,
//                   onChanged: (value){
//                     setState(() {
//                       gender = value.toString();
//                       if(value == "female"){
//                         card=false;
//                         other=false;
//                         iscard=true;
//                       }
//                     });
//                   },
//                 ),
//                 RadioListTile(
//                   title: Text("By Upi"),
//                   value: "other",
//                   groupValue: gender,
//                   onChanged: (value){
//                     setState(() {
//                       gender = value.toString();
//                       if(value == "other"){
//                         card=false;
//                         iscard=false;
//                         other=true;
//                       }
//                     });
//                   },
//                 )
//               ],
//             ),
//             Visibility(
//                 visible: iscard,
//                 child: Column(
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width*0.9,
//                       child: Column(
//                         children: [
//                           Center(
//                             child: Container(
//                               width: MediaQuery.of(context).size.width*0.95,
//                               child: DropdownButtonHideUnderline(
//                                 child: DropdownButton(
//                                   value: dropdownvalue,
//                                   icon: const Icon(Icons.keyboard_arrow_down),
//                                   items: items.map((String items) {
//                                     return DropdownMenuItem(
//                                       value: items,
//                                       child: Text(items,style: TextStyle(fontSize: 15,color: Colors.black54),),
//                                     );
//                                   }).toList(),
//                                   onChanged: (String? newValue) {
//                                     setState(() {
//                                       dropdownvalue = newValue!;
//                                     });
//                                   },
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Divider(thickness: 1,),
//                           SizedBox(height: 10,),
//                           Container(
//                             height: 40,
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                   ),
//                                   hintText: 'Enter Your A/c',
//                                   label: Text("A/c number",style: TextStyle(fontSize: 15,color: Colors.black54),),
//                                   contentPadding: EdgeInsets.all(10)
//                               ),
//                             ),
//                           ),
//                           Divider(thickness: 1,),
//                           SizedBox(height: 10,),
//                           Container(
//                             height: 40,
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                   ),
//                                   hintText: 'Enter your Re-A/c',
//                                   label: Text("Re-A/c number",style: TextStyle(fontSize: 15,color: Colors.black54),),
//                                   contentPadding: EdgeInsets.all(10)
//                               ),
//                             ),
//                           ),
//                           Divider(thickness: 1,),
//                           SizedBox(height: 10,),
//                           Container(
//                             height: 40,
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                   ),
//                                   hintText: 'IFSC Code',
//                                   label: Text("IFSC Code",style: TextStyle(fontSize: 15,color: Colors.black54),),
//                                   contentPadding: EdgeInsets.all(10)
//                               ),
//                             ),
//                           ),
//                           Divider(thickness: 1,),
//                           SizedBox(height: 10,),
//                           Container(
//                             height: 40,
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                   ),
//                                   hintText: 'Branch',
//                                   label: Text("Branch",style: TextStyle(fontSize: 15,color: Colors.black54),),
//                                   contentPadding: EdgeInsets.all(10)
//                               ),
//                             ),
//                           ),
//                           Divider(thickness: 1,),
//                           SizedBox(height: 10,),
//                           Container(
//                             height: 40,
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide.none,
//                                   ),
//                                   hintText: 'Account Holder Name',
//                                   label: Text("Account Holder",style: TextStyle(fontSize: 15,color: Colors.black54),),
//                                   contentPadding: EdgeInsets.all(10)
//                               ),
//                             ),
//                           ),
//                           Divider(thickness: 1,),
//                           SizedBox(height: 50,),
//                           Container(
//                             height: 40,
//                             width: MediaQuery.of(context).size.width*0.95,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: ABConstraints.themeColor
//                             ),
//                             child: MaterialButton(onPressed: (){},child: Text("Add Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),),
//                           )
//                         ],
//                       ),
//                     ),
//
//                   ],
//                 )),
//             Visibility(
//                 visible: other,
//                 child: Column(
//                   children: [
//                     SizedBox(height: 50,),
//                     Container(
//                       width: MediaQuery.of(context).size.width*0.9,
//                       child: Column(
//                         children: [
//                           TextFormField(
//                             decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide.none,
//                                 ),
//                                 hintText: '706854958@axix.ok',
//                                 label: Text("Enter your upi",style: TextStyle(fontSize: 14,color: Colors.black54),),
//                                 contentPadding: EdgeInsets.all(10)
//                             ),
//                           ),
//                           Divider(thickness: 1,),
//                           SizedBox(height: 10,),
//                           Text("OR"),
//                           SizedBox(height: 30,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               MaterialButton(
//                                 onPressed: (){},
//                                 child: Container(
//                                     height: 40,width: 70,
//                                     child: Image.asset("images/gpay.png",fit: BoxFit.fill,)),
//                               ),
//                               MaterialButton(
//                                 onPressed: (){},
//                                 child: Container(
//                                     height: 40,width: 70,
//                                     child: Image.asset("images/phonepay.png",fit: BoxFit.fill,)),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 50,),
//                     Container(
//                       height: 40,
//                       width: MediaQuery.of(context).size.width*0.95,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: ABConstraints.themeColor
//                       ),
//                       child: MaterialButton(onPressed: (){},child: Text("Add Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),),
//                     )
//                   ],
//                 )),
//             SizedBox(height: 20,),
//             Visibility(
//               visible: card,
//               child: Container(
//                 width: MediaQuery.of(context).size.width*0.9,
//                 child: Column(
//                   children: [
//                     Form(
//                       key: _formkey,
//                       child: Column(
//                         children: [
//                           Center(
//                             child: Container(
//                               height: 45,
//                               width: MediaQuery.of(context).size.width*0.9,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 // border: Border.all(width: 0.5)
//                               ),
//                               child: TextFormField(
//                                 controller: name,
//                                 validator: (val){
//                                   if(val!=null){
//                                     print("success");
//                                   }else{
//                                     print("Input name");
//                                   }
//                                 },
//                                 decoration: InputDecoration(
//                                     hintText: 'Enter Your Name.....',contentPadding: EdgeInsets.all(10),
//                                     border: OutlineInputBorder(
//                                         borderSide: BorderSide.none
//                                     )
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Divider(thickness: 1,color: Colors.black26,),
//                           SizedBox(height: 10,),
//                           Center(
//                             child: Container(
//                               height: 45,
//                               width: MediaQuery.of(context).size.width*0.9,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 // border: Border.all(width: 0.5)
//                               ),
//                               child: TextFormField(
//                                 keyboardType: TextInputType.number,
//                                 controller: number,
//                                 decoration: InputDecoration(
//                                     hintText: 'Enter Your Card Number.....',contentPadding: EdgeInsets.all(10),
//                                     border: OutlineInputBorder(
//                                         borderSide: BorderSide.none
//                                     )
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Divider(thickness: 1,color: Colors.black26,),
//                           SizedBox(height: 10,),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 10),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 SizedBox(height: 10,),
//                                 Container(
//                                   height: 45,
//                                   width: MediaQuery.of(context).size.width*0.43,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(8),
//                                     // border: Border.all(width: 0.5)
//                                   ),
//                                   child: TextFormField(
//                                     controller: validdate,
//                                     decoration: InputDecoration(
//                                         hintText: 'Valid Date',contentPadding: EdgeInsets.all(10),
//                                         // label: Text("Valid Date"),
//                                         border: OutlineInputBorder(
//                                             borderSide: BorderSide.none
//                                         )
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 45,
//                                   width: MediaQuery.of(context).size.width*0.43,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(8),
//                                     // border: Border.all(width: 0.5)
//                                   ),
//                                   child: TextFormField(
//                                     controller: cvv,
//                                     decoration: InputDecoration(
//                                         hintText: 'CVV NO.',contentPadding: EdgeInsets.all(10),
//                                         // label: Text("Valid Date"),
//                                         border: OutlineInputBorder(
//                                           borderSide: BorderSide.none,
//                                         )
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Divider(thickness: 1,color: Colors.black26,),
//                           SizedBox(height: 50,),
//                           Container(
//                             height: 45,
//                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: ABConstraints.themeColor),
//                             width: MediaQuery.of(context).size.width*0.9,
//                             child: MaterialButton(onPressed: (){
//                               Navigator.pop(context);
//                             },child: Text("Add Now",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),),),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
