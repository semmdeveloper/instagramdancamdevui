import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 8, 110, 8),
                child: Icon(Icons.chevron_left,color: Colors.black,size: 35,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 8, 140, 8),
                      child:Text('DANCAMDEV',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                  ),

                ],
              ),

            ],
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 1),
            padding: EdgeInsets.only(top: 1,bottom: 1),
          ),

          Container(
            child: makeFeed(
              userName: 'dancamdev',
              userImage: 'assets/images/qq.jpg',
              feedimage:'assets/images/ww.jpg',
              feedTime: 'Rome, Italy',
              feedPhoto:'assets/images/mm.jpg'
            ),
          ),
          Container(
            child: makePost(
              userName: 'dancamdev',
              userImage: 'assets/images/qq.jpg',
              feedimage:'assets/images/ee.jpg',
              feedTime: 'dancamdev - Original Audio',
                feedPhoto:'assets/images/mm.jpg'
            ),
          ),
        ],

      ),

    );
  }
  Widget makeFeed({userName, userImage,feedimage,feedTime,feedPhoto}){
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(width: 5,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(height: 5,),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17,),),
                            SizedBox(height: 3,),
                            SizedBox(width: 5,),
                            Text(feedTime)
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_horiz,size: 30,color: Colors.black,),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 420,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(feedimage),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Container(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite,color: Colors.red,size: 27,),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.chat_bubble_outline,color: Colors.black,size: 27,),
                      ), IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.send_outlined,color: Colors.black,size: 27,),
                      ),
                      SizedBox(width: 235,),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.bookmark_border,color: Colors.black,size: 27,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(
                        width: 40,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(feedPhoto),
                                fit: BoxFit.cover
                          )
                        ),
                      ),
                      Container(
                        child: Text('Liked by',style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('ggflutter.dev',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('and',style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('971 others',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('dancamdev',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text("Today's Progress",style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Icon(Icons.laptop_chromebook),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                  child: Row(
                    children: [
                      SizedBox(height: 10,),
                      SizedBox(width: 15,),
                      Container(
                        child: Text('Today I spent 3 hours live working on the new...',style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('more',style: TextStyle(color: Colors.grey[700]),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('View all 7 comments',style: TextStyle(color: Colors.grey[600]),),

                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('thats_me_dude_',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('how i learn from you ?any',),
                      ),
                      SizedBox(width: 95,),
                      Container(
                        child: Icon(Icons.favorite_border,color: Colors.grey[600],size: 15,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('chennal?'),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Container(
                        child: Text('dancamdev',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('@thats_me_dude_',style: TextStyle(color: Colors.blueAccent),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('check my link'),
                      ),
                    ],

                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Container(
                        child: Text("in bio there's my Twitch and Youtube there,"),
                      ),
                      SizedBox(width: 85,),
                      Container(
                        child:Icon(Icons.favorite_border,size: 15,color: Colors.grey[600],),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Container(
                        child: Text("finally the mentorship program is openning"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Container(
                        child: Text("soon"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('1 day ago',style: TextStyle(color: Colors.grey[600]),),
                      )
                    ],
                  ),
                )



              ],
            ),
          )

        ],
      ),
    );

  }
  Widget makePost({userName, userImage,feedimage,feedTime,feedPhoto}){
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(width: 5,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userName,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17,),),
                            SizedBox(height: 3,),
                            SizedBox(width: 5,),
                            Text(feedTime)
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_horiz,size: 30,color: Colors.black,),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Container(
                  height: 550,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(feedimage),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Container(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite,color: Colors.red,size: 27,),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.chat_bubble_outline,color: Colors.black,size: 27,),
                      ), IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.send_outlined,color: Colors.black,size: 27,),
                      ),
                      SizedBox(width: 235,),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.bookmark_border,color: Colors.black,size: 27,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(
                        width: 40,
                        height: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(feedPhoto),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        child: Text('Liked by',style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('tayelolu_bells',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('and',style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('1485 others',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('dancamdev',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text(":) Do you have a portfolio website?",style: TextStyle(color: Colors.black),),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 5,),

                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('Comment the link below...',style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('more',style: TextStyle(color: Colors.grey[700]),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('View all 34 comments',style: TextStyle(color: Colors.grey[600]),),

                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('dancamdev',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('@nikklaschr_',style: TextStyle(color: Colors.blueAccent),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('love it! So clean and'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('effective, maybe tell a bit about yourself and'),
                      ),
                      SizedBox(width: 90,),
                      Container(
                        child: Icon(Icons.favorite_border,color: Colors.grey[600],size: 15,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('what you do and add your email to make it'),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('perfect'),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Icon(Icons.vertical_split,color: Colors.redAccent,size: 15,),
                      )

                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('dancamdev',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('@nerostarx',style: TextStyle(color: Colors.blueAccent),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('I like the concept a lot,a'),
                      ),
                    ],

                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text("couple of things come to mind when seeing it,"),
                      ),
                      SizedBox(width: 80,),
                      Container(
                        child:Icon(Icons.favorite_border,size: 15,color: Colors.grey[600],),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text("there is no visual hierarchy and you can't really"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text("tell when one section finishes and the other"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text("starts, I'd split the parts in a more pragmatic"),
                      ),
                      SizedBox(width: 3,),
                      Container(
                        child: Text("[...],",style: TextStyle(color: Colors.grey[600]),),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        child: Text('2 day ago',style: TextStyle(color: Colors.grey[600]),),
                      )
                    ],
                  ),
                )



              ],
            ),
          )

        ],
      ),
    );

  }
}
