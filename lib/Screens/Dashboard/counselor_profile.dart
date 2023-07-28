import 'package:counselor_app/Screens/Constraints_color/constraints.dart';
import 'package:counselor_app/Screens/chat_folder/comment_chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class CounselorProfile extends StatefulWidget {
  const CounselorProfile({Key? key}) : super(key: key);
  @override
  State<CounselorProfile> createState() => _CounselorProfileState();
}
class _CounselorProfileState extends State<CounselorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ABConstraints.themeColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
               height: MediaQuery.of(context).size.height*0.3,
               width: MediaQuery.of(context).size.width,
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                   children: [
                     SizedBox(height: 70,),
                    Container(
                      height: 90,width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage("images/p3.png"),fit: BoxFit.fill)
                      ),
                    ),
                     SizedBox(width: 15,),
                     Padding(
                       padding: const EdgeInsets.only(top: 45),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Rahul Shrivastava",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),)
                          ,SizedBox(height: 5,),
                           Text("Proff- Motivational Speaker",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),)
                       ,SizedBox(height: 5,),
                           Text("Goldmedalist",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),)
                           ,SizedBox(height: 5,)
                           ,Text("+91-8965868525",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.white),)

                         ],
                       ),
                     )
                  ],
                 ),
               ),
             ),
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width*0.95,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("About Counselor :",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Graduate :",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Text("Indian Institute of Technology, Mumbai",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 0.5,color: Colors.black38,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Profession :",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Text("Motivational Speaker",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 0.5,color: Colors.black38,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Address :",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Container(
                                  width: MediaQuery.of(context).size.width*0.85,
                                  child: Text("Munsi Puliya indra nagar, lucknow, sector-25",style: TextStyle(fontSize: 15),)),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 0.5,color: Colors.black38,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email id :",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Container(
                                  width: MediaQuery.of(context).size.width*0.7,
                                  child: Text("textinfo@gmail.com",style: TextStyle(fontSize: 15),)),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 0.5,color: Colors.black38,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Date of Birth",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Text("18 May 1985",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 0.5,color: Colors.black38,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Gender   ",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Text("Male",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 0.5,color: Colors.black38,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("City  ",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Text("Lucknow",style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 0.5,color: Colors.black38,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("State  ",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Text("Uttar Pradesh",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 0.5,color: Colors.black38,),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nationality",style: TextStyle(fontSize: 14,color: Colors.black45),),
                              Text("Indian",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Center(
                    child: Text("Reviews",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,color: Colors.white,endIndent: 280,indent: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.96,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 2,
                color: Colors.white,
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context, builder: (BuildContext){
                      return AlertDialog(
                        content: Container(
                          height: 100,
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                child: RatingBar.builder(
                                  initialRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 40.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 1),
                                  itemBuilder: (context, _) =>
                                      Icon(Icons.star, size: 35, color: Colors.amber,),
                                  onRatingUpdate: (rating) async{
                                  },
                                ),
                              ),
                              SizedBox(height: 22,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("Rating us")),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.98,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Text("Rating Us",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                        Spacer(),
                        Container(
                          height: 30,
                          // padding: EdgeInsets.symmetric(vertical: 7),
                          child: RatingBar.builder(
                            initialRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, size: 25, color: Colors.amber,),
                            onRatingUpdate: (rating) async{
                            },
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Center(
                    child: Text("Contact Us :",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,color: Colors.white,endIndent: 250,indent: 15,
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width*0.96,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 8,top: 20,bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("images/whats1.png"))
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text("  +91-8545554285",style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                    Divider(thickness: 0.5,color: Colors.black38,),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          height: 42,width: 42,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("images/instag.png"))
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text("--instagram@485hjhs",style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    Divider(thickness: 0.5,color: Colors.black38,),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          height: 40,width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("images/face.png"),fit: BoxFit.fill)
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text("--facebook@485hjhs",style: TextStyle(fontSize: 15),)
                      ],
                    ),
                    Divider(thickness: 0.5,color: Colors.black38,),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 30,width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(image: AssetImage("images/twit.png"))
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text("--twitter@485hjhs",style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Center(
                    child: Text("Our Facilities",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,color: Colors.white,endIndent: 240,indent: 15,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/6.3,
                  width: MediaQuery.of(context).size.width/3.2,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/11.5,
                          width: MediaQuery.of(context).size.width/5.2,
                          decoration: BoxDecoration(
                            // color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(70)
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.folder_copy_outlined,size: 45,color: Colors.green[300]),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Experience",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/6.3,
                  width: MediaQuery.of(context).size.width/3.2,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/11.5,
                          width: MediaQuery.of(context).size.width/5.2,
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.privacy_tip_outlined,size: 45,color: Colors.blue[300]),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Availabale",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                            // color: ABConstraints.btn
                          ),
                        ),
                        Text("24X7",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                            // color: ABConstraints.btn
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/6.3,
                  width: MediaQuery.of(context).size.width/3.2,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 0,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/11.5,
                          width: MediaQuery.of(context).size.width/5.2,
                          decoration: BoxDecoration(
                            // color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(70)
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.call,size: 40,color: ABConstraints.btn),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Call Anytime",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: FloatingActionButton.extended(
              onPressed: () {
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    backgroundColor: ABConstraints.themeColor,
                    content: Container(
                      height: 90,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Column(
                          children: [
                            Text("Are you sure want to Call ?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
                            Divider(thickness: 1,color: Colors.white,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text("No",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))),
                                TextButton(onPressed: (){
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>comment_chat_page()));
                                }, child: Text("Yes",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white)))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
              },
              label: const Text('Call Now'),
              icon: const Icon(Icons.call),
              backgroundColor: ABConstraints.btn
            ),
          ),
          Spacer(),
          FloatingActionButton.extended(
            onPressed: () {
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  backgroundColor: ABConstraints.themeColor,
                  content: Container(
                    height: 90,
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Column(
                        children: [
                          Text("Are you sure want to Chat ?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),),
                          Divider(thickness: 1,color: Colors.white,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: Text("No",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>comment_chat_page()));
                              }, child: Text("Yes",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
            },
            label: const Text('Chat Now'),
            icon: const Icon(Icons.chat),
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
