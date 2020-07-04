import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pazzarapp/appDesign/main_screen_bottom_menu_design.dart';
import 'package:pazzarapp/model/card.dart';
import 'package:pazzarapp/model/home_page_content.dart';
import 'package:pazzarapp/model/home_page_slide.dart';
import 'package:pazzarapp/widgets/home_slide_item.dart';

import 'for_sale_item_cardUI.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {



  BottomMenuDesign _bottomMenuDesign = BottomMenuDesign();
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < homePageSlideList.length) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(90.0, 0.0, 90.0, 0.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Pazar App',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Expanded(
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: <Widget>[
                    SliverList(
                        delegate: SliverChildListDelegate(_pagecontent(_pageController, _onPageChanged)))
                  ],
                ),
              ),
              Divider(
                height: 0.0,
                color: Colors.grey[800],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          IconButton(icon: _bottomMenuDesign.home),
                          Text(_bottomMenuDesign.homeIconText)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: _bottomMenuDesign.classifications,
                          ),
                          Text(_bottomMenuDesign.classificationsIconText)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: _bottomMenuDesign.cart,
                          ),
                          Text(_bottomMenuDesign.cartIconText)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: _bottomMenuDesign.notifications,
                          ),
                          Text(_bottomMenuDesign.notificationsIconText),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(icon: _bottomMenuDesign.myAccount),
                          Text(_bottomMenuDesign.myAccountIconText)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}

List<Widget> _pagecontent (PageController _pageController , Function _onPageChanged)
{
  List<Widget> widgets = new List<Widget>();

  widgets.add(
    new  Container(
      child: PageView.builder(
        onPageChanged: _onPageChanged,
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        itemCount: homePageSlideList.length,
        itemBuilder: (context, i) => HomeSlideItem(i),
      ),
      color: Colors.red,
      height: 200,
    )
  );

  for(int i = 0 ; i < contentList.length;i++)
    {
      widgets.add(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.all(8.0),
            child: new Text(contentList[i].title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),),
          ),
          new
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            height:200,
            width: 100,

            child: ListView.builder(
                itemCount: contentList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ForSaleItemCard (contentList[index].cards,index);

                }),
          ),
        ],
      )
      );

    }
  return widgets;


}




