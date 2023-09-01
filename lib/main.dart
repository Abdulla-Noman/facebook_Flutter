import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          // elevation: 0,
          title: Text('Facebook',
            style: TextStyle(
              fontSize: 27.0,
              color: Colors.blue,
              fontFamily: 'Right',
            ),
          ),
          // leading: GestureDetector(
          //   onTap: (){},
          //   child: Icon(Icons.menu),
          // ),
          actions: [
            Padding(padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.search,
                color: Colors.blueGrey,
              ),
            )
            ),
            Padding(padding: EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Icon(Icons.mark_chat_unread_outlined),
                )
            ),
          ],
          actionsIconTheme: IconThemeData(color: Colors.black),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(
                Icons.home,
                color: Colors.grey[700],
              ),),
              Tab(icon: Icon(
                Icons.people,
                color: Colors.grey[700],
              ), ),
              Tab(icon: Icon(
                  Icons.ondemand_video,
                color: Colors.grey[700],
              ), ),
              Tab(icon: Icon(
                  Icons.account_circle_outlined,
                color: Colors.grey[700],
              ), ),
              // Tab(icon: Icon(Icons.home), text: 'Home',),
              Tab(icon: Icon(
                  Icons.notification_important,
                color: Colors.grey[700],
              ), ),
              Tab(icon: Icon(
                  Icons.menu,
                color: Colors.grey[700],
              ), ),

            ],
          ),
          elevation: 20,
          titleSpacing: 20,
        ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/img_2.png',
                                width: 60,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'what\'s on your mind?',
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.camera_alt,color: Colors.red,),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Live',style: TextStyle(fontFamily: 'Right'),),
                                ],
                              ),
                              Container(
                                height: 20,
                                width: 2,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.photo_library_outlined,color: Colors.green,),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Photo',style: TextStyle(fontFamily: 'Right'),),
                                ],
                              ),
                              Container(
                                height: 20,
                                width: 2,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on,color: Colors.red,),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Location',style: TextStyle(fontFamily: 'Right'),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Divider(
                thickness: 2,
              ),

 /////////////////////////////////post part Start here///////////////////////////////////

              Row(
                 children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(00, 00, 00, 135),
                    child: Image.asset('assets/02.jpg',
                      width: 45,
                    ),
                  ),
                   Expanded(
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.fromLTRB(00, 25, 00, 00),
                          child: Text ('Faria Mojumdar\n   3minit ago',style: TextStyle(fontFamily: 'Right'),),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                          child: Image.asset('assets/p01.jpg'),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 00, 00, 00),
                          child: Icon(Icons.more_horiz),
                        ),

                      ),

                  ),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up_sharp,color: Colors.blue,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Like',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mode_comment_outlined,color: Colors.green,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Comment',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.subdirectory_arrow_right,color: Colors.red,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Share',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                ],
              ),

              Divider(
                thickness: 2,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(00, 00, 00, 180),
                    child: Image.asset('assets/01.jpg',
                      width: 45,
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(00, 25, 00, 00),
                        child: Text ('Rabbi KHan\n   4h ago',style: TextStyle(fontFamily: 'Right'),),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                        child: Image.asset('assets/p02.jpg',
                          height: 200.0,
                          width: 220,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 00, 00, 00),
                        child: Icon(Icons.more_horiz),
                      ),

                    ),

                  ),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up_sharp,color: Colors.blue,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Like',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mode_comment_outlined,color: Colors.green,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Comment',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.subdirectory_arrow_right,color: Colors.red,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Share',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                ],
              ),

              /////////////////////////////////post part Start End here///////////////////////////////////
              Divider(
                thickness: 2,
              ),

              /////////////////////////////////post part Start here///////////////////////////////////

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(00, 00, 00, 250),
                    child: Image.asset('assets/03.jpg',
                      width: 45,
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                        child: Text ('Fahmida Hoissain\n   3minit ago',style: TextStyle(fontFamily: 'Right'),),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                        child: Image.asset('assets/p03.jpg'),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 00, 00, 00),
                        child: Icon(Icons.more_horiz),
                      ),

                    ),

                  ),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up_sharp,color: Colors.blue,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Like',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mode_comment_outlined,color: Colors.green,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Comment',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.subdirectory_arrow_right,color: Colors.red,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Share',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                ],
              ),

              Divider(
                thickness: 2,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(00, 00, 00, 135),
                    child: Image.asset('assets/04.jpg',
                      width: 45,
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(00, 25, 00, 00),
                        child: Text ('Imtiyaj Hossaien\n   4h ago',style: TextStyle(fontFamily: 'Right'),),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.fromLTRB(00, 10, 00, 00),
                        child: Image.asset('assets/p04.jpg',),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 00, 00, 00),
                        child: Icon(Icons.more_horiz),
                      ),

                    ),

                  ),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up_sharp,color: Colors.blue,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Like',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.mode_comment_outlined,color: Colors.green,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Comment',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.subdirectory_arrow_right,color: Colors.red,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Share',style: TextStyle(fontFamily: 'Right'),),
                    ],
                  ),
                ],
              ),

              /////////////////////////////////post part Start End here///////////////////////////////////
              Divider(
                thickness: 2,
              ),

            ],
          )
        ),
      ),
    );
  }
}