import 'package:flutter/material.dart';
import 'package:her_voice/registration/registration.dart';
import 'package:her_voice/utils/utilities.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: TabBarView(
            children: [
              openPage(context),
              registrationPage(context),
              loginForm(context),
              registrationForm(context),
            ]
        )
      )
    );
  }

  openPage(context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SafeArea(
              top: true,
              child: Container()
          ),
          Container(
              height: Utilities().componentHeight(50, context),
              width: Utilities().componentWidth(100, context),
              margin: EdgeInsets.only(
                  top: Utilities().componentHeight(10, context),
                  right: Utilities().componentWidth(10, context),
                  left: Utilities().componentWidth(10, context)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "HerVoice App",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.deepPurple
                    ),
                  ),
                  SizedBox(height: Utilities().componentHeight(5, context)),
                  Row(
                    children: <Widget>[
                      Container(
                        height: Utilities().componentHeight(6, context),
                        width: Utilities().componentWidth(6, context),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: Utilities().componentWidth(5, context),
                            width: Utilities().componentWidth(5, context),
                            margin: EdgeInsets.only(right: Utilities().componentWidth(2, context)),
                            color: Colors.red,
                            child: Image.asset(
                              'assets/images/check.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: Utilities().componentHeight(6, context),
                        width: Utilities().componentWidth(65, context),
                        child: Text(
                          "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Utilities().componentHeight(3, context)),
                  Row(
                    children: <Widget>[
                      Container(
                        height: Utilities().componentHeight(6, context),
                        width: Utilities().componentWidth(6, context),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: Utilities().componentWidth(5, context),
                            width: Utilities().componentWidth(5, context),
                            margin: EdgeInsets.only(right: Utilities().componentWidth(2, context)),
                            color: Colors.red,
                            child: Image.asset(
                              'assets/images/check.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: Utilities().componentHeight(6, context),
                        width: Utilities().componentWidth(65, context),
                        child: Text(
                          "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Utilities().componentHeight(3, context)),
                  Row(
                    children: <Widget>[
                      Container(
                        height: Utilities().componentWidth(3, context),
                        width: Utilities().componentWidth(3, context),
                        margin: EdgeInsets.only(right: Utilities().componentWidth(2, context)),
                        color: Colors.deepPurpleAccent,
                      ),
                      Container(
                        height: Utilities().componentWidth(3, context),
                        width: Utilities().componentWidth(3, context),
                        color: Color.fromARGB(100, 166, 161, 255),
                      )
                    ],
                  )
                ],
              )
          ),
          Container(
            height: Utilities().componentHeight(37, context),
            width: Utilities().componentWidth(100, context),
            color: Colors.red,
            child: Image.asset(
              'assets/images/research.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
  registrationPage(context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SafeArea(
              top: true,
              child: Container()
          ),
          Container(
              height: Utilities().componentHeight(50, context),
              width: Utilities().componentWidth(100, context),
              margin: EdgeInsets.only(
                  top: Utilities().componentHeight(10, context),
                  right: Utilities().componentWidth(10, context),
                  left: Utilities().componentWidth(10, context)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Manage Reviews",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.deepPurple
                    ),
                  ),
                  SizedBox(height: Utilities().componentHeight(5, context)),
                  Row(
                    children: <Widget>[
                      Container(
                        height: Utilities().componentHeight(10, context),
                        width: Utilities().componentWidth(6, context),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: Utilities().componentWidth(5, context),
                            width: Utilities().componentWidth(5, context),
                            margin: EdgeInsets.only(right: Utilities().componentWidth(2, context)),
                            color: Colors.red,
                            child: Image.asset(
                              'assets/images/check.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: Utilities().componentHeight(10, context),
                        width: Utilities().componentWidth(69, context),
                        child: Text(
                          "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Utilities().componentHeight(7, context)),
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Registration()));
                        },
                        child: Container(
                          height: Utilities().componentWidth(10, context),
                          width: Utilities().componentWidth(35, context),
                          margin: EdgeInsets.only(
                              right: Utilities().componentWidth(2, context),
                              left: Utilities().componentWidth(5, context)),
                          color: Colors.deepPurple,
                          child: Center(
                            child: Text(
                                "Registration",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          print("clicked");
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Registration()));
                        },
                        child: Container(
                          height: Utilities().componentWidth(10, context),
                          width: Utilities().componentWidth(35, context),
                          color: Colors.deepPurple,
                          child: Center(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                      right: Utilities().componentWidth(10, context),
                                      left: Utilities().componentWidth(5, context)),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18
                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_forward, color: Colors.white,)
                              ],
                            )
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
          ),
          Container(
            height: Utilities().componentHeight(37, context),
            width: Utilities().componentWidth(100, context),
            color: Colors.red,
            child: Image.asset(
              'assets/images/date.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
  loginForm(context){
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
                top: true,
                child: Container()
            ),
            Container(
              margin: EdgeInsets.only(
                  top: Utilities().componentHeight(15, context),
                  left: Utilities().componentWidth(5, context)
              ),
              child:  Utilities().circularLogo(context),
            ),
            Container(
                margin: EdgeInsets.only(
                        top: Utilities().componentHeight(10, context),
                ),
              child: Column(
                children: <Widget>[
                  Container(
                      width: Utilities().componentWidth(90, context),
                      height:Utilities().componentHeight(3, context),
                      child: Text(
                        "USERNAME",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )
                  ),
                  Container(
                    width: Utilities().componentWidth(90, context),
                    height:Utilities().componentHeight(7, context),
                    child: TextField(
                      // controller: firstName,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Firstname',
                          hintStyle: TextStyle(fontSize: 13, color: Color.fromARGB(175,181,177,255)),
                          fillColor: Color.fromARGB(105,185,184,204),
                          filled: true
                      ),
                      style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  Container(
                      width: Utilities().componentWidth(90, context),
                      height:Utilities().componentHeight(3, context),
                      margin: EdgeInsets.only(
                        top: Utilities().componentHeight(3, context),
                      ),
                      child: Text(
                        "PASSWORD",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )
                  ),
                  Container(
                    width: Utilities().componentWidth(90, context),
                    height:Utilities().componentHeight(7, context),
                    child: TextField(
                      // controller: firstName,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 13, color: Color.fromARGB(175,181,177,255)),
                          fillColor: Color.fromARGB(105,185,184,204),
                          filled: true
                      ),
                      style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    width: Utilities().componentWidth(90, context),
                    height:Utilities().componentHeight(7, context),
                      margin: EdgeInsets.only(
                        top: Utilities().componentHeight(3, context),
                      ),
                    color: Colors.deepPurple,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward, color: Colors.white,)
                      ],
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  registrationForm(context){
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
                top: true,
                child: Container()
            ),
            Container(
              margin: EdgeInsets.only(
                  top: Utilities().componentHeight(5, context),
                  left: Utilities().componentWidth(5, context)
              ),
              child:  Utilities().circularLogo(context),
            ),
            Container(
              margin: EdgeInsets.only(
                top: Utilities().componentHeight(5, context),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                      width: Utilities().componentWidth(90, context),
                      height:Utilities().componentHeight(3, context),
                      child: Text(
                        "EMAIL ADDRESS",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )
                  ),
                  Container(
                    width: Utilities().componentWidth(90, context),
                    height:Utilities().componentHeight(7, context),
                    child: TextField(
                      // controller: firstName,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Firstname',
                          hintStyle: TextStyle(fontSize: 13, color: Color.fromARGB(175,181,177,255)),
                          fillColor: Color.fromARGB(105,185,184,204),
                          filled: true
                      ),
                      style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  Container(
                      width: Utilities().componentWidth(90, context),
                      height:Utilities().componentHeight(3, context),
                      margin: EdgeInsets.only(
                        top: Utilities().componentHeight(3, context),
                      ),
                      child: Text(
                        "USERNAME",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )
                  ),
                  Container(
                    width: Utilities().componentWidth(90, context),
                    height:Utilities().componentHeight(7, context),
                    child: TextField(
                      // controller: firstName,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 13, color: Color.fromARGB(175,181,177,255)),
                          fillColor: Color.fromARGB(105,185,184,204),
                          filled: true
                      ),
                      style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  Container(
                      width: Utilities().componentWidth(90, context),
                      height:Utilities().componentHeight(3, context),
                      child: Text(
                        "PASSWORD",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )
                  ),
                  Container(
                    width: Utilities().componentWidth(90, context),
                    height:Utilities().componentHeight(7, context),
                    child: TextField(
                      // controller: firstName,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Firstname',
                          hintStyle: TextStyle(fontSize: 13, color: Color.fromARGB(175,181,177,255)),
                          fillColor: Color.fromARGB(105,185,184,204),
                          filled: true
                      ),
                      style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  Container(
                      width: Utilities().componentWidth(90, context),
                      height:Utilities().componentHeight(3, context),
                      margin: EdgeInsets.only(
                        top: Utilities().componentHeight(3, context),
                      ),
                      child: Text(
                        "CONFIRM PASSWORD",
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )
                  ),
                  Container(
                    width: Utilities().componentWidth(90, context),
                    height:Utilities().componentHeight(7, context),
                    child: TextField(
                      // controller: firstName,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 13, color: Color.fromARGB(175,181,177,255)),
                          fillColor: Color.fromARGB(105,185,184,204),
                          filled: true
                      ),
                      style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      width: Utilities().componentWidth(90, context),
                      height:Utilities().componentHeight(7, context),
                      margin: EdgeInsets.only(
                        top: Utilities().componentHeight(3, context),
                      ),
                      color: Colors.deepPurple,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward, color: Colors.white,)
                        ],
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
