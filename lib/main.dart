import 'package:flutter/material.dart';
import 'package:youtube_app/video_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
       appBar: AppBar(
         centerTitle: false,
         leading: Icon(Icons.videocam),
          title:  const Text(
              'ぽぽうにTUBE',
          ),
         actions: <Widget>[
           SizedBox(
             width: 44,
             child: FlatButton(
               child: Icon(Icons.search),
             ),
           ),
           SizedBox(
             width: 44,
             child: FlatButton(
               child: Icon(Icons.more_vert),
             ),
           ),
         ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.network(
                      'https://1.bp.blogspot.com/-Q-5tTFD7TPg/XdttMiv1WJI/AAAAAAABWFU/msLqZn9YYkAJ9hYcw4E3jftEEi_m6IKXwCNcBGAsYHQ/s1600/animal_cooking_girl_inu.png'
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                          'ぽぽうにTUBE',
                      ),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                        ),
                        Text('登録する'),
                          ],
                        ),
                        onPressed: () {
                          // todo
                      },
                      )
                    ],
                  )
                ],
              ),
            ),
        Expanded(
          child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap:  () async {
                //TODO:画面遷移
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Video_Page(),
                  ),
                );
              },
              contentPadding: EdgeInsets.all(8),
              leading: Image.network('https://1.bp.blogspot.com/-WM9M90LNf2w/XdttNU-qhNI/AAAAAAABWFc/eMZjeD-EAhYFFo0RTQN9ZV-0dckyldLIwCNcBGAsYHQ/s1600/animal_cooking_girl_neko.png',
              ),
              title: Column(
                children: <Widget>[
                  Text('『ぽぽうにキッチン超入門』　卵焼きを作る方法',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '267回再生',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        '5日前',
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              trailing: Icon(Icons.more_vert),
               );
              },
             ),
            ),
          ],
        ),
       ),
      ),
    );
  }
}