import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => SecondScreen(),
      // When navigating to the "/third" route, build the SecondScreen widget.
      '/third': (context) => ThirdScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(),
          Text(
            'Yoga',
            style: TextStyle(
                height: 5,
                color: Colors.blue[300],
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/1.png'),
            backgroundColor: Colors.yellow[200],
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              '\nYoga is a mind and body practice with \nancient indian philosophy. Various styles of \nyoga combines physical postures, breathing\n techniques, and meditation or relaxation',
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(10),
              height: 60.0,
              width: 300.0,
              child: RaisedButton(
                  color: Colors.blueGrey,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.red)),
                  child: Text(
                    'Let\'s start',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/second');
                  }))
        ]),
      )),
    ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Column(children: <Widget>[
              SizedBox(),
              Text(
                'Running',
                style: TextStyle(
                    height: 5,
                    color: Colors.blue[300],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('assets/3.png'),
                backgroundColor: Colors.yellow[200],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    '\nAs a form of cardiac exercise,thats easily accesible,running is one of the most straightforward ways to get the important benefits of exercise',
                    style: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(10),
                height: 60.0,
                width: 300.0,
                child: RaisedButton(
                  color: Colors.blueGrey,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.red)),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    // Navigate back to the first screen by popping the current route
                    // off the stack.
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/third');
                  },
                ),
              )
            ]))));
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(children: <Widget>[
        SizedBox(),
        Text(
          'Gym',
          style: TextStyle(
              height: 5, color: Colors.blue[300], fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        CircleAvatar(
          radius: 150,
          backgroundImage: AssetImage('assets/2.png'),
          backgroundColor: Colors.yellow[200],
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Going to the gym is good for your health and fitness ! We increase the potential of our body to work through exercising and working out',
              style: TextStyle(   
                  color: Colors.blueGrey, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 30),
        Container(
          padding: EdgeInsets.all(10),
            height: 60.0,
            width: 300.0,
            child: RaisedButton(
                color: Colors.blueGrey,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.red)),
                child: Text(
                  'End',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  // Navigate to the Third screen using a named route.
                  Navigator.pop(context);
                }))
      ])),
    ));
  }
}
