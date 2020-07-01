
import 'package:flutter/material.dart';
import 'package:pazzarapp/model/slide.dart';
import 'package:pazzarapp/widgets/slide_dots.dart';
import 'package:pazzarapp/widgets/slide_item.dart';
import 'dart:async';


class IntroductoryUI extends StatefulWidget {

  @override
  _IntroductoryUIState createState() => _IntroductoryUIState();
}

class _IntroductoryUIState extends State<IntroductoryUI> {

  int _currentPage =0;

  final PageController _pageController = PageController(initialPage: 0);


  @override
  void dispose() {

    super.dispose();
    _pageController.dispose();

  }
  
  @override
  void initState() {
    super.initState();


  }


  _onPageChanged(int index)
  {
    setState(() {
      _currentPage=index;
    });
  }

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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                          alignment: AlignmentDirectional.center,
                        children :<Widget>[ PageView.builder(
                          onPageChanged: _onPageChanged,
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          itemCount: slideList.length,
                          itemBuilder: (context,i)=>SlideItem(i),
                        ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(150.0,250.0,0.0,0.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                              for(int i=0;i<slideList.length;i++)
                                if(i==_currentPage)
                                  SlideDots(true)
                              else
                                SlideDots(false)
                            ],),
                          ),
                        if (_currentPage==2)
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0,350.0,0.0,0.0),
                            child:  FlatButton(
                              onPressed: (){},
                                child: Text(
                                  'ابدأ التسوق',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                          ),
                              color: Colors.black,
                              splashColor: Colors.black,
                              textColor: Colors.white,
                            ))
                      ]),
                    ) ,
           ),
      ),
    );
  }
}
