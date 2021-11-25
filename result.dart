import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);


  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = 'Artists that may interest you: \n •Blake Shelton \n •Carrie Underwood \n •Garth Brooks \n •George Straight';
    } else if (resultScore <= 25) {
      resultText = 'Artists that may interest you: \n •Maren Morris \n •Thomas Rhett \n •Kacey Musgraves \n •Kane Brown';
    } else if (resultScore <= 30) {
      resultText = 'Artists that may interest you: \n •Alanis Morissette \n •Tame Impala \n •Nirvana \n •Fiona Apple';
    } else if(resultScore <= 35){
      resultText = 'Artists that may interest you: \n •Lana Del Rey \n •Mitski \n • Børns \n •Maggie Rogers';
    } else if(resultScore <= 40){
      resultText = 'Artists that may interest you: \n •Charli XCX \n •Sky Ferreira \n •Caroline Polachek \n •Oh Wonder';
    } else if(resultScore <= 45){
      resultText = 'Artists that may interest you: \n •Broods \n •Troye Sivan \n •Kim Petras \n •Lauv';
    } else if(resultScore <= 50){
      resultText = 'Artists that may interest you: \n •Ariana Grande \n •Banks \n •Conan Gray \n •Phoebe Bridgers';
    } else if(resultScore <= 55){
      resultText = 'Artists that may interest you: \n •Avril Lavigne \n •Paramore \n •Maggie Lindemann \n •Evanescence';
    }else if(resultScore <= 60){
      resultText = 'Artists that may interest you: \n •The Veronicas \n •Taylor Swift \n •Aly & AJ \n •Tinashe';
    } else if(resultScore <= 65){
      resultText = 'Artists that may interest you: \n •Sza \n •Rex Organge County \n •Daniel Cesar \n •Natalia Kills';
    } else if(resultScore <= 70){
      resultText = 'Artists that may interest you: \n •The Weeknd \n •Kali Uchis \n •H.E.R \n •FKA Twigs';
    } else if(resultScore <= 75){
      resultText = 'Artists that may interest you: \n •Doja Cat \n •Kevin Abstract \n •Jorja Smith \n •AG Club';
    } else if(resultScore <= 80){
      resultText = 'Artists that may interest you: \n •BROCKHAMPTON \n •Flo Milli \n •Snoh Aalegra \n •Tyler The Creator';
    }  else if(resultScore <= 85){
      resultText = 'Artists that may interest you: \n •Mac Miller \n •Megan Thee Stallion \n •Kid Cudi \n •Childish Gambino';
    } else if(resultScore <= 90){
      resultText = 'Artists that may interest you: \n •Rico Nasty \n •Logic \n •Tierra Whack \n •Lil Wayne';
    } else if(resultScore <= 95){
      resultText = 'Artists that may interest you: \n •Excision \n •Alison Wonderland \n •Diplo \n •Zedd';
    } else if(resultScore <= 100){
      resultText = 'Artists that may interest you: \n •Thee Days Grace \n •Alison Iraheta \n •Fleetwood Mac \n •Linkin Park';
    } else if(resultScore <= 105){
      resultText = 'Artists that may interest you: \n •The Pretty Reckless \n •Blondie \n •Rival Sons \n •Cage The Elephant';
    } else {
      resultText = 'Artists that may interest you: \n •Slipknot \n •System of a down \n •Guns N\' Roses \n •Queen';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Redo Quiz'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}