
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class StartShopping extends StatefulWidget {
  @override
  _StartShoppingState createState() => _StartShoppingState();
}

class _StartShoppingState extends State<StartShopping> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage ('assets/introImage.png'),
                fit: BoxFit.cover,

              )

          ),
        child:Container(


            child: Column(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,100.0,0.0,0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :<Widget>[
                    Icon(Icons.shopping_cart,
                    size: 50.0,
                    color: Colors.black,
                     ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('PazarApp' ,
                          style: TextStyle(fontSize: 20.0 ,
                              fontWeight: FontWeight.bold) ,),
                      ),
                    ]
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,0.0),
                  child: Text('رقم الموبايل' ,
                    style: TextStyle(fontSize: 20.0 ,
                        fontWeight: FontWeight.bold) ,),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0 ,10.0,50.0,10.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(

                      filled: true,
                      fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                      ),

                    ),),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0 ,10.0,50.0,0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '555 555 5555',
                        contentPadding: EdgeInsets.fromLTRB(8.0,15.0,0.0,0.0),
                        prefixIcon: SizedBox(

                          child: Center(
                              widthFactor: 0.0,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8.0,0.0,0.0,0.0),
                                child: Text('+90',
                                  style: TextStyle(color: Colors.black ,
                                    fontSize: 18.0 ,),
                                ),
                              ) ),


                        ),

                        filled: true,
                        fillColor: Colors.white,
                      focusColor: Colors.white,
                      focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                      ),


                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0,16.0,50.0,8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: FlatButton(

                      color: Colors.black,
                      onPressed: (){},

                    child: Text('التالي',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white),
                    ),
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.black,
                  focusColor: Colors.black,
                  child: Text('تخطي ',
                    style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                  ),
                ),

              ],
            ),
          ),
        ) ,
        ),

    );
  }
}
