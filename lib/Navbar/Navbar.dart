import 'package:flutter/material.dart';
import 'package:flutter_webpage/About_us/about.dart';
import 'package:flutter_webpage/Developer/Developer.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
             children: <Widget>[
              Text(
              "D",
              style: TextStyle(
                  fontFamily: 'FORTE',
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: 40),
            ),
               Text(
                 "n'",
                 style: TextStyle(
                     fontFamily: 'bauhs93',
                     fontWeight: FontWeight.bold,
                     color: Colors.red,
                     fontSize: 40),
               ),
               Text(
                 "B",
                 style: TextStyle(
                     fontFamily: 'FORTE',
                     fontWeight: FontWeight.bold,
                     color: Colors.blue,
                     fontSize: 40),
               ),
            ],
            ),
            SizedBox(
              width: 30,
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(  context,
                        MaterialPageRoute(builder: (context) => ListViewBuilderExample(),)
                    );
                  },
                  child: Text(
                    "About us",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(  context,
                        MaterialPageRoute(builder: (context) => Developer(),)
                    );
                  },
                  child: Text(
                    "About Developer",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "D",
                style: TextStyle(
                    fontFamily: 'FORTE',
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontSize: 40),
              ),
              Text(
                "n'",
                style: TextStyle(
                    fontFamily: 'bauhs93',
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 40),
              ),
              Text(
                "B",
                style: TextStyle(
                    fontFamily: 'FORTE',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 40),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.push(  context,
                        MaterialPageRoute(builder: (context) => ListViewBuilderExample(),)
                    );
                  },
                  child: Text(
                    "About us",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                MaterialButton(
                  onPressed: () {
                    Navigator.push(  context,
                        MaterialPageRoute(builder: (context) => Developer(),)
                    );
                  },
                  child: Text(
                    "About Developer",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
