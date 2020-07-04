


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pazzarapp/model/home_page_slide.dart';

class HomeSlideItem extends StatelessWidget {


  int index;

  HomeSlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return
 FittedBox(
   child:   Image(image: AssetImage(homePageSlideList[index].image,)),
   fit: BoxFit.fill,
 );
  }
}
