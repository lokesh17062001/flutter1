// @dart=2.9
import 'package:flutter/gestures.dart';
import 'package:project/contact.dart';
import 'package:project/insights.dart';
import 'package:project/repose.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project/synapse.dart';
import 'package:project/functions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/science.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/':(context)=>Home(),
    '/science':(context)=>Science(),
    '/contact':(context)=>Contact(),
    '/synapse':(context)=>Synapsef(),
    '/repose':(context)=>repose_app(),
    '/insights':(context)=>Insight(),
  },
));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var h1=false,h2=false,h3=false;
  var h11=false,h12=false,h13=false;
  var h21=false,h22=false,h23=false;
  var h31=false;
  String str = '';
  @override
  Widget build(BuildContext context) {
    var scrsize=MediaQuery.of(context).size;
    return Scaffold(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:700,
              width: scrsize.width,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:AssetImage('assets/title.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 28.0,right: 8,left: 28,top: 30),
                        child: Container(
                          child: Text(
                            'Repose Platform',
                            style:TextStyle(fontSize: 60,color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: scrsize.width/10,
                        child: Divider(
                          color: Colors.lightGreenAccent,
                          thickness: 4,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Text(
                            'Not just any other Heart-rate Monitor',
                            style:TextStyle(fontSize: 30,color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28,bottom:80,right:500,top:20),
                        child: Container(
                          child: Text(
                            'Bringing together the measurement, analysis, and actionable insights on stress, sleep, activity and recovery for better wellness management, under one banner.',
                            style:TextStyle(fontSize: 22,color: Colors.white,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 82,left: 28),
                        child: FloatingActionButton.extended(onPressed: () {
                          Navigator.pushReplacementNamed(context, '/contact');
                        },
                          backgroundColor:Colors.lightGreen,
                          label: Text('Request Try Out',style: TextStyle(color: Colors.black),),
                        ),
                      ),
                      Container(
                        height: 300,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.black87,
                                child: MouseRegion(
                                  onEnter: (e){
                                    setState(() {
                                      h1=true;
                                    });
                                  },
                                  onExit: (e){
                                    setState(() {
                                      h1=false;
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      if(h1==false)
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('SYNAPSE DEVICE',
                                                style: TextStyle(fontSize: 30,color: Colors.white),),
                                              Text('Data you can count on',
                                                style:TextStyle(fontSize: 25,color: Colors.white),),
                                              Text('Read more....',style: TextStyle(color: Colors.green,fontSize: 25),),
                                            ],
                                          ),
                                        )
                                      else
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('SYNAPSE DEVICE',
                                                style: TextStyle(fontSize: 30,color: Colors.white,),),
                                              Text('Data you can count on',
                                                style: TextStyle(fontSize: 25,color: Colors.white),),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 8.0),
                                                child: Text('A chest worn wearable that measures ECG data '
                                                    'and body motion metrics to provide highly '
                                                    'accurate, precise, and reliable data for in depth analytics.',
                                                  style: TextStyle(fontSize: 20,color: Colors.white),),
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacementNamed(context, '/synapse');
                                                  },
                                                  child: Text('Read more....',style: TextStyle(color: Colors.green,fontSize: 25),)
                                              ),
                                            ],
                                          ),
                                        ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                color: Colors.black54,
                                child: MouseRegion(
                                  onEnter: (e){
                                    setState(() {
                                      h2=true;
                                    });
                                  },
                                  onExit: (e){
                                    setState(() {
                                      h2=false;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        if(h2==false)
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('MOBILE & WEB APPS',
                                                style: TextStyle(fontSize: 30,color: Colors.white),),
                                              Text('Quantify your wellness',
                                                style:TextStyle(fontSize: 25,color: Colors.white),),
                                              Text('Read more....',style: TextStyle(color: Colors.green,fontSize: 25),),
                                            ],
                                          )
                                        else
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('MOBILE & WEB APPS',
                                                style: TextStyle(fontSize: 30,color: Colors.white),),
                                              Text('Quantify your wellness',
                                                style: TextStyle(fontSize: 25,color: Colors.white),),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 8.0),
                                                child: Text('Assess yourself through the Repose'
                                                    ' mobile app for 24 hours and know '
                                                    'yourself better by mapping your daily'
                                                    ' activities to your stress, sleep, '
                                                    'activity, and recovery intensities.',
                                                  style: TextStyle(fontSize: 20,color: Colors.white),),
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacementNamed(context, '/repose');
                                                  },
                                                  child: Text('Read more....',style: TextStyle(color: Colors.green,fontSize: 25),)
                                              ),
                                            ],
                                          ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                color: Colors.black87,
                                child: MouseRegion(
                                  onEnter: (e){
                                    setState(() {
                                      h3=true;
                                    });
                                  },
                                  onExit: (e){
                                    setState(() {
                                      h3=false;
                                    });
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      if(h3==false)
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('INSIGHTS',
                                                style: TextStyle(fontSize: 30,color: Colors.white),),
                                              Text('One-size-doesn’t-always-fit-all',
                                                style:TextStyle(fontSize: 25,color: Colors.white),),
                                              Text('Read more....',style: TextStyle(color: Colors.green,fontSize: 25),),
                                            ],
                                          ),
                                        )
                                      else
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('INSIGHTS',
                                                style: TextStyle(fontSize: 30,color: Colors.white),),
                                              Text('One-size-doesn’t-always-fit-all',
                                                style: TextStyle(fontSize: 25,color: Colors.white),),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 8.0),
                                                child: Text('Personalised actionable insights'
                                                    ' on your stress, activity, sleep and '
                                                    'recovery to the very detail of even 1'
                                                    ' minute, that can be monitored on our'
                                                    ' mobile and web applications.',
                                                  style: TextStyle(fontSize: 20,color: Colors.white),),
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pushReplacementNamed(context, '/insights');
                                                  },
                                                  child: Text('Read more....',style: TextStyle(color: Colors.green,fontSize: 25),)
                                              ),
                                            ],
                                          ),
                                        ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Why ',style: TextStyle(fontSize: 50)),
                          TextSpan(text: 'Repose',style: TextStyle(fontSize: 50,color: Colors.lightGreenAccent)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: scrsize.width/10,
                    child: Divider(
                      thickness: 3,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('With every extra effort put in, every extra ounce '
                        'exhausted, every extra minute spent churning, we aspire for a better tomorrow.',
                      style: TextStyle(fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Amid these tasks of ‘extras’, we often fail to think of '
                        'our well-being, drawing in more stress, worry and anxiety. '
                        'On this trek to triumph, every minute of stress matters, '
                        'every measure of recovery counts and every moment of sleep restores you.',
                      style: TextStyle(fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Repose chooses to support you with an ‘extra’ care in this '
                        'journey, to steer you away from burnouts and flickers. '
                        'Repose not only tracks your steps in life, but your way of '
                        'life to be a companion for every achiever.',
                      style: TextStyle(fontSize: 25),),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 600,
                    decoration: BoxDecoration(
                      image:DecorationImage(
                        image:AssetImage('assets/22.png'),
                        fit:BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(text:'Experience ',style: TextStyle(fontSize: 50,color: Colors.white)),
                            TextSpan(text:'Repose',style: TextStyle(color: Colors.lightGreenAccent,fontSize: 50))
                          ],
                        ),
                        ),
                        Container(
                          width: scrsize.width/10,
                          child: Divider(
                            color: Colors.lightGreen,
                            thickness: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    height: 600,
                    child: Column(
                      children: [
                        Expanded(
                          child: MouseRegion(
                            onEnter: (e){
                              setState(() {
                                h21=true;
                              });
                            },
                            onExit: (e){
                              setState(() {
                                h21=false;
                              });
                            },
                            child: Column(
                              children: [
                                if(h21==false)
                                  Column(
                                    children: [
                                      Text('ASSESS',style: TextStyle(fontSize: 25,color: Colors.lightGreenAccent),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text('Strap your Synapse and start the 24 hrs '
                                            'assessment through the Repose mobile app.'
                                            ' Keep a log of your activities on the app'
                                            ' to map your mental stress, physical '
                                            'activity, sleep, and recovery intensities.',
                                          style: TextStyle(fontSize: 20,color: Colors.grey), ),
                                      ),
                                    ],
                                  )
                                else
                                  Column(
                                    children: [
                                      Text('ASSESS',style: TextStyle(fontSize: 25,color: Colors.lightGreenAccent),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text('Strap your Synapse and start the 24 hrs '
                                            'assessment through the Repose mobile app.'
                                            ' Keep a log of your activities on the app'
                                            ' to map your mental stress, physical '
                                            'activity, sleep, and recovery intensities.',
                                          style: TextStyle(fontSize: 20,color: Colors.white), ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),

                        if(h22==true )
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Icon(Icons.check_circle_rounded,color: Colors.lightGreenAccent,),
                          )
                        else if(h23==true )
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Icon(Icons.check_circle_rounded,color: Colors.lightGreenAccent,),
                          )
                        else
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Icon(Icons.timelapse,color: Colors.lightGreenAccent,),
                          ),
                        Expanded(
                          child: MouseRegion(
                            onEnter: (e){
                              setState(() {
                                h22=true;
                              });
                            },
                            onExit: (e){
                              setState(() {
                                h22=false;
                              });
                            },
                            child: Column(
                              children: [
                                if(h22==false)
                                  Column(
                                    children: [
                                      Text('ACT',style: TextStyle(fontSize: 25,color: Colors.lightGreenAccent),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text('Actionable personalised insights received'
                                            ' on your mobile app will help receive an'
                                            ' unprecedented perspective of your health.'
                                            ' Understand your physiology and act upon'
                                            ' it with science backed confidence.',
                                          style: TextStyle(fontSize: 20,color: Colors.grey),),
                                      ),
                                    ],
                                  )
                                else
                                  Column(
                                    children: [
                                      Text('ACT',style: TextStyle(fontSize: 25,color: Colors.lightGreenAccent),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text('Actionable personalised insights received'
                                            ' on your mobile app will help receive an'
                                            ' unprecedented perspective of your health.'
                                            ' Understand your physiology and act upon'
                                            ' it with science backed confidence.',
                                          style: TextStyle(fontSize: 20,color: Colors.white),),
                                      ),
                                    ],
                                  ),

                              ],
                            ),
                          ),
                        ),
                        if(h23==false)
                          Icon(Icons.timelapse,color: Colors.lightGreenAccent)
                        else
                          Icon(Icons.check_circle_rounded,color: Colors.lightGreenAccent),

                        Expanded(
                          child: MouseRegion(
                            onEnter: (e){
                              setState(() {
                                h23=true;
                              });
                            },
                            onExit: (e){
                              setState(() {
                                h23=false;
                              });
                            },
                            child: Column(
                              children: [
                                if(h23==false)
                                  Column(
                                    children: [
                                      Text('ACHIEVE',style: TextStyle(fontSize: 25,color: Colors.lightGreenAccent),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text('Track and monitor your wellness parameters'
                                            ' on our web app as you stride towards your'
                                            ' goals. Experiment by validating your '
                                            'training interventions or lifestyle changes'
                                            ' and achieve progress in your performance.',
                                          style: TextStyle(fontSize: 20,color: Colors.grey),),
                                      ),
                                    ],
                                  )
                                else
                                  Column(
                                    children: [
                                      Text('ACHIEVE',style: TextStyle(fontSize: 25,color: Colors.lightGreenAccent),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text('Track and monitor your wellness parameters'
                                            ' on our web app as you stride towards your'
                                            ' goals. Experiment by validating your '
                                            'training interventions or lifestyle changes'
                                            ' and achieve progress in your performance.',
                                          style: TextStyle(fontSize: 20,color: Colors.white),),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Science',style: TextStyle(fontSize: 50),),
                  Container(
                    width: scrsize.width/10,
                    child: Divider(
                      thickness: 3,
                      color: Colors.lightGreen,
                    ),
                  ),
                  Image(image: AssetImage('assets./33.jpg'),),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8,top: 8),
                    child: Text('We are not here to build just a fitness tracker,'
                        ' we strive to deliver beyond metric tracking and help you '
                        'perform better by building resilient emotional and physical'
                        ' wellbeing. Hence, we have dedicated 7 years of research and'
                        ' development in the unexplored nooks of performance at IIT Madras.',
                      style: TextStyle(fontSize: 25),),
                  ),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text:'Our committed resolve and research in the areas'
                          ' of physical stress quantification, emotional stress quantification,'
                          ' sleep staging and recovery mapping are translated into'
                          ' the Repose platform. Our service focuses on stress and'
                          ' recovery, the two critical parameters of wellness based'
                          ' on the Heart Rate Variability (HRV) data from Synapse.',
                        style: TextStyle(fontSize: 25),),
                      TextSpan(text: 'Read more...',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),
                        recognizer: TapGestureRecognizer()..onTap=()=>Navigator.pushReplacementNamed(context, '/science'),),
                    ],
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Our Packages',style: TextStyle(fontSize: 50),),
                  Container(
                    width: scrsize.width/10,
                    child: Divider(
                      thickness: 3,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height:300,
              color: Colors.black87,
              child: Row(
                children: [
                  Expanded(
                    child: MouseRegion(
                      onEnter: (e){
                        setState(() {
                          h11=true;
                        });
                      },
                      onExit: (e){
                        setState(() {
                          h11=false;
                        });
                      },
                      child: Column(
                        children: [
                          if(h11==false)
                            Column(
                              children: [
                                Text('ESSENTIAL',style:TextStyle(fontSize: 30,color: Colors.lightGreenAccent)),
                                Container(
                                  width: scrsize.width/25,
                                  child: Divider(
                                    thickness: 3,
                                    color: Colors.lightGreenAccent,
                                  ),
                                ),
                                Text('A single payment model for Individuals offering a two'
                                    ' week wellness assessment.',
                                    style:TextStyle(fontSize: 18,color: Colors.white)),
                              ],
                            )
                          else
                            Column(
                              children: [
                                Text('ESSENTIAL',style:TextStyle(fontSize: 30,color: Colors.lightGreenAccent)),
                                Container(
                                  width: scrsize.width/25,
                                  child: Divider(
                                    thickness: 3,
                                    color: Colors.lightGreenAccent,
                                  ),
                                ),
                                Text('The Essential package is a single payment '
                                    'model that caters to every individual. This '
                                    'involves 3 assessments (24hrs) within a span of'
                                    ' 2 weeks to understand the current lifestyle and'
                                    ' strategically plan the progress with science '
                                    'backed confidence.',
                                    style:TextStyle(fontSize: 18,color: Colors.white)),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8),
                        child: MouseRegion(
                          onEnter: (e){
                            setState(() {
                              h12 =true;
                            });
                          },
                          onExit: (e){
                            setState(() {
                              h12=false;
                            });
                          },
                          child: Column(
                            children: [
                              if(h12==false)
                                Column(
                                  children: [
                                    Text('ELITE',style:TextStyle(fontSize: 30,color: Colors.lightGreenAccent)),
                                    Container(
                                      width: scrsize.width/25,
                                      child: Divider(
                                        thickness: 3,
                                        color: Colors.lightGreenAccent,
                                      ),
                                    ),
                                    Text('A subscription based model for '
                                        'passionate individuals, to harvest '
                                        'long term performance.',
                                        style:TextStyle(fontSize: 18,color: Colors.white)),
                                  ],
                                )
                              else
                                Column(
                                  children: [
                                    Text('ELITE',style:TextStyle(fontSize: 30,color: Colors.lightGreenAccent)),
                                    Container(
                                      width: scrsize.width/25,
                                      child: Divider(
                                        thickness: 3,
                                        color: Colors.lightGreenAccent,
                                      ),
                                    ),
                                    Text('Elite is a subscription model that '
                                        'helps passionate and dedicated individuals'
                                        ' who would like to harvest long term '
                                        'performance. This involves continuous '
                                        'monitoring of the lifestyle/training to'
                                        ' track the trends of performance progress'
                                        ' on the web based dashboards and '
                                        'monthly expert interaction.',
                                        style:TextStyle(fontSize: 18,color: Colors.white)),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: MouseRegion(
                      onEnter: (e){
                        setState(() {
                          h13=true;
                        });
                      },
                      onExit: (e){
                        setState(() {
                          h13=false;
                        });
                      },
                      child: Column(
                        children: [
                          if(h13==false)
                            Column(
                              children: [
                                Text('EXTEND',style:TextStyle(fontSize: 30,color: Colors.lightGreenAccent)),
                                Container(
                                  width: scrsize.width/25,
                                  child: Divider(
                                    thickness: 3,
                                    color: Colors.green,
                                  ),
                                ),
                                Text('A subscription based model for '
                                    'organisations to track the wellness '
                                    'performance of their members.',
                                    style:TextStyle(fontSize: 18,color: Colors.white)),
                              ],
                            )
                          else
                            Column(
                              children: [
                                Text('EXTEND',style:TextStyle(fontSize: 30,color: Colors.lightGreenAccent)),
                                Container(
                                  width: scrsize.width/25,
                                  child: Divider(
                                    thickness: 3,
                                    color: Colors.green,
                                  ),
                                ),
                                Text('The Extend package is for organisations '
                                    'who wish to employ personalised and scientific'
                                    ' process for wellness tracking of teams or'
                                    ' clients. The web dashboard enables '
                                    'organisations to track and monitor overall'
                                    ' wellness and performance of their members'
                                    ' as well as the organisation itself over'
                                    ' a period.',style:TextStyle(fontSize: 18,color: Colors.white)),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              height: 200,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:60,bottom:10),
                  child: Column(
                    children: [
                      Text('Get in touch with us for a demo',
                        style: TextStyle(fontSize: 25),),
                      FloatingActionButton.extended(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, '/contact');
                        },
                        label: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Contact Us'),
                        ),
                        backgroundColor: Colors.lightGreen,),
                    ],
                  ),
                ),
              ),
            ),

            MouseRegion(
              onEnter: (e){
                setState(() {
                  h31=true;
                });
              },
              onExit: (e){
                setState(() {
                  h31=false;
                });
              },
              child: Container(
                child: CarouselSlider(
                  items:[
                    Container(
                      height:600,
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image:AssetImage('assets/athelete_wellness.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Coorperate Wellness',style:TextStyle(color: Colors.lightGreen),),
                            Text('Wellness beyond Workplace',style:TextStyle(color: Colors.white,fontSize: 40),),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 8),
                              child: Container(
                                width: scrsize.width/9,
                                child: Divider(
                                  thickness: 3,
                                  color:Colors.lightGreen,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:100),
                              child: Text('Habits define people and in turn, the'
                                  ' efficiency of their work. Attack the root '
                                  'cause of wellness issues through Repose by '
                                  'understanding the lifestyle of employees even'
                                  ' beyond the workplace and personalize the '
                                  'interventions for enhanced productivity '
                                  'without burnouts.',
                                style:TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height:600,
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image:AssetImage('assets/coorperate_wellness.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Athelete Wellness',style:TextStyle(color: Colors.lightGreen),),
                            Text('Perform Safer and Smarter',style:TextStyle(color: Colors.white,fontSize: 40),),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 8),
                              child: Container(
                                width: scrsize.width/9,
                                child: Divider(
                                  thickness: 3,
                                  color:Colors.lightGreen,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:100),
                              child: Text('Performance does not need to be at the cost of injuries. '
                                  'With cutting edge analytics from Repose, understand the '
                                  'emotional load, physical load, and recovery of athletes to '
                                  'train smartly and achieve progressive performance without '
                                  'being prone to injuries.',
                                style:TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height:600,
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image:AssetImage('assets/cosmetic_wellness.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cosmetic Wellness',style:TextStyle(color: Colors.lightGreen),),
                            Text('Don\'t let stress Age you',style:TextStyle(color: Colors.white,fontSize: 40),),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 8),
                              child: Container(
                                width: scrsize.width/9,
                                child: Divider(
                                  thickness: 3,
                                  color:Colors.lightGreen,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:100),
                              child: Text('Repairing and preventing stressed'
                                  '-out skin is more like a slow and steady '
                                  'marathon than a quick-fix sprint. Through'
                                  ' Repose, maintain optimum stress recovery'
                                  ' balance and keep a check on the '
                                  'effectiveness of the corrective measures '
                                  'or interventions introduced for stress '
                                  'management.',
                                style:TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height:600,
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image:AssetImage('assets/individual_wellness.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Individual Wellness',style:TextStyle(color: Colors.lightGreen),),
                            Text('Step towards a better you',style:TextStyle(color: Colors.white,fontSize: 40),),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 8),
                              child: Container(
                                width: scrsize.width/9,
                                child: Divider(
                                  thickness: 3,
                                  color:Colors.lightGreen,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:100),
                              child: Text('Body responds in complex ways to '
                                  'meet varying demands of our hustling lives.'
                                  ' Understand the way your body and mind go'
                                  ' through your daily routine, to strategize'
                                  ' and act upon the personalized insights '
                                  'to recover and replenish for a healthy tomorrow.',
                                style:TextStyle(color: Colors.white,fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ], options:CarouselOptions(
                  autoPlayCurve:Curves.fastLinearToSlowEaseIn,
                  autoPlay:!h31,
                  autoPlayInterval:Duration(seconds: 2) ,
                  initialPage: 0,

                ),
                ),
              ),
            ),


            Container(
              color: Colors.black12,
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    flex:5,
                    child: Text('Get in touch with us to know'
                        ' more about our categories of wellness assessments',
                      style: TextStyle(fontSize: 30),),
                  ),
                  Expanded(
                    flex:1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                      onChanged: (i) {
                        setState(() {
                          str=i;
                        }
                        );
                      },
                    ),
                  ),
                  if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(str))
                    Expanded(
                      flex:1,
                      child: MouseRegion(
                          cursor: SystemMouseCursors.forbidden,
                          child: Icon(Icons.arrow_forward)),)
                  else
                    Expanded(
                      flex:1,
                      child: Icon(Icons.arrow_forward),
                    ),
                ],
              ),
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
    );
  }

}
