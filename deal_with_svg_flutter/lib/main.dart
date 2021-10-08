import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Deal With SVG Flutter",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String demoUrl = 'https://www.svgrepo.com/show/2046/dog.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Share Anything Flutter Demo"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          SvgPicture.network(
            demoUrl,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/zero.svg",
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/first.svg",
            // color: Colors.blueGrey[100],
            matchTextDirection: true,
            height: 300,
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/second.svg",
            matchTextDirection: false,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/third.svg",
            matchTextDirection: true,
            height: 300,
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/zero.svg",
            alignment: Alignment.bottomCenter,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/first.svg",
            color: Colors.black,
            matchTextDirection: true,
            height: 300,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: SvgPicture.asset(
          "assets/first.svg",
          color: Colors.black,
          matchTextDirection: true,
          height: 50,
        ),
      ),
    );
  }
}
