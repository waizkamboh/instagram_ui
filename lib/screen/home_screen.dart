import 'package:flutter/material.dart';
import 'package:instagram_ui/screen/bottomnavigation_bar.dart';
import 'package:instagram_ui/screen/post_screen.dart';
import 'package:instagram_ui/screen/story_screen.dart';

import '../model/items_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              instagram(),
              storiesText(),
              SizedBox(height: 15,),
              Story(),
              SizedBox(height: 15,),

              //Post
              PostScreen(),

            ],
          ),
        ),
      ),
      // For Bottom navigation Bar
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  Widget instagram() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.photo_camera_outlined,size: 30,color: Colors.black54,),
        Image.asset("assets/images/instagram.png",width: 150,),
        Image.asset("assets/images/send1.png",width: 30,),
      ],
    );
  }

  Widget storiesText() {
    return Row(
      children: [
        Text("Stories",style: TextStyle(fontWeight: FontWeight.bold),),
        Spacer(),
        Icon(Icons.play_arrow,size: 20,),
        SizedBox(width: 5,),
        Text("Watch all",style: TextStyle(fontWeight: FontWeight.bold),),

      ],
    );
  }
}

