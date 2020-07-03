
import 'package:flutter/material.dart';
import 'package:pazzarapp/appDesign/loading_ui_design.dart';

class LoadingUI extends StatelessWidget {

  LoadingUIDesign _uiDesign = LoadingUIDesign();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: _uiDesign.backgroundColor,
      body: SafeArea (
          child: Container(

            alignment: Alignment.center,


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(_uiDesign.website,                    //Loading page Text
                    style: TextStyle(color: _uiDesign.websiteFontColor,
                                     fontSize: 40.0,
                                     fontWeight:FontWeight.bold),
                  ),
                ),

                Icon(_uiDesign.icon.icon ,                         //Loading page icon
                  color:_uiDesign.iconColor,
                  size: 100.0,),
              ],
            ),
          )
        ),






    );
  }
}