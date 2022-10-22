
import 'package:flutter/material.dart';

 class getQustion{
   String qustion;
   bool answer;
   getQustion({
     required this.qustion,
     required this.answer
 });
 }

int count=0;
 int mark=0;
class qustionanswer{

  List<getQustion> QA=[
    getQustion(qustion: 'The atomic number for lithium is 17 ?', answer: false),
    getQustion(qustion: 'The hummingbird egg is the worlds smallest bird egg', answer: true),
    getQustion(qustion: 'The Atlantic Ocean is the biggest ocean on Earth', answer: false),
    getQustion(qustion: 'The two longest rivers in the world are the Mississippi and the Nile', answer: false),
    getQustion(qustion: "The chunnel between England and France is 31.5 miles long", answer: true),
    getQustion(qustion: 'The heart is the largest internal organ in the body', answer: false),
    getQustion(qustion: 'The atomic number for lithium is 17 ?', answer: false),
    getQustion(qustion: 'The hummingbird egg is the worlds smallest bird egg', answer: true),
    getQustion(qustion: 'The Atlantic Ocean is the biggest ocean on Earth', answer: false),
    getQustion(qustion: 'The two longest rivers in the world are the Mississippi and the Nile', answer: false),
    getQustion(qustion: "The chunnel between England and France is 31.5 miles long", answer: true),
    getQustion(qustion: 'The heart is the largest internal organ in the body', answer: false)
  ];
   void increment(){
     count=count+1;
   }
  String qustiondisplay(){
   return QA[count].qustion;
   }
   bool answerdisplay(){
     return QA[count].answer;
   }
   int reset(){
    return count=0;
   }





}