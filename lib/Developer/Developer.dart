import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Developer(),
  ),
);

class Developer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
//      appBar: AppBar(
//        backgroundColor:Colors.teal[200],
//        title: Text('Our expert'),
//      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1200) {
              return DeveloperDesktop();
            } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
              return DeveloperDesktop();
            } else {
              return DeveloperMobile();
            }
          },
        ),
      ),
    );
  }
}








class DeveloperDesktop extends StatefulWidget {
  @override
  _DeveloperDesktopState createState() => _DeveloperDesktopState();
}

class _DeveloperDesktopState extends State<DeveloperDesktop>  with SingleTickerProviderStateMixin {
  String desc =
  "I appreciate those people who really wants to do something different and those who wants to implement their creative idea \n"
      " Those who want to do somthing creative or learn new thing in tech word i am alwayas with you ";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xff213A50), const Color(0xff071930)],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Expanded(
//              child: Lottie.network(
//                'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
//                    height:10,
//              width: 10,
//               ),
//            ),
            Divider(),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(80)),
              child: Image.asset(
                "assets/profile.png",
                width: 300,
                height: 300,

              ),
            ),
            SizedBox(
              height: 12,
            ),

           TypewriterAnimatedTextKit(
             text: ['Raghav Swami'],
                  textStyle: TextStyle(
                  fontFamily: 'bauhs93',
                  color: Colors.red,
                  fontSize: 50,
                  fontWeight: FontWeight.w400),
             ),

            SizedBox(
              height: 13,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),

        SizedBox(
          width: 250.0,
          child: FadeAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              text: [
                "Be a part of Change",
                "not a part of Race"
              ],
              textStyle: TextStyle(
                  fontSize: 25.0,
                  color: Color(0xFF9E9E9E),
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              alignment: AlignmentDirectional.topCenter // or Alignment.topLeft
          ),
        ),
            Text("Connect with me", style: TextStyle(
                color: Colors.white,
                fontSize: 14
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.facebook.com/raghav.swami.33");
                    },
                    child: Image.asset("assets/facebook.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.instagram.com/Raghav_Swam_e/");
                    },
                    child: Image.asset("assets/instagram.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://github.com/raghav18482");
                    },
                    child: Image.network("data:image/png;base64,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", width: 23,height: 23,)
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}





class DeveloperMobile extends StatefulWidget {
  @override
  _DeveloperMobileState createState() => _DeveloperMobileState();
}

class _DeveloperMobileState extends State<DeveloperMobile>  with SingleTickerProviderStateMixin {
  String desc = "I appreciate those people who really wants to do something different and those who wants to implement their creative idea \n"
      " Those who want to do somthing creative or learn new thing in tech word i am alwayas with you ";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(

      alignment: Alignment.center,
      decoration: BoxDecoration(gradient: LinearGradient(
        colors: [const Color(0xff213A50),const Color(0xff071930)],)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
//            Expanded(
//              child: Lottie.network(
//                'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
//                    height:10,
//              width: 10,
//               ),
//            ),
        Divider(),
        ClipRRect(borderRadius: BorderRadius.all(Radius.circular(80)),
          child: Image.asset("assets/profile.png",width: 300,height: 300,

          ),),
        SizedBox(height: 12,),

        TypewriterAnimatedTextKit(text: ['Raghav Swami'],
          textStyle: TextStyle(fontFamily: 'bauhs93',
              color: Colors.red,
              fontSize: 35,
              fontWeight: FontWeight.w400),),

        SizedBox(height: 13,),

        Container(padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(desc,textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          )
        ),
        SizedBox(height: 5,),

        SizedBox(width: 250.0,child: FadeAnimatedTextKit(onTap: () {
          print("Tap Event");
        },
            text: [
              "Be a part of Change",
              "not a part of Race"
            ],
            textStyle: TextStyle(
                fontSize: 20.0,
                color: Color(0xFF9E9E9E),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.topCenter // or Alignment.topLeft
        ),
        ),
        SizedBox(height: 10,),
        Text("Connect with me :",
          style: TextStyle(color: Colors.white,fontSize: 14),),

        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(onTap: () {
              _launchURL("https://www.facebook.com/raghav.swami.33");
               },child: Image.asset(
              "assets/facebook.png",width: 23,height: 23,)
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(onTap: () {
              _launchURL("https://www.instagram.com/Raghav_Swam_e/");
               } ,child: Image.asset(
              "assets/instagram.png",width: 23,height: 23,)
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(onTap: () {
              _launchURL("https://github.com/raghav18482");
            },
                child: Image.asset(
                  "assets/images.png",width: 25,height: 40,)
            ),
          ],),
        SizedBox(height: 15,),
      ],),),);
  }
}
