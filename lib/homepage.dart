import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'quztionclass.dart';

class Quizapp extends StatefulWidget {
  const Quizapp({Key? key}) : super(key: key);
  @override
  State<Quizapp> createState() => _QuizappState();
}

class _QuizappState extends State<Quizapp> {
  List<Icon> scoricon = [];
  qustionanswer Qanswer = qustionanswer();

  @override
  void check(bool text) {
    if (count == Qanswer.QA.length - 1) {
      Alert(
        context: context,
        type: mark >= 5 ? AlertType.success : AlertType.error,
        title: mark >= 5 ? "Pass" : 'Fale',
        desc: "Mark is $mark ",
        buttons: [
          DialogButton(
            child: Text(
              "Clear",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Quizapp()));
              Qanswer.reset();
              mark = 0;
            },
            width: 120,
          )
        ],
      ).show();
    } else {
      if (Qanswer.answerdisplay() == text) {
        scoricon.add(Icon(
          Icons.check,
          color: Colors.green,
          size: 30,
        ));
        mark = mark + 1;
      } else {
        scoricon.add(Icon(
          Icons.close,
          color: Colors.red,
          size: 30,
        ));
      }
      Qanswer.increment();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    // color: Colors.red,
                    child: Center(
                        child: Text(
                      Qanswer.qustiondisplay(),
                      //   Qanswer.qustiondisplay(),

                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
                  ),
                ),
                // SizedBox(
                //   height: 180,
                // ),
                // Text(
                //   '${mark}/11',
                //   style: TextStyle(color: Colors.white),
                // ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        check(true);
                      });
                    },
                    child: Text(
                      'True',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        check(false);
                      });
                    },
                    child: Text(
                      'False',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                // Row(children: scoricon),
                // Row(children: scoricon),

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      children: scoricon,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
