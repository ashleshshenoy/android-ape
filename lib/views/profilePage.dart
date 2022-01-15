import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';





class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  static String _linkedUrl = 'https://www.linkedin.com/in/ashlesh-shenoy/';
  static String _GithubUrl = "https://github.com/ashleshshenoy";

  void  _launchURL( String _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar( title: Text("My Profile") , backgroundColor: Colors.orange.shade300 ),
      body : Container( 

          padding: EdgeInsets.only(top: 60),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height  * 0.75,
          child: Column(
            //alignments
            
            mainAxisAlignment : MainAxisAlignment.spaceAround,
            crossAxisAlignment : CrossAxisAlignment.center,

            children:[
            Text("Ashlesh shenoy ", style: TextStyle(fontSize:24, fontWeight: FontWeight.bold),),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                RaisedButton(
                color: Colors.blue,
                onPressed: () => _launchURL(_linkedUrl),

                child: Text('LinkedIn', style: TextStyle(color: Colors.white)),
                ),
                RaisedButton(
                  color: Colors.black,
                  onPressed: () => _launchURL(_GithubUrl),
                  child: Text('GitHub', style: TextStyle(color: Colors.white)),
                ),

              ]),


            ]
          )
      ),

    );
  }
}




