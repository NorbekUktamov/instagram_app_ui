import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_app_ui/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final id="home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages=[
    Feedpage(),
    Feedpage(),
    Feedpage(),
    Feedpage(),
    Feedpage(),
  ];
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text("Instagram",style:TextStyle(color: Colors.grey.shade500) ,),
        leading: IconButton(
          icon: Icon(Feather.camera),
          color: Colors.grey.shade500,
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Feather.tv),
            color: Colors.grey.shade500,
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(FontAwesome.send_o),
            color: Colors.grey.shade500,
            onPressed: (){},
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentPage,
        selectedItemColor: Colors.red,
        onTap: (i){
          setState(() {
            currentPage=i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home,color: Colors.white),
              label:'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search,color: Colors.white),
            label:'Search',

          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square,color: Colors.white),
            label:'Upload',

          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart,color: Colors.white),
            label:'Likes',

          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user,color: Colors.white),
            label:'Account',

          ),
        ],
      ),
    );
  }
}
