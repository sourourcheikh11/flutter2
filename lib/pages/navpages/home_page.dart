import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}): super(key :key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
@override
  Widget build(BuildContext context) {
  TabController _tabController = TabController(length: 3, vsync: this);

  return Scaffold(
      body: Column(

        children: [
          Container(
            padding: const EdgeInsets.only(top:70, left:20),
            child: Row(
              children: [
                Icon(Icons.menu , size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right:20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color :Colors.grey.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height:40,),
         Container(
           margin: const EdgeInsets.only(left:20 ),
           child: AppLargeText(text: "Discover"),
         ),
          // Using the AppLargeText widget with a sample text.
          SizedBox(height:30,),
          Container(
            child: TabBar(
              controller:_tabController ,
              tabs: [
                Tab(text: "Places"),
                Tab(text:"Inspiration"),
                Tab(text: "Emotions"),

              ],
            ),
          ),
          Container(
            height: 300,
width: double.maxFinite,

child: TabBarView(
  controller:_tabController ,
  children: [
    Text("Hi"),
    Text("There"),
    Text('BYE')
  ],
)
          )
        ],
      ),
    );
  }
}

// Custom widget for large text.
class AppLargeText extends StatelessWidget {
  final String text;

  const AppLargeText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24, // Adjust the font size as needed.
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
