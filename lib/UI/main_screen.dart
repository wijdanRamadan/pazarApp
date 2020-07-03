
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:Padding(
          padding: const EdgeInsets.fromLTRB(90.0,0.0,90.0,0.0),
          child: Row(
              children :<Widget>[
                Icon(Icons.shopping_cart,color: Colors.black,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Pazar App' ,
              style:TextStyle(
                color: Colors.black
              ) , ),
                 ),
          ], ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.search ,
            color:Colors.black ,),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(),
            Divider(  height: 40.0,
              color: Colors.grey[800],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                IconButton(  icon: Icon(Icons.volume_up),),
                IconButton(icon: Icon(Icons.volume_up),),
                IconButton(icon: Icon(Icons.volume_up),),
                IconButton(icon: Icon(Icons.volume_up),),
                IconButton(icon: Icon(Icons.volume_up),),

              ],),
            )
          ],
        ),

      ),
    );
  }
}
