import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_webpage/packages/packages.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> with SingleTickerProviderStateMixin {

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 3));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }


  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Design n' Build",
              style: TextStyle(
                  fontFamily: 'bauhs93',
                  fontWeight: FontWeight.bold,
                  fontSize: 90.0,
                  color: Colors.red),
            ),
            Text(
              "\"We Build Your Dream Home\"",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "1st Floor 2nd -18 Murlidhar Vyas Colony Nagar ,\n Bikaner (Rajasthan).",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),

            Text("Connect with me -", style: TextStyle(
                color: Colors.white,
                fontSize: 14
            ),),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      _launchURL("https://maps.app.goo.gl/5kmkH5sjVhBxskyx7");
                    },
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRbNvqugXh0VzdRykozxtrXzW-n0L-d-4KNRA&usqp=CAU", width: 30,height: 30,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://wa.link/v2cvpb");
                    },
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQBx5yHOfAiRs1JTTcGTviskrU8IZ1UPTgnnQ&usqp=CAU", width: 30,height:30,)
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            MaterialButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {
                Navigator.push(  context,
                    MaterialPageRoute(builder: (context) => Detail(),)
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Our Details",
                  style: TextStyle(color: Colors.red),
                ),
              ),
             )
            ]
           ),
          ),
        ClipRRect(
           borderRadius: BorderRadius.all(Radius.circular(100)),
           child: Image.asset(
          "assets/images/lp_image.png",
          width: _iconAnimation.value * 400,
          height: _iconAnimation.value * 400,

        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}


