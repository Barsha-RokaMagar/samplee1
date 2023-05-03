import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.red[500],),
        Icon(Icons.star, color: Colors.red[500],),
        Icon(Icons.star, color: Colors.red[500],),
        Icon(Icons.star, color: Colors.black,),
        Icon(Icons.star, color: Colors.black,),
      ],
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          stars,
        Text('170 reviews',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,

        ),),
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 20,
    );

    final iconList = DefaultTextStyle(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Column(
              children: [
                Icon(Icons.kitchen,color: Colors.green[500],),
          Text('Prep'),
          Text('25 min')

            ],
          ),
        Column(
      children: [
      Icon(Icons.kitchen,color: Colors.green[500],),
        Text('Cook'),
    Text('1 hr'),
      ],
    ),
        Column(
        children: [
        Icon(Icons.kitchen,color: Colors.green[500],),
    Text('Feeds'),
    Text('4-6')
        ],
    ),
      ],
          ),
        )
    );

    final leftcolumn = Container(
      child: Column(
        children: [
          Text('Strawberry Pavlova'),
          Text('Description'),
          ratings,
          iconList,

        ],
      ),
    );
    return MaterialApp(
      title: 'Demo page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Demo'),
        ),
        body:
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 30  ),
              height: 600,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: leftcolumn,
                     
                    ),
                    SizedBox(
                      width: 440,
                      child: Image.asset('assests/flower.jpg'),
                    )
                  ],
                ),
              ),
            ),
          )

        // Row(
        // mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Icon(Icons.star, color: Colors.red[500],),
        //     Icon(Icons.star, color: Colors.red[500],),
        //     Icon(Icons.star, color: Colors.red[500],),
        //     Icon(Icons.star, color: Colors.black,),
        //     Icon(Icons.star, color: Colors.black,),
        //     Text('170 reviews',style: TextStyle(
        //       color: Colors.black,
        //       fontWeight: FontWeight.w800,
        //       fontFamily: 'Roboto',
        //       letterSpacing: 0.5,
        //       fontSize: 20,
        //
        //     ),),
        //
        //   ],
        // ),
      ),
    );
  }
}



