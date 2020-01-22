import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:her_voice/utils/utilities.dart';
import 'package:map_launcher/map_launcher.dart';

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

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String page = "open";
  String homeID = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer:
          navigationDrawer(context),
      body: showPage(context)
    );
  }

  showPage(context){
    switch(page){
      case "open":
        return DefaultTabController(
            length: 2,
            child: TabBarView(
                children: [
                  openPage(context),
                  registrationPage(context),
                ]
            )
        );
        break;
      case "home":
        return theHomePage(context);

    }
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
          Spacer(),
          Container(
            height: Utilities().componentHeight(29, context),
            width: Utilities().componentWidth(100, context),
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
                          setState(() {
                            homeID = "register";
                            page = "home";
                          });
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
                          setState(() {
                            homeID = "login";
                            page = "home";
                          });
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
          Spacer(),
          Container(
            height: Utilities().componentHeight(29, context),
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
  theHomePage(context){
    switch(homeID){
      case "register":
        return registrationForm(context);
        break;

      case "login":
        return loginForm(context);
        break;

      case "home":
        return homepage(context);
        break;

      case "reviews":
        return reviewsPage(context);
        break;

      case "my_review":
        return myReviews(context);
        break;

      default:
        return Container();
        break;
    }
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

                  InkWell(
                    onTap: (){
                      setState(() {
                        homeID = "home";
                        page = "home";
                      });
                    },
                    child: Container(
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

                  InkWell(
                    onTap: (){
                      setState(() {
                        homeID = "login";
                        page = "home";
                      });
                    },
                    child: Container(
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  homepage(context){
    return Container(
      height: Utilities().componentHeight(100, context),
      width: Utilities().componentWidth(100, context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SafeArea(
            top: true,
            child: Container()
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: Utilities().componentHeight(9, context),
            width: Utilities().componentWidth(100, context),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    _scaffoldKey.currentState.openDrawer();
                  },
                  child: Container(
                    height: Utilities().componentHeight(10, context),
                    width: Utilities().componentWidth(20, context),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: Utilities().componentWidth(15, context),
                        width: Utilities().componentWidth(15, context),
                        decoration: new BoxDecoration(
                          border: Border.all(color: Colors.deepPurple),
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1565367393/jade/profiles/user.jpg')
                          )
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: Utilities().componentHeight(10, context),
                  width: Utilities().componentWidth(70, context),
                  child: Center(
                    child: Container(
                      height: Utilities().componentHeight(5, context),
                      width: Utilities().componentWidth(60, context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Good morning, ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                "Granson,",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.deepPurple
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Select the Restaurant you're in",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: Utilities().componentWidth(100, context),
            color: Color.fromARGB(100,211,211,211),
          ),
          SizedBox(height: 7,),
          Container(
            height: Utilities().componentHeight(79.5, context),
            width: Utilities().componentWidth(100, context),
            child: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                      delegate: new SliverChildListDelegate(
                          [
                            Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: Utilities().componentHeight(5, context)),
                              height: Utilities().componentHeight(30, context),
                              width: Utilities().componentWidth(100, context),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: Utilities().componentHeight(22, context),
                                    width: Utilities().componentWidth(100, context),
                                    decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)
                                        ),
                                        image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            image: new NetworkImage('https://www.deoudehaven.com/wordpress/wp-content/uploads/2017/01/deoudehaven_DSC5632-1920x1080.jpg')
                                        )
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(22.5, context),
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Utilities().componentHeight(2, context),
                                      ),
                                      height: Utilities().componentHeight(7, context),
                                      width: Utilities().componentWidth(100, context),
                                      child: Row(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              height: Utilities().componentHeight(5, context),
                                              width: Utilities().componentWidth(55, context),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  Text(
                                                    "Chicken Inn",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                  ),
                                                  Text(
                                                    "Select the Restaurant you're in",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w300
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: InkWell(
                                              onTap: (){
                                                setState(() {
                                                  homeID = "reviews";
                                                  page = "home";
                                                });
                                              },
                                              child: Container(
                                                  height: Utilities().componentWidth(7.5, context),
                                                  width: Utilities().componentWidth(35, context),
                                                  color: Colors.deepPurple,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        width: Utilities().componentWidth(26, context),
                                                        child: Center(
                                                          child: Text(
                                                            "Leave Review",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 14
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: Utilities().componentWidth(10, context),
                                                        width: Utilities().componentWidth(7, context),
                                                        margin: EdgeInsets.only(left: Utilities().componentWidth(2, context)),
                                                        child: Center(
                                                            child: Icon(Icons.arrow_forward, color: Colors.white,)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final availableMaps = await MapLauncher.installedMaps;
                                      print(availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

                                      await availableMaps.first.showMarker(
                                        coords: Coords(-1.2327046,36.8767022),
                                        title: "Garden City",
                                        description: "Along Thika Road.",
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(19.5, context),
                                        left: Utilities().componentWidth(75, context),
                                      ),
                                      height: Utilities().componentWidth(10, context),
                                      width: Utilities().componentWidth(10, context),
                                      decoration: new BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                          )],
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.cover,
                                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1579533109/jade/profiles/arrow.jpg')
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: Utilities().componentHeight(5, context)),
                              height: Utilities().componentHeight(30, context),
                              width: Utilities().componentWidth(100, context),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: Utilities().componentHeight(22, context),
                                    width: Utilities().componentWidth(100, context),
                                    decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)
                                        ),
                                        image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            image: new NetworkImage('https://www.deoudehaven.com/wordpress/wp-content/uploads/2017/01/deoudehaven_DSC5632-1920x1080.jpg')
                                        )
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(22.5, context),
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Utilities().componentHeight(2, context),
                                      ),
                                      height: Utilities().componentHeight(7, context),
                                      width: Utilities().componentWidth(100, context),
                                      child: Row(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              height: Utilities().componentHeight(5, context),
                                              width: Utilities().componentWidth(55, context),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  Text(
                                                    "Chicken Inn",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                  ),
                                                  Text(
                                                    "Select the Restaurant you're in",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w300
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: InkWell(
                                              onTap: (){
                                                setState(() {
                                                  homeID = "reviews";
                                                  page = "home";
                                                });
                                              },
                                              child: Container(
                                                  height: Utilities().componentWidth(7.5, context),
                                                  width: Utilities().componentWidth(35, context),
                                                  color: Colors.deepPurple,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        width: Utilities().componentWidth(26, context),
                                                        child: Center(
                                                          child: Text(
                                                            "Leave Review",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 14
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: Utilities().componentWidth(10, context),
                                                        width: Utilities().componentWidth(7, context),
                                                        margin: EdgeInsets.only(left: Utilities().componentWidth(2, context)),
                                                        child: Center(
                                                            child: Icon(Icons.arrow_forward, color: Colors.white,)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final availableMaps = await MapLauncher.installedMaps;
                                      print(availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

                                      await availableMaps.first.showMarker(
                                        coords: Coords(-1.2327046,36.8767022),
                                        title: "Garden City",
                                        description: "Along Thika Road.",
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(19.5, context),
                                        left: Utilities().componentWidth(75, context),
                                      ),
                                      height: Utilities().componentWidth(10, context),
                                      width: Utilities().componentWidth(10, context),
                                      decoration: new BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                          )],
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.cover,
                                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1579533109/jade/profiles/arrow.jpg')
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: Utilities().componentHeight(5, context)),
                              height: Utilities().componentHeight(30, context),
                              width: Utilities().componentWidth(100, context),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: Utilities().componentHeight(22, context),
                                    width: Utilities().componentWidth(100, context),
                                    decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)
                                        ),
                                        image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            image: new NetworkImage('https://www.deoudehaven.com/wordpress/wp-content/uploads/2017/01/deoudehaven_DSC5632-1920x1080.jpg')
                                        )
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(22.5, context),
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Utilities().componentHeight(2, context),
                                      ),
                                      height: Utilities().componentHeight(7, context),
                                      width: Utilities().componentWidth(100, context),
                                      child: Row(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              height: Utilities().componentHeight(5, context),
                                              width: Utilities().componentWidth(55, context),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  Text(
                                                    "Chicken Inn",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                  ),
                                                  Text(
                                                    "Select the Restaurant you're in",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w300
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: InkWell(
                                              onTap: (){
                                                setState(() {
                                                  homeID = "reviews";
                                                  page = "home";
                                                });
                                              },
                                              child: Container(
                                                  height: Utilities().componentWidth(7.5, context),
                                                  width: Utilities().componentWidth(35, context),
                                                  color: Colors.deepPurple,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        width: Utilities().componentWidth(26, context),
                                                        child: Center(
                                                          child: Text(
                                                            "Leave Review",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 14
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: Utilities().componentWidth(10, context),
                                                        width: Utilities().componentWidth(7, context),
                                                        margin: EdgeInsets.only(left: Utilities().componentWidth(2, context)),
                                                        child: Center(
                                                            child: Icon(Icons.arrow_forward, color: Colors.white,)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final availableMaps = await MapLauncher.installedMaps;
                                      print(availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

                                      await availableMaps.first.showMarker(
                                        coords: Coords(-1.2327046,36.8767022),
                                        title: "Garden City",
                                        description: "Along Thika Road.",
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(19.5, context),
                                        left: Utilities().componentWidth(75, context),
                                      ),
                                      height: Utilities().componentWidth(10, context),
                                      width: Utilities().componentWidth(10, context),
                                      decoration: new BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                          )],
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.cover,
                                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1579533109/jade/profiles/arrow.jpg')
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: Utilities().componentHeight(5, context)),
                              height: Utilities().componentHeight(30, context),
                              width: Utilities().componentWidth(100, context),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: Utilities().componentHeight(22, context),
                                    width: Utilities().componentWidth(100, context),
                                    decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)
                                        ),
                                        image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            image: new NetworkImage('https://www.deoudehaven.com/wordpress/wp-content/uploads/2017/01/deoudehaven_DSC5632-1920x1080.jpg')
                                        )
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(22.5, context),
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Utilities().componentHeight(2, context),
                                      ),
                                      height: Utilities().componentHeight(7, context),
                                      width: Utilities().componentWidth(100, context),
                                      child: Row(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              height: Utilities().componentHeight(5, context),
                                              width: Utilities().componentWidth(55, context),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  Text(
                                                    "Chicken Inn",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                  ),
                                                  Text(
                                                    "Select the Restaurant you're in",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w300
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: InkWell(
                                              onTap: (){
                                                setState(() {
                                                  homeID = "reviews";
                                                  page = "home";
                                                });
                                              },
                                              child: Container(
                                                  height: Utilities().componentWidth(7.5, context),
                                                  width: Utilities().componentWidth(35, context),
                                                  color: Colors.deepPurple,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        width: Utilities().componentWidth(26, context),
                                                        child: Center(
                                                          child: Text(
                                                            "Leave Review",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 14
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: Utilities().componentWidth(10, context),
                                                        width: Utilities().componentWidth(7, context),
                                                        margin: EdgeInsets.only(left: Utilities().componentWidth(2, context)),
                                                        child: Center(
                                                            child: Icon(Icons.arrow_forward, color: Colors.white,)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final availableMaps = await MapLauncher.installedMaps;
                                      print(availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

                                      await availableMaps.first.showMarker(
                                        coords: Coords(-1.2327046,36.8767022),
                                        title: "Garden City",
                                        description: "Along Thika Road.",
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(19.5, context),
                                        left: Utilities().componentWidth(75, context),
                                      ),
                                      height: Utilities().componentWidth(10, context),
                                      width: Utilities().componentWidth(10, context),
                                      decoration: new BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                          )],
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.cover,
                                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1579533109/jade/profiles/arrow.jpg')
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(bottom: Utilities().componentHeight(5, context)),
                              height: Utilities().componentHeight(30, context),
                              width: Utilities().componentWidth(100, context),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: Utilities().componentHeight(22, context),
                                    width: Utilities().componentWidth(100, context),
                                    decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)
                                        ),
                                        image: new DecorationImage(
                                            fit: BoxFit.cover,
                                            image: new NetworkImage('https://www.deoudehaven.com/wordpress/wp-content/uploads/2017/01/deoudehaven_DSC5632-1920x1080.jpg')
                                        )
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(22.5, context),
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Utilities().componentHeight(2, context),
                                      ),
                                      height: Utilities().componentHeight(7, context),
                                      width: Utilities().componentWidth(100, context),
                                      child: Row(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              height: Utilities().componentHeight(5, context),
                                              width: Utilities().componentWidth(55, context),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: <Widget>[
                                                  Text(
                                                    "Chicken Inn",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500
                                                    ),
                                                  ),
                                                  Text(
                                                    "Select the Restaurant you're in",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w300
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: InkWell(
                                              onTap: (){
                                                setState(() {
                                                  homeID = "reviews";
                                                  page = "home";
                                                });
                                              },
                                              child: Container(
                                                  height: Utilities().componentWidth(7.5, context),
                                                  width: Utilities().componentWidth(35, context),
                                                  color: Colors.deepPurple,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        width: Utilities().componentWidth(26, context),
                                                        child: Center(
                                                          child: Text(
                                                            "Leave Review",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 14
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: Utilities().componentWidth(10, context),
                                                        width: Utilities().componentWidth(7, context),
                                                        margin: EdgeInsets.only(left: Utilities().componentWidth(2, context)),
                                                        child: Center(
                                                            child: Icon(Icons.arrow_forward, color: Colors.white,)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final availableMaps = await MapLauncher.installedMaps;
                                      print(availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

                                      await availableMaps.first.showMarker(
                                        coords: Coords(-1.2327046,36.8767022),
                                        title: "Garden City",
                                        description: "Along Thika Road.",
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        top: Utilities().componentHeight(19.5, context),
                                        left: Utilities().componentWidth(75, context),
                                      ),
                                      height: Utilities().componentWidth(10, context),
                                      width: Utilities().componentWidth(10, context),
                                      decoration: new BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,
                                          )],
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.cover,
                                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1579533109/jade/profiles/arrow.jpg')
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                      )
                  )
                ]
            ),
          )
        ],
      )
    );
  }
  reviewsPage(context){
    return Container(
      height: Utilities().componentHeight(100, context),
      width: Utilities().componentWidth(100, context),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: Utilities().componentHeight(30, context),
                width: Utilities().componentWidth(100, context),
                child: Image.asset(
                    "assets/images/default.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Color.fromARGB(200, 102, 102, 255),
                height: Utilities().componentHeight(30, context),
                width: Utilities().componentWidth(100, context),
              ),
              Container(
                height: Utilities().componentWidth(10, context),
                width: Utilities().componentWidth(100, context),
                margin: EdgeInsets.only(
                  top:  Utilities().componentHeight(10, context),
                  left:  Utilities().componentWidth(5, context),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: Utilities().componentWidth(10, context),
                      width: Utilities().componentWidth(10, context),
                      margin: EdgeInsets.only(
                        right:  Utilities().componentWidth(5, context),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Icon(Icons.arrow_back)
                      ),
                    ),
                    Text(
                      "You are in Chicken Inn!",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    homeID = "home";
                    page = "home";
                  });
                },
                child: Container(
                  height: Utilities().componentWidth(35, context),
                  width: Utilities().componentWidth(35, context),
                  margin: EdgeInsets.only(
                    left:  Utilities().componentWidth(32.5, context),
                    top: Utilities().componentHeight(22.5, context),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new ExactAssetImage('assets/images/default.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Utilities().componentHeight(2.5, context),),
          Text("Nairobi Kenya"),
          Text(
              "Granson Oyombe",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: Utilities().componentHeight(1.5, context),),
          Container(
            height: Utilities().componentHeight(8, context),
            width: Utilities().componentWidth(100, context),
            child: Row(
              children: <Widget>[
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(1);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(190,255,39,0),
                      border: Border.all(color: Color.fromARGB(190,255,39,0),
                          width: 3),
                    ),
                    child: Center(child: Text("1", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(2);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Color.fromARGB(150,255,39,0),
                          width: 3),
                    ),
                    child: Center(child: Text("2", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(3);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Color.fromARGB(100,255,39,0),
                          width: 3),
                    ),
                    child: Center(child: Text("3", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(4);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Color.fromARGB(120,246,188,10),
                          width: 3
                      ),
                    ),
                    child: Center(child: Text("4", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(5);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(170,246,188,10),
                      border: Border.all(
                          color: Color.fromARGB(170,246,188,10),
                        width: 3
                      ),
                    ),
                    child: Center(child: Text("5", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            height: Utilities().componentHeight(8, context),
            width: Utilities().componentWidth(100, context),
            child: Row(
              children: <Widget>[
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(6);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Color.fromARGB(250,246,188,10),
                          width: 3
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("6", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(7);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromARGB(90, 35,189,0),
                          width: 3
                      ),
                    ),
                    child: Center(child: Text("7", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(8);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromARGB(120, 35,189,0),
                          width: 3),
                    ),
                    child: Center(child: Text("8", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(9);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromARGB(170, 35,189,0),
                          width: 3),
                    ),
                    child: Center(child: Text("9", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    showToast(10);
                  },
                  child: Container(
                    height: Utilities().componentWidth(15, context),
                    width: Utilities().componentWidth(15, context),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(180, 35,189,0),
                      border: Border.all(
                          color: Color.fromARGB(180, 35,189,0),
                          width: 3),
                    ),
                    child: Center(child: Text("10", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),)),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: Utilities().componentHeight(1.5, context),),
          Text(
            "How is your experience?",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: Utilities().componentHeight(1.5, context),),
          Container(
            width: Utilities().componentWidth(70, context),
            height: Utilities().componentHeight(5, context),
            child: Text(
              "Your feedback will help us improve our customer experience",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: Utilities().componentWidth(90, context),
            height:Utilities().componentHeight(15, context),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.grey,
                blurRadius: 1.0,
              )],
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: TextField(
              // controller: firstName,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Additional comments',
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              maxLines: 7,
              style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          SizedBox(height: Utilities().componentHeight(1.5, context),),
          InkWell(
            onTap: (){
              setState(() {
                homeID = "my_review";
                page = "home";
              });
            },
            child: Container(
                height: Utilities().componentWidth(10, context),
                width: Utilities().componentWidth(90, context),
                color: Colors.deepPurple,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: Utilities().componentWidth(70, context),
                      padding: EdgeInsets.only(left: Utilities().componentWidth(2, context)),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      height: Utilities().componentWidth(10, context),
                      width: Utilities().componentWidth(7, context),
                      margin: EdgeInsets.only(left: Utilities().componentWidth(2, context)),
                      child: Center(
                          child: Icon(Icons.arrow_forward, color: Colors.white,)
                      ),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }

  myReviews(context){
    return Container(
        height: Utilities().componentHeight(100, context),
        width: Utilities().componentWidth(100, context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
                top: true,
                child: Container()
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: Utilities().componentHeight(10, context),
                width: Utilities().componentWidth(90, context),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        _scaffoldKey.currentState.openDrawer();
                      },
                      child: Container(
                        height: Utilities().componentHeight(10, context),
                        width: Utilities().componentWidth(20, context),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: Utilities().componentWidth(15, context),
                            width: Utilities().componentWidth(15, context),
                            decoration: new BoxDecoration(
                                border: Border.all(color: Colors.deepPurple),
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1565367393/jade/profiles/user.jpg')
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: Utilities().componentHeight(10, context),
                      width: Utilities().componentWidth(50, context),
                      child: Center(
                        child: Container(
                          height: Utilities().componentHeight(5, context),
                          width: Utilities().componentWidth(60, context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Good morning, ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  Text(
                                    "Granson,",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.deepPurple
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "You are in Garden Estate",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              width: Utilities().componentWidth(100, context),
              color: Color.fromARGB(100,211,211,211),
            ),
            Container(
              height: Utilities().componentHeight(70, context),
              width: Utilities().componentWidth(100, context),
              margin: EdgeInsets.only(top: Utilities().componentWidth(5, context),),
              child: CustomScrollView(
                  slivers: <Widget>[
                    SliverList(
                        delegate: new SliverChildListDelegate(
                            [
                              Center(
                                child: Container(
                                  height: Utilities().componentHeight(25, context),
                                  width: Utilities().componentWidth(95, context),
                                  margin: EdgeInsets.only(
                                    bottom: Utilities().componentHeight(3, context),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(color: Color.fromARGB(170,211,211,211), blurRadius: 2.0)
                                      ]
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 10),
                                          height: Utilities().componentHeight(5.5, context),
                                          width: Utilities().componentWidth(90, context),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: Utilities().componentHeight(5, context),
                                                  width: Utilities().componentWidth(12.5, context),
                                                  child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Container(
                                                      height: Utilities().componentWidth(10, context),
                                                      width: Utilities().componentWidth(10, context),
                                                      decoration: new BoxDecoration(
                                                          border: Border.all(color: Colors.deepPurple),
                                                          shape: BoxShape.circle,
                                                          image: new DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1565367393/jade/profiles/user.jpg')
                                                          )
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: Utilities().componentWidth(10, context),
                                                  width: Utilities().componentWidth(65, context),
                                                  child: Container(
                                                    height: Utilities().componentHeight(5, context),
                                                    width: Utilities().componentWidth(60, context),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              "Chicken Inn ",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "3:10 PM Tuesday, November 12, 2020",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w500
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        top: 2
                                                    ),
                                                    height: Utilities().componentHeight(2, context),
                                                    width: Utilities().componentWidth(10, context),
                                                    child: Icon(Icons.more_horiz),
                                                  )
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left:10
                                        ),
                                        height: Utilities().componentHeight(15, context),
                                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  height: Utilities().componentHeight(25, context),
                                  width: Utilities().componentWidth(95, context),
                                  margin: EdgeInsets.only(
                                    bottom: Utilities().componentHeight(3, context),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(color: Color.fromARGB(170,211,211,211), blurRadius: 2.0)
                                      ]
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 10),
                                          height: Utilities().componentHeight(5.5, context),
                                          width: Utilities().componentWidth(90, context),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: Utilities().componentHeight(5, context),
                                                  width: Utilities().componentWidth(12.5, context),
                                                  child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Container(
                                                      height: Utilities().componentWidth(10, context),
                                                      width: Utilities().componentWidth(10, context),
                                                      decoration: new BoxDecoration(
                                                          border: Border.all(color: Colors.deepPurple),
                                                          shape: BoxShape.circle,
                                                          image: new DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1565367393/jade/profiles/user.jpg')
                                                          )
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: Utilities().componentWidth(10, context),
                                                  width: Utilities().componentWidth(65, context),
                                                  child: Container(
                                                    height: Utilities().componentHeight(5, context),
                                                    width: Utilities().componentWidth(60, context),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              "Chicken Inn ",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "3:10 PM Tuesday, November 12, 2020",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w500
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        top: 2
                                                    ),
                                                    height: Utilities().componentHeight(2, context),
                                                    width: Utilities().componentWidth(10, context),
                                                    child: Icon(Icons.more_horiz),
                                                  )
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left:10
                                        ),
                                        height: Utilities().componentHeight(15, context),
                                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  height: Utilities().componentHeight(25, context),
                                  width: Utilities().componentWidth(95, context),
                                  margin: EdgeInsets.only(
                                    bottom: Utilities().componentHeight(3, context),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(color: Color.fromARGB(170,211,211,211), blurRadius: 2.0)
                                      ]
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 10),
                                          height: Utilities().componentHeight(5.5, context),
                                          width: Utilities().componentWidth(90, context),
                                          child: Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: Utilities().componentHeight(5, context),
                                                  width: Utilities().componentWidth(12.5, context),
                                                  child: Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Container(
                                                      height: Utilities().componentWidth(10, context),
                                                      width: Utilities().componentWidth(10, context),
                                                      decoration: new BoxDecoration(
                                                          border: Border.all(color: Colors.deepPurple),
                                                          shape: BoxShape.circle,
                                                          image: new DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1565367393/jade/profiles/user.jpg')
                                                          )
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: Utilities().componentWidth(10, context),
                                                  width: Utilities().componentWidth(65, context),
                                                  child: Container(
                                                    height: Utilities().componentHeight(5, context),
                                                    width: Utilities().componentWidth(60, context),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              "Chicken Inn ",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.w500
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "3:10 PM Tuesday, November 12, 2020",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.w500
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        top: 2
                                                    ),
                                                    height: Utilities().componentHeight(2, context),
                                                    width: Utilities().componentWidth(10, context),
                                                    child: Icon(Icons.more_horiz),
                                                  )
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left:10
                                        ),
                                        height: Utilities().componentHeight(15, context),
                                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]
                        )
                    )
                  ]
              ),
            )
          ],
        )
    );
  }

  navigationDrawer(context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SafeArea(
            child: Container(),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: Utilities().componentHeight(10, context),
            width: Utilities().componentWidth(100, context),
            child: Row(
              children: <Widget>[
                Container(
                  height: Utilities().componentHeight(10, context),
                  width: Utilities().componentWidth(20, context),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: Utilities().componentWidth(15, context),
                      width: Utilities().componentWidth(15, context),
                      decoration: new BoxDecoration(
                          border: Border.all(color: Colors.deepPurple),
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage('https://res.cloudinary.com/dolwj4vkq/image/upload/v1565367393/jade/profiles/user.jpg')
                          )
                      ),
                    ),
                  ),
                ),
                Container(
                  height: Utilities().componentHeight(10, context),
                  width: Utilities().componentWidth(40, context),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      height: Utilities().componentHeight(5, context),
                      width: Utilities().componentWidth(60, context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            "Good morning, ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            "Granson Oyombe",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: Utilities().componentWidth(100, context),
            color: Color.fromARGB(100,211,211,211),
          ),
          ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              onTap: (){
                // Navigator.push(context, SlideRightRoute(page: AppointmentsPageWidget()));
              }
          ),
          ListTile(
              title: Text('My Reviews'),
              onTap: (){
                // Navigator.push(context, SlideRightRoute(page: MedicalRecordsWidget()));
              }
          ),
          ListTile(
              title: Text('Settings'),
              onTap: (){
                // Navigator.push(context, SlideRightRoute(page: MyOrders()));
              }
          ),
          ListTile(
              title: Text('Logout'),
              onTap: (){
                // Navigator.push(context, SlideRightRoute(page: MyOrders()));
              }
          ),

        ],
      ),
    );
  }
  showToast(int number){
    Fluttertoast.showToast(
        msg: "Rated :" + number.toString() ,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 2,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
