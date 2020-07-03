
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pazzarapp/appDesign/start_shopping_design.dart';


class StartShopping extends StatefulWidget {
  @override
  _StartShoppingState createState() => _StartShoppingState();
}

class _StartShoppingState extends State<StartShopping> {

  StartShoppingDesign _design = StartShoppingDesign();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage (_design.backgroundImage),
                fit: BoxFit.cover,

              )

          ),
        child:Padding(
          padding: const EdgeInsets.fromLTRB(50.0,100.0,50.0,8.0),
          child: Container(


              child: Column(

                children: <Widget>[

                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children :<Widget>[
                      Icon(_design.appIcon.icon,
                      size: 50.0,
                      color:_design.iconColor,
                       ),

                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(_design.appName,
                            style: TextStyle(fontSize: 20.0 ,
                                fontWeight: FontWeight.bold) ,),
                        ),
                      ]

                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,30.0,0.0,0.0),
                    child: Text(_design.labelText ,
                      style: TextStyle(fontSize: 20.0 ,
                          fontWeight: FontWeight.bold,
                      color: _design.labelTextColor) ,
                    ),
                  ),

                    SizedBox(
                      width: double.infinity ,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                    ),


                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: FlatButton(

                        color: _design.nextButtonBackgroundColor,
                        onPressed: (){},

                      child: Text(_design.nextButtonText,
                        style: TextStyle(fontWeight: FontWeight.bold,
                        color: _design.nextButtonTextColor),
                      ),
                      ),
                    ),
                  ),
                  FlatButton(

                    child: Text(_design.skipButtonText,
                      style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: _design.skipButtonTextColor),
                    ),
                  ),

                ],
              ),
            ),
        ),
        ) ,
        ),

    );
  }
}
