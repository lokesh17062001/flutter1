//@dart=2.9

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project/functions.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Synapsef(),
));

class Synapsef extends StatefulWidget {

  @override
  _SynapsefState createState() => _SynapsefState();
}

class _SynapsefState extends State<Synapsef> {
  var e1=false,e2=false,e3=false,e4=false;

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
      Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20,right:20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:80),
                      child: Image(
                        image: AssetImage('assets/ss.jpg'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Column(
                          children: [
                            Text('SYNAPSE SENSOR',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            Text('Not just any other Heartrate Monitor',style:TextStyle(fontSize: 65),),
                            Divider(
                              thickness: 3,
                              color: Colors.lightGreenAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:20),
                              child: Text('Just as the Synapse of our nervous system, Netrin’s Synapse '
                                  'acts as the structure to pass on the electrical signals from '
                                  'your heart to the Repose platform via Bluetooth',
                                style: TextStyle(fontSize: 18),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height:750,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage('assets/ss2.jpg'),
                    fit: BoxFit.cover,
                    alignment:Alignment.center,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Designed for the Toughest',style: TextStyle(fontSize: 25,color: Colors.white),),
                    Padding(
                      padding: const EdgeInsets.only(left: 250,right: 250,top: 10),
                      child: Text('Programmed with Netrin’s powerful algorithms, Synapse is a swim '
                          'and shock proof designed, tested and manufactured in Finland by '
                          'sharing Suunto’s expertise, a brand of world-renowned sports watches'
                          ' and dive computers for the toughest conditions. Synapse is '
                          'manufactured in a facility certified to ISO 13485 quality systems.',
                        style: TextStyle(color: Colors.white,fontSize: 17),),
                    ),
                  ],
                ),
              ),

              Container(
                height: 600,
                color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      child: MouseRegion(
                          onEnter:(e){
                            setState(() {
                              e1=true;
                            }
                            );
                          },
                          onExit:(e){
                            setState(() {
                              e1=false;
                            }
                            );
                          },
                          child:
                          Container(
                            height: 600,
                            child: Column(
                              children: [
                                if(e1==false)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 150),
                                    child: Column(
                                      children: [
                                        Container(
                                            height:200,
                                            child: Image(image: AssetImage('assets/heartbeat.jpg'),)),
                                        Text(
                                          'The Power of Accuracy',
                                          style: TextStyle(fontSize: 25,color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                else
                                  Container(
                                    height: 600,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:AssetImage('assets/a1.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'The Power of Accuracy',
                                          style: TextStyle(fontSize: 25,color: Colors.white),
                                        ),
                                        Text('Synapse measures a single channel ECG,'
                                            ' heart rate, beat-to-beat intervals and'
                                            ' 9 axis movement. Synapse delivers near'
                                            ' the lab accuracy on the field with a'
                                            ' resolution of 2ms RR interval data.',
                                          style: TextStyle(fontSize: 15,color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          )
                      ),
                    ),

                    Expanded(
                      child: MouseRegion(
                          onEnter:(e){
                            setState(() {
                              e2=true;
                            });
                          },
                          onExit:(e){
                            setState(() {
                              e2=false;
                            });
                          },
                          child:
                          Container(
                            height: 600,
                            child: Column(
                              children: [
                                if(e2==false)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 150),
                                    child: Column(
                                      children: [
                                        Container(
                                            height:200,
                                            child: Image(image: AssetImage('assets/wear.jpg'),)),
                                        Text(
                                          'The Ease of Wearability',
                                          style: TextStyle(fontSize: 25,color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                else
                                  Container(
                                    height: 600,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:AssetImage('assets/a2.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'The Ease of Wearability',
                                          style: TextStyle(fontSize: 25,color: Colors.white),
                                        ),
                                        Text('Synapse comes with the soft textile strap with high quality electrodes it is unobtrusive and sustains tough conditions making it a natural part of an activity.',
                                          style: TextStyle(fontSize: 15,color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          )
                      ),
                    ),


                    Expanded(
                      child: MouseRegion(
                          onEnter:(e){
                            setState(() {
                              e3=true;
                            });
                          },
                          onExit:(e){
                            setState(() {
                              e3=false;
                            });
                          },
                          child:
                          Container(
                            height: 600,
                            child: Column(
                              children: [
                                if(e3==false)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 150),
                                    child: Column(
                                      children: [
                                        Container(
                                            height:200,
                                            child: Image(image: AssetImage('assets/update.jpg'),)),
                                        Text(
                                          'Over the Air Updates',
                                          style: TextStyle(fontSize: 25,color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                else
                                  Container(
                                    height: 600,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:AssetImage('assets/a3.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Over the Air Updates',
                                          style: TextStyle(fontSize: 25,color: Colors.white),
                                        ),
                                        Text('Synapse keeps evolving through our over the air software updates.',
                                          style: TextStyle(fontSize: 15,color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          )
                      ),
                    ),


                    Expanded(
                      child: MouseRegion(
                          onEnter:(e){
                            setState(() {
                              e4=true;
                            });
                          },
                          onExit:(e){
                            setState(() {
                              e4=false;
                            });
                          },
                          child:
                          Container(
                            height: 600,
                            child: Column(
                              children: [
                                if(e4==false)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 150),
                                    child: Column(
                                      children: [
                                        Container(
                                            height:200,
                                            child: Image(image: AssetImage('assets/light_weight.jpg'),)),
                                        Text(
                                          'Lightweight Sports Wearable',
                                          style: TextStyle(fontSize: 25,color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  )
                                else
                                  Container(
                                    height: 600,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:AssetImage('assets/a4.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Lightweight Sports Wearable',
                                          style: TextStyle(fontSize: 25,color: Colors.white),
                                        ),
                                        Text('Synapse is the lightest sports grade'
                                            ' chest based wearable in the market weighing'
                                            ' 10g including the replaceable battery.',
                                          style: TextStyle(fontSize: 15,color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          )
                      ),
                    ),

                  ],
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 707,
                    width: MediaQuery.of(context).size.width/2,
                    child: Padding(
                      padding: const EdgeInsets.only(top:300,left: 10,right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Suitable for Swimming',
                              style: TextStyle(fontSize: 70,),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/10,
                            child: Divider(
                              color: Colors.lightGreen,
                              thickness: 3,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Synapse is a designed to be water resistant upto 30m/100ft'
                                ', thus tracking your performance even under water.',
                              style: TextStyle(fontSize: 18,color: Colors.black87),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Image(image: AssetImage('assets/swimming.jpg'),),),
                ],
              ),
              Container(
                color: Colors.black12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(child: Text('Our Synapse sensor complies with the following standards',style: TextStyle(fontSize: 22,),)),
                    Image(
                      image:AssetImage('assets/standards.jpg'),
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
      ),
    );
  }

}
