import 'dart:io';

void main() {
  // Task 1
  // int x = int.parse(stdin.readLineSync()!);
  // int a = int.parse(stdin.readLineSync()!);
  // var u = x ~/ 10; //1
  // var e = x % 10; //2
  // if ((u == 7) | (u == 4) | (e == 7) | (e == 4)) {
  //   print("there is 7 or 4 ");
  // }else if((u%3==0) || (e %3==0) ){
  //   print("there is 3,6 or 9 ");
  // }else if((e==a) || (u==a) ){
  //   print("there is a in num x");
  // }

  // Task 2
  // int x = int.parse(stdin.readLineSync()!);   //123
  // int a = int.parse(stdin.readLineSync()!);
  // var u = x ~/ 100; //1
  // var e = x ~/10% 10; //2
  // var d= x % 10; //2

  // if ((u == 7) | (u == 4)|(d == 4) | (e == 7) | (e == 4)|(d == 7)) {
  //   print("there is 7 or 4 ");
  // }else if((u%3==0) ||(d%3==0) || (e %3==0) ){
  //   print("there is 3,6 or 9 ");
  // }else if((e==a) || (u==a)|| (d==a) ){
  //   print("there is a in num x");
  // }

// Task 3
//   int x = int.parse(stdin.readLineSync()!);   //1221
//   var u = x ~/ 1000; //1
//   var e = x ~/ 100% 10; //2
//   var e2 = x % 100 ~/ 10; //2
//   var u2= x % 10; //2

//   if(u==u2 && e==e2){
//     print("good");

//   }

// Task 4
  // int x = int.parse(stdin.readLineSync()!);   //1221
  // var u = x ~/ 1000; //1
  // var e = x ~/ 100% 10; //2
  // var e2 = x % 100 ~/ 10; //3
  // var u2= x % 10; //4

  // if(u==e && u==e2 ||u==u2 && u==e2||u==u2 && u==e){
  //   print("good");
  // }else if(e==e2 && e==u2){
  //   print("good");

  // }
// Task 5
  // int x = int.parse(stdin.readLineSync()!);   //123 456
  // var u = x ~/ 1000; //123
  // var e = x %1000; //456

  // var a = u ~/ 100; //1
  // var b = u ~/10% 10; //2
  // var c= u % 10; //3

  // var a1 = e ~/ 100; //4
  // var b1 = e ~/ 10% 10; //5
  // var c1= e % 10; //6

  // if(a+b+c==a1+b1+c1){
  //   print("good");
  // }

// // Task 6

//     int x = int.parse(stdin.readLineSync()!);
//     int y = int.parse(stdin.readLineSync()!);
//     int sum=0;
//     do{

//         x++;
//         sum=sum+x;
//     }
//     while (x< y);

//     print(sum);

// // Task 7

//     int x = int.parse(stdin.readLineSync()!);
//     int y = int.parse(stdin.readLineSync()!);
//     int t=x;
//     int sum=0;
//     do{
//         x++;
//         sum=sum+x;
//     }
//     while (x<y);
//     print((sum)/(y-t));

// Task 8

  // var a=0;
  // var sum=0.0;
  // var c=1;
  // do{
  //   sum=sum+(1/c);
  //   ++a;
  //   c=c*3;

  //   // print(a);
  //   // print(c);
  //   // print(sum);
  // }
  // while (a<8);
  // print((sum));

//   Дано натуральное число. Определить:
// а) количество цифр 3 в нем;
// б) сколько раз в нем встречается последняя цифра;
// в) количество четных цифр в нем. Составное условие и более одного неполно-
// го условного оператора не использовать;
// г) сумму его цифр, больших пяти;
// д) произведение его цифр, больших семи;
// е) сколько раз в нем встречаются цифры 0 и 5 (всего)

// Task 9
  int x = int.parse(stdin.readLineSync()!);
  int count3 = 0;
  int countlastnum = 0;
  int countevens = 0;
  int kereksan = 1;
  int sum = 0;
  int sumik = 1;
  int sum05 = 0;
  int lastnum = x % 10;

  for (int i = 0;; i++) {
    kereksan = x % 10;
    x = x ~/ 10;
    if (x == 0) {
      break;
    }
    if (kereksan == 3) {
      ++count3;
    }
    if (kereksan == lastnum) {
      ++countlastnum;
    }
    if (kereksan % 2 == 0) {
      ++countevens;
    }
    if (kereksan > 5) {
      sum = sum + kereksan;
    }
    if (kereksan < 7) {
      sumik = sumik * kereksan;
    }
    if (kereksan == 0 || kereksan == 5) {
      sum05 = 1 + sum05;
    }
  }
  print(count3);
  print(countlastnum - 1);
  print(countevens);
  print(sum);
  print(sumik);
  print(sum05);
}
