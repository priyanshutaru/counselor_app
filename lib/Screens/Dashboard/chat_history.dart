import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ChatHistory extends StatefulWidget {
  const ChatHistory({Key? key}) : super(key: key);

  @override
  State<ChatHistory> createState() => _ChatHistoryState();
}

class _ChatHistoryState extends State<ChatHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        foregroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),),
        title: Text("Chats History",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height*0.95,
                width: MediaQuery.of(context).size.width*0.98,
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (BuildContext context, index){
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetailsCounselor()));
                        },
                        child: Card(
                          elevation: 1,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.6,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Sardar Patel",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15
                                          ),
                                        ),
                                        SizedBox(width: 120,),

                                        Text("Doctor",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13
                                          ),
                                        ),
                                        Text("Date: 12-08-2022 10:20 AM",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13
                                          ),
                                        ),
                                        Text("Duration : 20 min 30 sec",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13
                                          ),
                                        ),
                                        Text("₹ 15 / min",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 13
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      height: 80,width: 80,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.5),
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(image: AssetImage("images/back.jpg"),fit: BoxFit.fill)
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 20,bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total Chat Charge :",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14
                                      ),
                                    ),
                                    SizedBox(width: 40,),
                                    Text("₹ 307.50",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatDetailsCounselor extends StatefulWidget {
  const ChatDetailsCounselor({Key? key}) : super(key: key);

  @override
  State<ChatDetailsCounselor> createState() => _ChatDetailsCounselorState();
}

class _ChatDetailsCounselorState extends State<ChatDetailsCounselor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ABConstraints.themeColor,
        title: Text("Chat Details",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context , index){
                      return Column(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetails()));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Card(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.7,
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              style: DefaultTextStyle.of(context).style,
                                              children: const <TextSpan>[
                                                TextSpan(text: 'Chat Duration  ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54)),
                                                TextSpan(text: '12:10 PM to 01:20 PM',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700)),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("10 oct 22, 03:30 PM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text("Transaction_id-  quize_hsg454_bwg",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),)
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text(" ₹ 50.0",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500
                                            ),
                                          ),
                                          SizedBox(
                                            height: 35,
                                          ),
                                          Text("Successfull",
                                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.green),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    })
            ),
          ],
        ),
      ),
    );
  }
}


class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ABConstraints.themeColor,
        foregroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bg.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle
                  ),
                ),
                SizedBox(
                  width: 21,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sardar Patel",
                        style: TextStyle(
                            fontSize: 16,
                            color: ABConstraints.blackshade,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                      SizedBox(height: 1,),
                      Text("seen 10 min ago",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white38,
                            fontWeight: FontWeight.w700
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Container(
                height: 20,width: 80,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("Today",style: TextStyle(fontSize: 15),))),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width*0.98,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width:MediaQuery.of(context).size.width*0.6,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    )
                                ),
                                color: Colors.grey,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Text("Hii Kaise ho kya kr rhe ho",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: Text("10:10 am",style: TextStyle(color: Colors.white),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,foregroundColor: Colors.blue,
                                            radius: 10,child: Icon(Icons.check,size: 15,),),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width:MediaQuery.of(context).size.width*0.6,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        )
                                    ),
                                    color: Colors.lightGreen.shade500,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          child: Text("sb theek hai , tell me how are u ?",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),

                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
