import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_on_web/mark_down_page.dart';
//import 'package:lottie/lottie.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc =
      "1st Floor 2nd -18 Murlidhar Vyas Colony Nagar , Bikaner (Rajasthan).";

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
//              child: LottieBuilder.asset(
//                'assets/books-2.json',
//                    height:100,
//              width: 100,
//              fit: BoxFit.contain,
//               ),
//            ),
            Divider(),
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                child: Image.asset(
                  "assets/profilepic.jpg",
                  width: 300,
                  height: 300,

                ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Design n' Build",
              style: TextStyle(
                  fontFamily: 'bauhs93',
                  color: Colors.red,
                  fontSize: 110,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "We Build your Dream Home",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
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
                      _launchURL("https://maps.app.goo.gl/5kmkH5sjVhBxskyx7");
                    },
                    child: Image.asset("assets/facebook.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.instagram.com/indianappguy/");
                    },
                    child: Image.asset("assets/instagram.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://maps.app.goo.gl/5kmkH5sjVhBxskyx7");
                    },
                    child: Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Ficon-library.com%2Ficon%2Fmap-icon-white-1.html&psig=AOvVaw2euLRYg5GuddxH_VtT2sbj&ust=1596719798510000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNCzuICThOsCFQAAAAAdAAAAABAF", width: 23,height: 23,)
                ),
              ],
            ),
             SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardExample()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                        colors: [const Color(0xffA2834D),
                          const Color(0xffBC9A5F)]
                    )
                ),
                child: Text("Click For More Details",
                  style: TextStyle(
                      color: Colors.white
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}