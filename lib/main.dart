import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cupertino Card Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 4,
                      decoration: BoxDecoration(
                          color: Color(0xFFef7918),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Cupertino clickable cards',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            Row(children: <Widget>[
              Expanded(
                child: CupertinoButton(
                  child: Container(
                    height: 175,
                    width: 175,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/weather.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Text("Weather",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  onPressed: () async {
                    print('Button pressed');
                  },
                ),
              ),
              Expanded(
                child: CupertinoButton(
                  child: Container(
                    height: 175,
                    width: 175,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/food.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Text(
                        "Food",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print('Button pressed');
                  },
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                child: CupertinoButton(
                  child: Container(
                    height: 175,
                    width: 175,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/pizza.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Text("Pizza",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  onPressed: () async {
                    print('Button pressed');
                  },
                ),
              ),
              Expanded(
                child: CupertinoButton(
                  child: Container(
                    height: 175,
                    width: 175,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/workout.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Text(
                        "Workout",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    print('Button pressed');
                  },
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
