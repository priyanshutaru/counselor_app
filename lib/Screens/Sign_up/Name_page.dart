import 'dart:convert';
import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
import 'package:counselor_app/Screens/Sign_up/Login_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
class Name_page extends StatefulWidget {
  const Name_page({Key? key}) : super(key: key);
  @override
  State<Name_page> createState() => _Name_pageState();
}
class _Name_pageState extends State<Name_page> {
  String? dob;
  late DateTime _myDateTime;
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  var _formKey = GlobalKey();
  
  Future signUpScreen() async{
    var api = Uri.parse('https://counsellor.creditmywallet.in.net/api/register');
    Map map = {
      'name':_name.text.toString(),
      'email':_email.text.toString(),
      'mobile':_mobile.text.toString(),
      'dob':_myDateTime.toString()
    };
    final response = await http.post(api, body: map,);
    String msg = '';
    var res = await json.decode(response.body);
    print("response"+ response.body);
    msg = res['status_message'].toString();
    print(msg);
    try{
      if(response.statusCode==200){
        if(msg == 'Successful');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_page(
          name:_name.text.toString(),email: _email.text.toString(),mobile: _mobile.text.toString(),
        )));
      }
    }catch(e){
      print(e);
    }
  }
  @override
  void initState() {
    // print(signUpScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[600],
        // appBar: AppBar(
        //   backgroundColor: ABConstraints.themeColor,
        //   elevation: 0.0,
        //   leading: IconButton(
        //     onPressed: (){
        //       Navigator.pop(context);
        //     },
        //     icon: Icon(Icons.arrow_back_ios,color: ABConstraints.blackshade,),
        //   ),
        //   centerTitle: true,
        //   title: Text("Your Profile",
        //     style: TextStyle(
        //       color: ABConstraints.blackshade,
        //     ),
        //   ),
        // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bg.jpg"),
                fit: BoxFit.fill
            )
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Center(child: Row(
                  children: [
                    Text("Registration Now",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: Colors.white70),),
                  ],
                )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              // SizedBox(height: MediaQuery.of(context).size.height*0.35,),
              Container(
                height: MediaQuery.of(context).size.height*0.75,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue.shade400,
                        Color(0xff0096bb),
                        Color(0xff0096bb),
                      ]),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("What is your name ?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 45,
                        width:MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: _name,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: "Enter Your Name",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff878383),
                                fontSize: 14
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("What is your email ?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 45,
                        width:MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: _email,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: "Enter Your Email",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff878383),
                                fontSize: 14
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("What is your mobile Number ?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 45,
                        width:MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: _mobile,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                            hintText: "Enter Your Mobile Number",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff878383),
                                fontSize: 14
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text("What is your dob ?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () async{
                          _myDateTime= (await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2050),
                          ))!;
                          setState(() {
                            dob=DateFormat('yyyy-MM-dd').format(_myDateTime);
                          });
                        },
                        child: Padding(
                          padding:  EdgeInsets.only(top: 3, bottom: 3),
                          child: Container(
                              height: 45,
                              width:MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  dob!=null?
                                  Text(dob.toString()):
                                  Text("Select DOB"),
                                ],
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: MaterialButton(
                          color: ABConstraints.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black54)
                          ),
                          onPressed: (){
                            signUpScreen();
                            // Navigator.push(context, MaterialPageRoute(
                            //     builder: (context)=>dashboard_page()));
                          },
                          child: Center(
                            child: Text("Submit",
                              style: TextStyle(
                                  color: ABConstraints.white,
                                  fontSize: 16
                              ),
                            ),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
