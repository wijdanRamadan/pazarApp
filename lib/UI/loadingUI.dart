
import 'package:flutter/material.dart';

class LoadingUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea (
          child: Container(

            color: Colors.yellow[500],
            alignment: Alignment.center,


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('pazarapp.com',                    //Loading page Text
                    style: TextStyle(color: Colors.black,
                                     fontSize: 40.0,
                                     fontWeight:FontWeight.bold),
                  ),
                ),

                Icon(Icons.shopping_cart ,                         //Loading page icon
                  color: Colors.black,
                  size: 100.0,),
              ],
            ),
          )
        ),






    );
  }
}
