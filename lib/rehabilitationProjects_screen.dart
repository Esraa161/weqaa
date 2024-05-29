import 'package:flutter/material.dart';
class RehabilitationProjectsScreen extends StatefulWidget {
  const RehabilitationProjectsScreen({super.key});

  @override
  State<RehabilitationProjectsScreen> createState() => _RehabilitationProjectsScreenState();
}

class _RehabilitationProjectsScreenState extends State<RehabilitationProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown.shade50,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, size: 18),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context); // This line will pop the current screen and return to the previous one
                    // Navigate to the home screen
                  },
                ),
                Image.asset("assets/images/logo2.png",
                  // height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width/2,),
                // Expanded(child:
                // Container(
                //     alignment: Alignment.center,
                //     child: Text("مشاريع تحت الانشاء",style: TextStyle(fontWeight: FontWeight.bold,
                //         fontSize: 20,color: Colors.black),))
                //
                // ),

              ],
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(right: 8,left: 8,bottom: 8,top: 5),
                  child:Container(
                    color: Colors.brown.shade50,
                    child:Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:Column(
                          children: [
                            Expanded(
                                child: ListView(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                          border: Border.all(
                                            color:Color.fromARGB(247, 58, 91, 58),
                                            width: 1.0,
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: ListTile(

                                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                                          autofocus: false,
                                          leading: CircleAvatar(
                                            backgroundColor:  Color.fromARGB(247, 58, 91, 58).withOpacity(.2),
                                            child: Icon(Icons.article,
                                              color: Color.fromARGB(247, 58, 91, 58),),
                                          ),
                                          title:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("تأهيل مركز التحكم و السيطرة بالباحة",
                                                style: TextStyle(
                                                    color: Colors
                                                        .black,
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                            ],
                                          ),
                                          // subtitle: Text('Flutter Example'),
                                          onTap: () {
                                            setState(() {


                                            });

                                            // Add your onTap functionality here
                                            print('ListTile tapped!');
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                          border: Border.all(
                                            color:Color.fromARGB(247, 58, 91, 58),
                                            width: 1.0,
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: ListTile(

                                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                                          autofocus: false,
                                          leading: CircleAvatar(
                                            backgroundColor:  Color.fromARGB(247, 58, 91, 58).withOpacity(.2),
                                            child: Icon(Icons.article,
                                              color: Color.fromARGB(247, 58, 91, 58),),
                                          ),
                                          title:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("تأهيل مركز التحكم و السيطرة بنجران",
                                                style: TextStyle(
                                                    color: Colors
                                                        .black,
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                            ],
                                          ),
                                          // subtitle: Text('Flutter Example'),
                                          onTap: () {
                                            setState(() {


                                            });

                                            // Add your onTap functionality here
                                            print('ListTile tapped!');
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                          border: Border.all(
                                            color:Color.fromARGB(247, 58, 91, 58),
                                            width: 1.0,
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: ListTile(

                                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                                          autofocus: false,
                                          leading: CircleAvatar(
                                            backgroundColor:  Color.fromARGB(247, 58, 91, 58).withOpacity(.2),
                                            child: Icon(Icons.article,
                                              color: Color.fromARGB(247, 58, 91, 58),),
                                          ),
                                          title:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("تأهيل مركز التحكم و السيطرة بعرعر",
                                                style: TextStyle(
                                                    color: Colors
                                                        .black,
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                            ],
                                          ),
                                          // subtitle: Text('Flutter Example'),
                                          onTap: () {
                                            setState(() {


                                            });

                                            // Add your onTap functionality here
                                            print('ListTile tapped!');
                                          },
                                        ),
                                      ),
                                    ),

                                  ],
                                )
                            ),

                          ],
                        )
                    ),
                  )



              ),
            ),
          ],
        ),
      ),
    );
  }
}
