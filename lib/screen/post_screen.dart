import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/items_model.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: userItems.length,
            itemBuilder: (context, index) {
              UserDetail user = userItems[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(user.image),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        user.username,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.more_horiz)
                    ],),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(user.image),fit: BoxFit.fill)
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/images/comments.png",height: 30,width: 30,),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset("assets/images/send.png",height: 30,width: 30,),
                      Spacer(),
                      Icon(Icons.bookmark_border_sharp)

                    ],
                  ),
                  Text("${user.likes.toString()} Likes",style: TextStyle(fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Text(user.comment,style: TextStyle(fontWeight: FontWeight.w500),),
                      SizedBox(width: 5,),
                      Text("#favorite",style: TextStyle(fontWeight: FontWeight.w500),),

                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 1,
                    color: Colors.grey,

                  ),
                  SizedBox(height: 10,),



                ],
              );
            }));
  }
}
