import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   var width = MediaQuery.of(context).size.width;
   var height = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: Center(
        
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [Color(0xFF04009A), Colors.white]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width*0.9,
                height: height*0.95,
                child: Column(
                
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Image(image: AssetImage("images/money.png"),height: 90,),
                   Image(image: AssetImage("images/money.png"),height: 90,),
                 ],
               ) ,
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Image(image: AssetImage("images/money.png"),height: 90,),
                 ],
               ), 
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Image(image: AssetImage("images/money.png"),height: 90,),
                   Image(image: AssetImage("images/money.png"),height: 90,),
                 ],
               ) ,   
              Column(children: [
                Text("Well Done!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Text("You've made your first sale of product.",style: TextStyle(fontSize: 20),),
                Text("Sell more goods and get more points.",style: TextStyle(fontSize: 20),),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("images/coin.png"),height: 30,),
                    Padding(padding: EdgeInsets.only(right: 10)),
                    Text("+50",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                )
              ],),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                width: width*0.9,
                height: 40,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30,
                    ),

                    Text(" COLLECT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                  ] 
                ),
              ),
              )
              ],)
                ],),
              )
            ],
          ),
        )
      ),
      
    );
  }
}
