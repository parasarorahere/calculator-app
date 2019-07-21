import  'package:flutter/material.dart';
class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {


String answer2 ="0";

String buttonText;
int previousValue ,nextValue ;
var result = 0;
String variableStoreButtonText;


//funSave Opeartion Button Text
  _funSaveButtonText(String buttonText)
  {
    variableStoreButtonText =buttonText;
    print("yes we store buutonText $variableStoreButtonText");
  }

//fun which perform operations +


  funResult()
  {
    print("inside funResult $variableStoreButtonText");
    switch(variableStoreButtonText)
    {
      case "+":
        {

          print("inside funResult value of $answer2");
          nextValue=int.parse(answer2);
          setState(() {
            result =previousValue+nextValue;
            answer2=result.toString();
          });
      //    result =previousValue+nextValue;
        }
        break;
      case "-":
        {

          print("inside funResult value of $answer2");
          nextValue=int.parse(answer2);
          setState(() {
            result =previousValue-nextValue;
            answer2=result.toString();
          });
          //    result =previousValue+nextValue;
        }
        break;
      case "*":
        {

          print("inside funResult value of $answer2");
          nextValue=int.parse(answer2);
          setState(() {
            result =previousValue*nextValue;
            answer2=result.toString();
          });
          //    result =previousValue+nextValue;
        }
        break;
      case "/":
        {

          print("inside funResult value of $answer2");
          nextValue=int.parse(answer2);
          setState(() {
            result =previousValue*nextValue;
            answer2=result.toString();
          });
          //    result =previousValue+nextValue;
        }
        break;

    }

  }






//fun Convert int to String
  String funConvertIntToString ()
  {
    return answer2.toString() ;
  }

  // this function return answer widget
 Widget  _answerWidget()
  {
    return



      Row(
      children: <Widget>[

        Expanded(

          child: Container(

            padding: EdgeInsets.fromLTRB(40, 15, 10, 5),
            height: 120,
            color: Colors.purple[200],
            child:Text(funConvertIntToString(),style:TextStyle(fontStyle: FontStyle.normal,fontSize: 40),textDirection: TextDirection.rtl,

            ),
          ),
          flex: 1,

        ),
      ],
    );


  }
// function which take input as number match with swithcase and operates operation
  double _funPerformCompute(String buttonText)
  {
    var checker = buttonText;

    switch(checker)
    {
      case "1" :
          {
            setState(() {
              answer2 = answer2+"1";
            });

          }
          break;
      case "2" :
        {
          setState(() {
            answer2 = answer2+"2";
          });

        }
        break;
      case "3" :
        {
          setState(() {
            answer2 = answer2+"3";
          });

        }
        break;
      case "4" :
        {
          setState(() {
            answer2 = answer2+"4";
          });

        }
        break;
      case "5" :
        {
          setState(() {
            answer2 = answer2+"5";
          });

        }
        break;
      case "6" :
        {
          setState(() {
            answer2 = answer2+"6";
          });

        }
        break;
      case "7" :
        {
          setState(() {
            answer2 = answer2+"7";
          });

        }
        break;
      case "8" :
        {
          setState(() {
            answer2 = answer2+"8";
          });

        }
        break;
      case "9" :
        {
          setState(() {
            answer2 = answer2+"9";
          });

        }
        break;
      case "0" :
        {
          setState(() {
            answer2 = answer2+"0";
          });

        }
        break;
      case "+" :
        {

            print("before plusfun calling");
            previousValue =int.parse(answer2);

            answer2 = "0";
            _funSaveButtonText(buttonText);
            print("successfully calling funSaveButtonText");



        }
        break;
      case "-" :
        {
          previousValue =int.parse(answer2);
          answer2 = "0";
          _funSaveButtonText(buttonText);
        }
        break;
      case "*" :
        {
          previousValue =int.parse(answer2);
          answer2 = "0";
          _funSaveButtonText(buttonText);
        }
        break;
      case "/" :
        {
          previousValue =int.parse(answer2);
          answer2 = "0";
          _funSaveButtonText(buttonText);
        }
        break;
      case "=" :
        {
          funResult();
          print("succesfully call funResult ");
        }
        break;
      case "clear" :
        {
          setState(() {
            answer2 = "0";
            result =0;
          });

        }
        break;

    }
   }

  // function which return button Widget take input String for text
 Widget _funReturnButton(String buttonText )
 {
   return MaterialButton(
      height: 110,
     //color: Colors.red,
    // onPressed: funCalculate(buttonText);
     onPressed: ()
     {
     _funPerformCompute(buttonText);

     },
     child: Text(
       buttonText,
       style: TextStyle(fontSize: 30),
     ),
   );
 }


  // this function returns the widgets 4*4 all numbers and + - =etc
 Widget _numberAndPlusMinus(String buttonText ,String buttonText2,String buttonText3 ,String buttonText4)
 {
   return

     Row(
       children: <Widget>[

         Expanded(
           child: _funReturnButton(buttonText),
           flex: 1,

         ),
         Expanded(
           child: _funReturnButton(buttonText2),
           flex: 1,
         ),
         Expanded(
           child: _funReturnButton(buttonText3),
           flex: 1,
         ),
         Expanded(
           child: _funReturnButton(buttonText4),
           flex: 1,
         ),
       ],
     );
 }

// void funCalculate( )
// {
//   if()
// }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          _answerWidget(),
          _numberAndPlusMinus("7", "8", "9", "+"),
        _numberAndPlusMinus("4", "5", "6", "-"),
         _numberAndPlusMinus("1", "2", "3", "*"),
        _numberAndPlusMinus("0", "clear", "/", "="),

        ],
      ),
    );

  }
}