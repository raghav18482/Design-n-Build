import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
      debugShowCheckedModeBanner: false,
    home: ListViewBuilderExample(),
  ),
);

class ListViewBuilderExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal[200],
        title: Text('Our expert'),
      ),
      body: Center(
        child: LayoutBuilder(
            builder: (context, constraints) {
            if (constraints.maxWidth > 1200) {
            return GridListExample();
            } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
            return GridListExample();
            } else {
            return MobileGridListExample();
            }
            },
            ),
      ),
    );
  }
}

class GridListExample extends StatelessWidget {
  const GridListExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this would produce 2 rows.
      crossAxisCount: 3,
      scrollDirection: Axis.vertical,
      // Generate 100 Widgets that display their index in the List
      children: <Widget>[

//     


//        
        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        "https://www.astroblessings.com/img/vastu-rishi-were-great.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(decorationColor:  Color(0xff213A50),
                        ),
                      ),
                    )
                    ),
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[Text(
                  '            Dr. Lakhpat Rai Vyas ',
                  style: TextStyle(
                      fontFamily: 'FORTE',
                      color: Colors.brown,
                      fontSize: 30),
                ),
                  Text(
                    '\n -Vastu Rishi\n (Gold Madalist)  ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//                 
                ],
              ),
            ],
          ),
        ),



//       
        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRJohjOE1LLPOLqjYdddpQbWYqRgtW7FM-R2Q&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                    ),

                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '            Er. Sandeep Rankawat',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),
                  Text(
                    '\n- Project Planner \n - Executer',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//                 
                ],
              ),
            ],
          ),
        ),


        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs2/99441130/original/a04612664529b7f6c96100d9527b7db2b043f8ea/design-concrete-structures-i-am-structural-engineer-son-of-structural-engineer.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '                 Er.Mukesh Khatri',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),
                  Text(
                    '\n- Structureal Engineer',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//              
                ],
              ),
            ],
          ),
        ),


        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[

                    Positioned.fill(
                      child: Image.network(
                        'https://www.bergerpaints.com/resources/images/vertual-painter/interior-exterior.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),

                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '              Er.Vikeram Gehlot',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),
                  Text(
                    '\n- Interior & Exterior Designer',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),



        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        'https://5.imimg.com/data5/CH/JO/GLADMIN-5531694/jyotish-scientific-research-centre-500x500.jpg',

                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ' ',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,

                children: <Widget>[
                  Text(
                    '              Ms. Sangeeta Suthar   ',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),

                  Text(
                    ' \n- vastu \n - interior Designer \n - Numerologist \n - Naturapathy ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),





//
        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        'https://i0.wp.com/vedicfeed.com/wp-content/uploads/2018/12/Jyotish-Shastra.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '                 Pandit Maheshanand',
                style: TextStyle(
                    fontFamily: 'FORTE',
                    color: Colors.brown,
                    fontSize: 30),
                  ),
                  Text(
                    '\n- Astrologer ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),



        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[

              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        "assets/images/lp_image.png",
                        fit: BoxFit.fitWidth,

                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ' ',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '                    Mr. Pankaj     ',
                style: TextStyle(
                    fontFamily: 'FORTE',
                    color: Colors.brown,
                    fontSize: 30),

                  ),

                  Text(
                    '\n- Consultant ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),



      ],
    );
  }
}


class MobileGridListExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),

            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        "https://www.astroblessings.com/img/vastu-rishi-were-great.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(decorationColor:  Color(0xff213A50),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[Text(
                  'Dr. Lakhpat Rai Vyas ',
                  style: TextStyle(
                      fontFamily: 'FORTE',
                      color: Colors.brown,
                      fontSize: 30),
                ),
                  Text(
                    '\n -Vastu Rishi\n (Gold Madalist)  ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),



//
        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),

            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRJohjOE1LLPOLqjYdddpQbWYqRgtW7FM-R2Q&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                    ),

                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Er. Sandeep Rankawat',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),
                  Text(
                    '\n- Project Planner \n - Executer',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),


        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),

            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs2/99441130/original/a04612664529b7f6c96100d9527b7db2b043f8ea/design-concrete-structures-i-am-structural-engineer-son-of-structural-engineer.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Er.Mukesh Khatri',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),
                  Text(
                    '\n- Structureal Engineer',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),


        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),

            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[

                    Positioned.fill(
                      child: Image.network(
                        'https://www.bergerpaints.com/resources/images/vertual-painter/interior-exterior.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),

                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Er.Vikeram Gehlot',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),
                  Text(
                    '\n- Interior & Exterior  Designer',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),



        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),

            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        'https://5.imimg.com/data5/CH/JO/GLADMIN-5531694/jyotish-scientific-research-centre-500x500.jpg',

                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ' ',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,

                children: <Widget>[
                  Text(
                    'Ms. Sangeeta Suthar   ',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),

                  Text(
                    ' \n- vastu \n - interior Designer \n - Numerologist \n - Naturapathy ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),





//
        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),

            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        'https://i0.wp.com/vedicfeed.com/wp-content/uploads/2018/12/Jyotish-Shastra.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pandit Maheshanand',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),
                  ),
                  Text(
                    '\n- Astrologer ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),



        Card(
          color: Colors.teal[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),

            ),
          ),
          elevation: 600.0,
          child: Column(
            children: <Widget>[

              SizedBox(
                height: 180.0,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        "assets/images/lp_image.png",
                        fit: BoxFit.fitWidth,

                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      left: 16.0,
                      right: 16.0,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ' ',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Mr. Pankaj     ',
                    style: TextStyle(
                        fontFamily: 'FORTE',
                        color: Colors.brown,
                        fontSize: 30),

                  ),

                  Text(
                    '\n- Consultant ',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white),
                  ),
//
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
  
}