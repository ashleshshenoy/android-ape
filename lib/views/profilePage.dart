import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar( title: Text("My Profile")),
      body : Container( 
        
          padding: EdgeInsets.only(top: 60),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height  * 0.75,
          child: Column(
            //alignments
            
            mainAxisAlignment : MainAxisAlignment.spaceAround,
            crossAxisAlignment : CrossAxisAlignment.center,

            children:[
              Text("Ashlesh shenoy ", style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),),
             Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.fill
                ),
                ),
              ),
              Text("Name : Ashlesh shenoy ", style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),),
              Text("Email : ashleshshenoy09@gmail.com", style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text("USN : 4MT20CS038", style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),),
              Text("Age : 19", style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),),

            
            ]
          )
      ),

    );
  }
}