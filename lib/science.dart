// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:project/functions.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Science(),
));

class Science extends StatefulWidget {
  @override
  State<Science> createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  var onenter=false;

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
          children: [
            Container(
              width: scrsize.width,
              height: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('assets/science.jpg'),
                  fit: BoxFit.cover,
                  opacity: 5,
                  filterQuality:FilterQuality.low,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 150,top: 30,bottom: 30),
                    child: Text('Science',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.white,),),
                  ),
                  Container(
                    width: 250,
                    child: Divider(
                      color: Colors.lightGreen,
                      thickness: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150,top:10),
                    child: Container(
                      width:scrsize.width*0.7,
                      child:
                      Text(
                        'There’s an unceasing rhythm within us, that we often fail to '
                            'listen to, amidst the noises of our lives. The rhythm that '
                            'pumps life into us. The rhythm that expels toxins and spreads'
                            ' nourishments throughout our body. As life shifts between'
                            ' relaxed and stressed states, so does this rhythm of our '
                            'heartbeat rise and fall often.Listening to this fine-tuned '
                            'instrument reveals a lot about how we meet our daily demands'
                            ' to keep our body functional. With this as the parameter of'
                            ' research interest, Repose is built to analyze the variability'
                            ' of heart beats (HRV) to meet our demands.',
                        style:TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'What is ',style: TextStyle(fontSize: 60)),
                      TextSpan(text: 'HRV',style: TextStyle(fontSize: 60,color: Colors.lightGreenAccent)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8,bottom: 8),
                  child: Container(
                    width: 100,
                    child: Divider(
                      color: Colors.lightGreenAccent,
                      thickness: 3,
                    ),
                  ),
                ),
                Image(
                  width: scrsize.width*0.7,
                  image:AssetImage('33.jpg'),
                ),
                Container(width:scrsize.width*0.7,child: Text('HRV or Heart Rate Variability,'
                    ' is the variation in the time period of consecutive heart'
                    ' beats. Human heart beats aren’t always even and timely, '
                    'but are prone to variations. For example, during a roller'
                    ' coaster ride, the heart beats quicker, reducing the time'
                    ' difference, thus creating a low HRV. After the ride, our'
                    ' body starts to relax, the beats slow down, and consequently'
                    ' the HRV starts to increase.',
                  style: TextStyle(fontSize: 25),)),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Container(width:scrsize.width*0.7,child: Text('This physiological'
                      ' phenomenon of the heart is highly related to the two branches'
                      ' ( Sympathetic and Parasympathetic) of the Autonomic Nervous System'
                      ' (ANS). While sympathetic takes lead in initiating a ‘fight'
                      ' or flight’ response, the parasympathetic activates the relaxation'
                      ' mode after the ‘fight or flight’ response. This link with'
                      ' the (ANS) Autonomic Nervous System makes HRV a reliable '
                      'clinical parameter for diagnosing cardiovascular parameters.',
                    style: TextStyle(fontSize: 25),)),
                ),
              ],
            ),
            if(onenter==false)
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/stress.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('How is HRV related to Stress?',
                                      style: TextStyle(fontSize: 35,color: Colors.white),),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 350),
                                      child: Divider(
                                        thickness: 3,
                                        color: Colors.lightGreen,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Container(
                              child: MouseRegion(
                                onEnter: (e) {
                                  setState(() {
                                    onenter = true;
                                  });
                                },
                                onExit: (e) {
                                  setState(() {
                                    onenter = false;
                                  });
                                },
                                child:
                                Container(
                                  width:scrsize.width/3,
                                  color: Colors.black87,
                                  height: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(height: 100,
                                        child: Text('How is HRV related to Recovery?',
                                          style: TextStyle(fontSize: 35,color: Colors.white),),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 120, bottom: 50, left: 30, right: 30),
                          child: Text(
                            'HRV fluctuates throughout the day due to internal and external'
                                ' factors. One such important factor is stress, which can '
                                'be either physical or emotional. Under stressful conditions,'
                                ' the fight or flight response (sympathetic nervous system)'
                                ' is triggered to release various hormones, which induces '
                                'increased heart rate. Due to this, the pace of heartbeat '
                                'increases, the variations between the time period of each'
                                ' heartbeat decreases, therefore, leading to a low HRV. Thus,'
                                ' stress holds an inversely proportional relationship to '
                                'HRV that helps in active stress-tracking.',
                            style: TextStyle(fontSize: 25, color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                ),
              )
            else
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.black87,
                        child: Column(
                          children: [
                            Container(
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(height: 100,
                                    child: Text('How is HRV related to Stress?',
                                      style: TextStyle(fontSize: 35,color: Colors.white),),),
                                ],
                              ),
                            ),



                            Container(
                              child: MouseRegion(
                                onEnter: (e) {
                                  setState(() {
                                    onenter = true;
                                  });
                                },
                                onExit: (e) {
                                  setState(() {
                                    onenter = false;
                                  });
                                },
                                child:
                                Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/recovery.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('How is HRV related to Recovery?',
                                          style: TextStyle(fontSize: 35,color: Colors.white),),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 350),
                                          child: Divider(
                                            thickness: 3,
                                            color: Colors.greenAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 120, bottom: 50, left: 30, right: 30),
                          child: Text(
                            'Recovery occurs when physiological arousal is diminished, and parasympathetic activity dominates the Autonomic Nervous System (ANS) over sympathetic activity. The pace of the heartbeat slows down during this period, and there is an increase in HRV.',
                            style: TextStyle(fontSize: 25, color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                ),
              ),



            Padding(
              padding: const EdgeInsets.all(80),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text('Get in touch with us for a demo',style:TextStyle(fontSize: 20),),
                  ),
                  FloatingActionButton.extended(onPressed: () {},
                    backgroundColor:Colors.lightGreenAccent,
                    label: TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/contact');
                        },
                        child: Text('Contact Us',style: TextStyle(color: Colors.black,fontSize: 20),)),
                  ),
                ],
              ),
            ),
            Container(
              height: 750,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:NetworkImage('assets/sleep_quality.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: scrsize.width/2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'How to  ',style: TextStyle(fontSize: 90,color: Colors.white),),
                                TextSpan(text: 'understand ',style: TextStyle(fontSize: 80,color: Colors.white),),
                                TextSpan(text: 'Sleep \n',style: TextStyle(fontSize: 80,color: Colors.lightGreenAccent),),
                                TextSpan(text: 'quality?',style: TextStyle(fontSize: 80,color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:scrsize.width/20,
                          child: Divider(
                            color: Colors.green,
                            thickness: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20,top:20),
                    child: Container(
                      height: 550,
                      width: scrsize.width/2,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Text('As unique as our fingerprints, our own sleep preferences'
                                ' and patterns are unique to us. Sleeping 7 to 8 hours'
                                ' per day is not a one size fits all solution. The purpose'
                                ' of sleep is to recover and restore the body and mind.'
                                ' As our stressors are different, so are our recovery patterns.',
                              style: TextStyle(fontSize: 30,color: Colors.white),),
                            SizedBox(height: 20,),
                            Text('Each night, we move through multiple stages of sleep,'
                                ' cycling through each one as the mind and body activate'
                                ' different systems of restoration. The deepest stage of sleep,'
                                ' is associated with especially rich health benefits, '
                                'including muscle reparation, bone density growth, and preventing'
                                ' cognitive decline. With greater time spent in deep sleep, we can wake more restored.',
                              style: TextStyle(fontSize: 30,color: Colors.white),),
                            SizedBox(height: 20,),
                            Text('The last half of our natural sleep accounts for '
                                'the majority of our REM sleep - the sleep responsible for'
                                ' learning, understanding, and processing REM sleep '
                                'improves reaction times, aids in knowledge retention '
                                'and alleviates anxiety and mental disorders. Because '
                                'it occurs at the tail end of your sleep, losing just '
                                '25% of total sleep could mean up to a 90% reduction in REM sleep.',
                              style: TextStyle(fontSize: 30,color: Colors.white),),
                            SizedBox(height: 20,),
                            Text('“Understanding the quality time spent in each of'
                                ' our different sleep stages and the time taken to'
                                ' fall asleep provides an estimate of the quality of sleep'
                                ' and in turn the recovery gained."',
                              style: TextStyle(fontSize: 30,color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
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