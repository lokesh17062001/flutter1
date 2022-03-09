// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/functions.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Insight(),
));
class Insight extends StatefulWidget {

  @override
  _InsightState createState() => _InsightState();
}

class _InsightState extends State<Insight> {
  var a1=false,a2=false,a3=false,a4=false,i=3;
  @override
  Widget build(BuildContext context) {
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
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/insights.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:50,bottom: 8,left: 120),
                    child: Text('Insights',style: TextStyle(color: Colors.white,fontSize: 50),),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/6,
                    child: Divider(
                      thickness: 3,
                      color: Colors.lightGreen,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0,bottom: 8,left: 120),
                    child: Text('That which cannot be measured, cannot be improved. Insights '
                        'by Netrin’s AI shall quantify the critical parameters of performance'
                        ' and wellness: Stress, Activity ,Sleep and Recovery. Meet your'
                        ' guide to better performance through Repose Insights.',
                      style: TextStyle(color: Colors.white,fontSize: 23),),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('A multitude of factors impact athlete performance, but it '
                        'ultimately boils down to the stress or load taken by the body '
                        'and how well we recover from it to improve the performance '
                        'while avoiding injuries.',
                      style: TextStyle(fontSize: 25),),
                    Padding(
                      padding: const EdgeInsets.only(top:25),
                      child: Text('Stress in life cannot be eliminated, '
                          'all we can do is balance it with optimal recovery.',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 100,left: 200,right: 200),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image(image: AssetImage('assets/ins1.jpg'),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image(image: AssetImage('assets/ins2.jpg'),),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image(image: AssetImage('assets/ins3.jpg'),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Image(image: AssetImage('assets/ins4.jpg'),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.only(top:18),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child:
                            MouseRegion(
                              onEnter: (e){
                                setState(() {
                                  a1=true;
                                  i=1;
                                });
                              },
                              onExit: (e){
                                setState(() {
                                  a1=false;
                                });
                              },
                              child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if(a1==false)
                                    Column(
                                      children: [
                                        Text('Lifestyle Stress Mapping',
                                          style: TextStyle(fontSize: 30),),
                                        Text('Map your journaled activities to understand the '
                                            'levels and distribution of stress experienced during'
                                            ' your activities and daily routine.',
                                          style: TextStyle(fontSize: 20),),
                                      ],
                                    )
                                  else
                                    Column(
                                      children: [
                                        Text('Lifestyle Stress Mapping',
                                          style: TextStyle(fontSize: 30,color: Colors.deepPurple),),
                                        Text('Map your journaled activities to understand the '
                                            'levels and distribution of stress experienced during'
                                            ' your activities and daily routine.',
                                          style: TextStyle(fontSize: 20,color: Colors.deepPurple),),
                                      ],
                                    )

                                ],
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top:98,left: 18,bottom: 18,right: 18),
                            child:
                            MouseRegion(
                              onEnter: (e){
                                setState(() {
                                  a2=true;
                                  i=2;
                                });
                              },
                              onExit: (e){
                                setState(() {
                                  a2=false;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if(a2==false)
                                    Column(
                                      children: [
                                        Text('Activity Analysis',
                                          style: TextStyle(fontSize: 30),),
                                        Text('Keep track of your physical activity through '
                                            'accurate step count and physical activity level metrics.',
                                          style: TextStyle(fontSize: 20),)
                                      ],
                                    )
                                  else
                                    Column(
                                      children: [
                                        Text('Activity Analysis',
                                          style: TextStyle(fontSize: 30,color: Colors.deepPurple),),
                                        Text('Keep track of your physical activity through '
                                            'accurate step count and physical activity level metrics.',
                                          style: TextStyle(fontSize: 20,color: Colors.deepPurple),)
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if(i==1)
                      Image(
                          image:AssetImage('assets/entry1.jpg')
                      )
                    else if(i==2)
                      Image(
                          image:AssetImage('assets/entry2.jpg')
                      )
                    else if(i==3)
                        Image(
                            image:AssetImage('assets/entry3.jpg')
                        )
                      else
                        Image(
                            image:AssetImage('assets/entry4.jpg')
                        ),

                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child:
                            MouseRegion(
                              onEnter: (e){
                                setState(() {
                                  a3=true;
                                  i=3;
                                });
                              },
                              onExit: (e){
                                setState(() {
                                  a3=false;
                                });
                              },
                              child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if(a3==false)
                                    Column(
                                      children: [
                                        Text('State & Quality of Recovery',
                                          style: TextStyle(fontSize: 30),),
                                        Text('Understand which activities are '
                                            'initiating recovery and at which qualities of recovery for a better planning.',
                                          style: TextStyle(fontSize: 20),),
                                      ],
                                    )
                                  else
                                    Column(
                                      children: [
                                        Text('State & Quality of Recovery',
                                          style: TextStyle(fontSize: 30,color: Colors.deepPurple),),
                                        Text('Understand which activities are '
                                            'initiating recovery and at which qualities of recovery for a better planning.',
                                          style: TextStyle(fontSize: 20,color: Colors.deepPurple),),
                                      ],
                                    )

                                ],
                              ),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top:98,left: 18,bottom: 18,right: 18),
                            child:
                            MouseRegion(
                              onEnter: (e){
                                setState(() {
                                  a4=true;
                                  i=4;
                                });
                              },
                              onExit: (e){
                                setState(() {
                                  a4=false;
                                });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if(a4==false)
                                    Column(
                                      children: [
                                        Text('Sleep Quality Estimation',
                                          style: TextStyle(fontSize: 30),),
                                        Text('It’s quality over quantity, always! '
                                            'Understand your lifestyle parameters affecting your sleep quality.',
                                          style: TextStyle(fontSize: 20),)
                                      ],
                                    )
                                  else
                                    Column(
                                      children: [
                                        Text('Sleep Quality Estimation',
                                          style: TextStyle(fontSize: 30,color: Colors.deepPurple),),
                                        Text('It’s quality over quantity, always! '
                                            'Understand your lifestyle parameters affecting your sleep quality.',
                                          style: TextStyle(fontSize: 20,color: Colors.deepPurple),)
                                      ],
                                    ),
                                ],
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
