
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:weqaa/rehabilitationProjects_screen.dart';
import 'package:weqaa/underConstruction_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  String ?_userName;
  String ?_email;
  String?_image;

  final _advancedDrawerController = AdvancedDrawerController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


      backgroundColor:Color.fromARGB(247, 58, 91, 58),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: double.infinity,
          color: Colors.brown.shade50,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CircleAvatar(
                      //   backgroundColor: ColorManager.white,
                      //   radius: 35,
                      //
                      //   backgroundImage:AssetImage('assas/profile image.jpg') ,
                      //
                      // ),
                      Container(

                        padding: EdgeInsets.all(5),

                        child: Image.asset("assets/images/logo2.png",
                        height: MediaQuery.of(context).size.height/7,
                          width: MediaQuery.of(context).size.width/1.2,),
                      ),
                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CircleAvatar(
                      //   backgroundColor: ColorManager.white,
                      //   radius: 35,
                      //
                      //   backgroundImage:AssetImage('assas/profile image.jpg') ,
                      //
                      // ),
                      Container(

                        padding: EdgeInsets.all(5),

                        child: Image.asset("assets/images/logo3.png",
                          height: MediaQuery.of(context).size.height/10,
                          width: MediaQuery.of(context).size.width/1.2,),
                      ),
                    ],

                  ),
                  SizedBox(height: 100,),
                  Column(

                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  UnderConstructionScreen()),
                          );
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width/1.5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(247, 7, 31, 7),
                                Color.fromARGB(247, 58, 91, 58),
                                Color.fromARGB(247, 7, 31, 7),


                              ],),
                            color:Colors.green.shade800 ,
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Text(
                            "مشاريع تحت الانشاء",
                            style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  RehabilitationProjectsScreen()),
                          );
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width/1.5,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(247, 7, 31, 7),
                                Color.fromARGB(247, 58, 91, 58),
                                Color.fromARGB(247, 7, 31, 7),


                              ],),
                            color:Colors.green.shade800 ,
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: const Offset(
                                  2.0,
                                  2.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Text(
                            "مشاريع تأهيل",
                            style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 50,),




                ],
              ),
            ),
          ),
        ),
      ),

            )
    );

  }
  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
