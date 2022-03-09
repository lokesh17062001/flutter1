// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/functions.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Contact(),
));
class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool _value=false;
  final formkey = GlobalKey<FormState>();
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
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image(
                    image:AssetImage('assets/a.jpg'),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,top:10,bottom: 10,right: 25),
                    child: Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                          Text("Reach out to know more. We'd love to help you.",style: TextStyle(fontSize: 45,),),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'First Name*',),
                                        validator: (i){
                                          if(i.isEmpty) return "Enter First Name";
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'Company Name*'),
                                        validator: (i){
                                          if(i.isEmpty) return "Enter Company Name*";
                                          return null;
                                        },
                                      ),

                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'Country*'),
                                        validator: (i){
                                          if(i.isEmpty) return "Country should not be null";
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'Last Name*'),
                                        validator: (i){
                                          if(i.isEmpty) return "Enter Last Name";
                                          return null;
                                        },
                                      ),

                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'Area of Interest*'),
                                        validator: (i){
                                          if(i.isEmpty) return "Enter your area of interest";
                                          return null;
                                        },
                                      ),

                                      TextFormField(
                                        decoration: InputDecoration(labelText: 'Phone No'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: TextFormField(
                              decoration: InputDecoration(labelText: 'Email Id*'),
                              validator: (i){
                                bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(i);
                                if(i.isEmpty) return "Enter email";
                                else if(!emailValid) return "Enter valid email";
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            child: CheckboxListTile(
                              title: Text("I’d like to receive updates and communications from Netrin.",style: TextStyle(color: Colors.black),), //    <-- label
                              controlAffinity: ListTileControlAffinity.leading,
                              selected: _value,
                              value: _value,
                              onChanged: (bool value) {
                                setState(() {
                                  _value=!_value;
                                });
                              },
                            ),
                          ),
                          FloatingActionButton.extended(
                            onPressed: (){
                              if(formkey.currentState.validate())
                              {
                                formkey.currentState.save();
                              }
                            },
                            label: Text('Contact Us',style: TextStyle(color: Colors.black),),
                            backgroundColor: Colors.lightGreenAccent,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
    );
  }
}
