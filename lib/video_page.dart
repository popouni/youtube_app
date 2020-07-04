import 'package:flutter/material.dart';

class Video_Page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        title: Text('ぽぽうにTUBE'),
      ),
      body: Container(
        width: double.infinity,
       child: Column(
         children: <Widget>[
           Image.network('https://3.bp.blogspot.com/-VLeooPHq-SA/UgSMFKdLR3I/AAAAAAAAW7c/PRulas6hgG4/s800/food_obentou.png',
           height: 300,
           ),
           Row(crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text('#ぽぽうに＃卵焼き＃キッチン＃料理',
                 style: TextStyle(color:Colors.blue),
               ),
             ],
           ),
           Text('『ぽぽうにキッチン超入門』卵焼きの作り方',
             style: TextStyle(
                 fontSize: 20,
               fontWeight: FontWeight.w500
             ),
           ),
           Row(crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text('267回視聴・５日前',
               ),
             ],
           ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                Icon(Icons.thumb_up),
                Icon(Icons.thumb_down),
                Icon(Icons.redo),
                Icon(Icons.file_download),
                Icon(Icons.library_add),
              ],
            ),
          ),
         Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Text('100'),
                 Text('0'),
                 Text('共有'),
                 Text('オフライン'),
                 Text('保存'),
               ],
             ),
           )
         ],
       ),
      ),
      );
  }
  

}