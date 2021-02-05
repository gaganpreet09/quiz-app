import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quizzer')),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: quizzer(),
      ),
    );
  }
}

class quizzer extends StatefulWidget {
  @override
  _quizzerState createState() => _quizzerState();
}

class _quizzerState extends State<quizzer> {
  int c=0;
  int d=0;
  @override

  List<Text> questions=[Text('a is first letter',style: TextStyle(fontSize: 20,color: Colors.white),),
    Text('d is second letter',style: TextStyle(fontSize: 20,color: Colors.white),),
    Text('2+3=8',style: TextStyle(fontSize: 20,color: Colors.white),),
    Text('9*9=81',style: TextStyle(fontSize: 20,color: Colors.white),),
    Text('sky is brown',style: TextStyle(fontSize: 20,color: Colors.white),),
    Text('india is in asia',style: TextStyle(fontSize: 20,color: Colors.white),)];
  List<Icon> scores = [];
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 6,
          child: Container(
            child: Center(
              child: questions[c]
            ),
            //     width: double.infinity,
          ),
        ),
        Expanded(
          flex: 2,
          child: FlatButton(
            onPressed: () {setState(() {
              if(c==0||c==3||c==5) {
                if(c<6){
                  d++;
                  if(d<7){
                scores.add(Icon(Icons.check, color: Colors.green,),);}
              }}
              else {
                if (c<6){
                  d++;
                  if(d<7){
                scores.add(Icon(Icons.close, color: Colors.red,),);}
              }}
              if(c<5){
              c=c+1;}
            });
             },
            child: Center(
                child: Text(
              'TRUE',
              style: TextStyle(fontSize: 20),
            ),),
            color: Colors.green,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 2,
          child: FlatButton(
            onPressed: () {setState(() {
              if(c==1||c==2||c==4) {
                if(c<6){
                  d++;
                  if(d<7){
                scores.add(Icon(Icons.check, color: Colors.green,),);}
              }}
              else {
                if(c<6){
                  d++;
                  if(d<7){
                scores.add(Icon(Icons.close, color: Colors.red,),);}
              }}
              if (c<5){
              c=c+1;}

            });

                },
            child: Center(
                child: Text(
              'FALSE',
              style: TextStyle(fontSize: 20),
            )),
            color: Colors.red,
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              children: scores,
            )),
      ],
    );
  }
}
