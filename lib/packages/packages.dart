import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Detail(),
  ),
);

class Detail extends StatefulWidget {
  @override
  DetailState createState() =>DetailState();
}

class DetailState extends State<Detail> with SingleTickerProviderStateMixin {

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff071930),
      appBar: AppBar(
        backgroundColor: Color(0xff213A50),
        title: Text(
            'Details'
        ),
      ),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'We Deal in',
                style: TextStyle(
                    fontFamily: 'bauhs93',
                    color: Colors.red,
                    fontSize:_iconAnimation.value * 55),
              ),
            ),
          ),
           Expanded(
             flex: 5,

             child: ReusableCard(

               colour: Color(0xff071930),

               cardChild: ListTileExample(),
             ),
           ),
          ],
      ),
    );
  }
}


class ListTileExample extends StatelessWidget {
  const ListTileExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const listTiles = <Widget>[
      ListTile(
        leading: Icon(Icons.dashboard,
          color: Colors.blue,
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.forward,
          color: Colors.white,
        ),
        title: Text(
            'Naksha with Vastu For Residential, commercial & Industrial',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.forward,
          color: Colors.white,
        ),
        title: Text(
          'Interior Designing',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.forward,
          color: Colors.white,
        ),
        title: Text(
          'Exterior Designing',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.forward,
          color: Colors.white,
        ),
        title: Text(
          'Planing by Vastu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.forward,
          color: Colors.white,
        ),
        title: Text(
          'Renovationo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.forward,
          color: Colors.white,
        ),
        title: Text(
          'RCC Designing',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.forward,
          color: Colors.white,
        ),
        title: Text(
          'All type of construction work',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.forward,
          color: Colors.white,
        ),
        title: Text(
          'All type of problem solution by vastu and astrology ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      Divider(),

    ];
    // Directly returning a list of widgets is not common practice.
    // People usually use ListView.builder, c.f. "ListView.builder" example.
    // Here we mainly demostrate ListTile.
    return ListView(children: listTiles);
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress,});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xff213A50), const Color(0xff071930)],
            )
        ),
      ),
    );
  }
}

