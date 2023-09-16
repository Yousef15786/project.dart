import 'dart:io';     //import this library because we take input from user and give user output

class math {
  //class contain question entered by the user and aswer showed by compiler
  String question;
  double answer;
  
  math({ // we make both required

    required this.question,
    required this.answer,

  });
}
   
   double getAnswer(String msg) {
    //we create this function  to get answer from user and return it
    print(" please enter your answer");
     print('qes//$msg?');
    var answer = double.parse(stdin.readLineSync()!);   // we put '!'because user can enter nothing or press enter by mistake
    return answer;
  }
  void main(){

    var questions=[
      math(question: '5+6', answer: 11),
      math(question: '8*4', answer: 32),
      math(question: '45/9', answer: 5),
      math(question: '15-10', answer: 5)
    ];

    for(var item in questions){
      var userAnswer = getAnswer(item.question);
      print("your answer is :$userAnswer");
      if(userAnswer==item.answer){           //here we use for in to make the user answer all questions not only one at once time
        print("correct");
      }
      else{
        print("incorrect,the correct answer is :${item.answer}");
      }
      print("--------thank you---------------");
    }
   /* var userAnswer = getAnswer(questions[1].question);       //'question' with 's' refers to the list and [0] refer to the first question or can put num of qes
    print("your answer is :$userAnswer");
    print("--------thank you---------------");*/
  }
