//@dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/functions.dart';
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:repose_app(),
));
class repose_app extends StatefulWidget {
  @override
  _repose_appState createState() => _repose_appState();
}

class _repose_appState extends State<repose_app> {
  var e1=false,e2=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar:AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Container(
                height:40,
                child: Image.asset('assets/netrin.jpg'),
              ),
              Text('NETRIN',style:TextStyle(color: Colors.black54,fontSize: 25) ,),
            ],
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
              ),
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/');
              }, child: Text('Home',style: TextStyle(fontSize: 20,color: Colors.black87),),),
            SizedBox(width: 10,),
            TextButton(
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
              ),
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/science');
              }, child: Text('Science',style: TextStyle(fontSize: 20,color: Colors.black87),),),
            SizedBox(width: 10,),
            TextButton(
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
              ),
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/contact');
              }, child: Text('Contact',style: TextStyle(fontSize: 20,color: Colors.black87),),),
            SizedBox(width: 10,),
          ],
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 8,top: 20),
                                child: Text('THE APP',
                                  style: TextStyle(fontSize: 25,),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Repose',
                                  style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20,top:20),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/10,
                                  child: Divider(
                                    color: Colors.green,
                                    thickness: 3,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,bottom: 50,right: 180),
                                child: Text('Repose mobile app seamlessly connects data from Synapse to '
                                    'Netrin’s AI. Repose mobile app is the interface to take assessments,'
                                    ' track your lifestyle activities, and view actionable insights.'
                                    ' The web app allows you to track the trends and '
                                    'cumulative insights over a period.',
                                  style: TextStyle(fontSize: 28),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom:30,left: 8,top:10),
                                child: Text('Download Now!',
                                  style: TextStyle(fontSize: 35),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,bottom: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Row(
                                children: [
                                  Expanded(child: Image.asset('assets/google_play.jpg')),
                                  Expanded(child: Image.asset('assets/app_store.jpg')),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        height: 750,
                        child: Image.asset('assets/repose_app.jpg')),
                  ),
                ],
              ),
              Row(
                children: [
                  if(e1==true)
                    Expanded(
                      child: MouseRegion(
                        onEnter: (e){
                          setState(() {
                            e1=true;
                          });
                        },
                        onExit: (e) {
                          setState(() {
                            e1=false;
                          });
                        },
                        child: Container(
                            height: 550,
                            decoration: BoxDecoration(
                                image:DecorationImage(
                                  image: AssetImage('assets/jl.jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child:
                            Center(
                              child: Text('Journal Logging',
                                style: TextStyle(fontSize: 20,color: Colors.white),),
                            )
                        ),
                      ),
                    )
                  else
                    Expanded(
                      child: MouseRegion(
                        onEnter: (e){
                          setState(() {
                            e1=true;
                          });
                        },
                        onExit: (e) {
                          setState(() {
                            e1=false;
                          });
                        },
                        child: Container(
                            height: 550,
                            color: Colors.black,
                            child:
                            Center(
                              child: Text('Journal Logging',
                                style: TextStyle(fontSize: 20,color: Colors.white),),
                            )
                        ),
                      ),
                    ),

                  Expanded(
                    child: Container(
                        height: 550,
                        decoration: BoxDecoration(
                            image:DecorationImage(
                              image: AssetImage('assets/live_ecg.jpg'),
                              fit: BoxFit.cover,
                            )
                        ),
                        child:
                        Center(
                          child: Text('Live ECG',
                            style: TextStyle(fontSize: 20,color: Colors.white),),
                        )
                    ),
                  ),

                  if(e2==true)
                    Expanded(
                      child: MouseRegion(
                        onEnter: (e){
                          setState(() {
                            e2=true;
                          });
                        },
                        onExit: (e) {
                          setState(() {
                            e2=false;
                          });
                        },
                        child: Container(
                          height: 550,
                          decoration: BoxDecoration(
                              image:DecorationImage(
                                image: AssetImage('assets/ci.jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          child:
                          Center(
                            child: Text('Cumulative Insights',
                              style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                        ),
                      ),
                    )
                  else
                    Expanded(
                      child: MouseRegion(
                        onEnter: (e){
                          setState(() {
                            e2=true;
                          });
                        },
                        onExit: (e) {
                          setState(() {
                            e2=false;
                          });
                        },
                        child: Container(
                          height: 550,
                          color: Colors.black,
                          child:
                          Center(
                            child: Text('Cumulative Insights',
                              style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                        ),
                      ),
                    )
                ],
              ),
              Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex:3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                height: 50,
                                child: Image(
                                  image:AssetImage('assets/i.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Netrin Sports Technologies Pvt. Ltd.',
                              style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 18,top: 18),
                              child: Text(
                                'IIT Madras Research Park, Taramani, Chennai contact@netrin.tech',
                                style: TextStyle(fontSize: 18,color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: () { Navigator.pushReplacementNamed(context, '/'); },
                              child: Text('Home',
                                style: TextStyle(fontSize: 15,color: Colors.white),
                              ),
                            ),
                            Text('Carrers',style: TextStyle(fontSize: 15,color: Colors.white),),
                            SizedBox(height: 10,),
                            Text('Blog',style: TextStyle(fontSize: 15,color: Colors.white),),
                            SizedBox(height: 10,),
                            Text('News & Events',style: TextStyle(fontSize: 15,color: Colors.white),)
                          ],
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child: Column(
                          children: [
                            TextButton(
                                onPressed: () { Navigator.pushReplacementNamed(context, '/synapse'); },
                                child: Text('Synapse Sensor', style: TextStyle(fontSize: 15,color: Colors.white),)),
                            TextButton(
                                onPressed: () { Navigator.pushReplacementNamed(context, '/repose'); },
                                child: Text('Repose App',style: TextStyle(fontSize: 15,color: Colors.white),)),
                            TextButton(
                                onPressed: () { Navigator.pushReplacementNamed(context, '/insights',); },
                                child: Text('Insights',style: TextStyle(fontSize: 15,color: Colors.white),)),

                            TextButton(
                                onPressed: () { Navigator.pushReplacementNamed(context, '/contact'); },
                                child: Text('Contact Us',style: TextStyle(fontSize: 15,color: Colors.white),))
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text('Privacy Policy', style: TextStyle(fontSize: 15,color: Colors.white),),
                            SizedBox(height: 10,),
                            Text('Return Policy',style: TextStyle(fontSize: 15,color: Colors.white),),
                            SizedBox(height: 10,),
                            Text('Terms of Services',style: TextStyle(fontSize: 15,color: Colors.white),),
                            SizedBox(height: 10,),
                            Text('User Manual',style: TextStyle(fontSize: 15,color: Colors.white),),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Follow Us',style: TextStyle(fontSize: 15,color: Colors.white),),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Row(
                                children: [
                                  IconButton(icon:Icon(FontAwesomeIcons.twitter,color: Colors.white,),
                                    onPressed: ()
                                    {
                                      launch_twitter();
                                    },),
                                  IconButton(icon:Icon(FontAwesomeIcons.instagram,color: Colors.white),
                                      onPressed: ()
                                      {
                                        launch_instagram();
                                      }
                                  ),
                                  IconButton(icon: Icon(FontAwesomeIcons.linkedin,color: Colors.white),
                                    onPressed: () {
                                      launch_linkedin();
                                    },),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey,
                    ),
                    Text(
                      '\u00a9 Netrin Sports Technologies Pvt. Ltd',
                      textAlign:TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
