import 'dart:io';

void main() {
  //1. Составьте программу, выводящую на экран квадраты чисел от 10 до 20.
  for (int i = 10; i <= 20; i++) {
    int square = i * i;
    print('$i * $i= $square');
  }

  //2. Составьте программу, котораЯ вычисляет сумму чисел от 1 до n.значение n вводится с клавиатуры.
  print('Второе задание:');
  print('Введите число:');

  String? userNumOne = stdin.readLineSync();
  int userNumSum = 0;

  int getSumOfNum(String m) {
    int number = int.parse(m);
    for (int i = 1; i <= number; i++) {
      userNumSum += i;
    }
    return userNumSum;
  }

  int resultOfUserNumSum = getSumOfNum(userNumOne!);
  print('Вы ввели: $userNumOne, результат: $resultOfUserNumSum');

  //3. В сберкассу на трёхпроцентный вклад положили S рублей.Какой станет сумма вклада через N лет.(Данные вводятся с клавиатуры)
  print('Третье задание:');
  print('Введите сумму:');
  String? rub = stdin.readLineSync();
  double procent = 0.03;
  print('Введите количество лет:');
  String? year = stdin.readLineSync();

  double getResult(String money, String time) {
    int userMoney = int.parse(money);
    int userYear = int.parse(time);
    double resultProcentYear = userMoney + userMoney * procent * userYear;
    for (int i = 0; i <= userYear; i++) {
      resultProcentYear;
    }
    return resultProcentYear;
  }

  double resultKassa = getResult(rub!, year!);
  print('Результат: $resultKassa');

  //4. Даны натуральные числа от 20 до 50.Напечатать те из них, которые делятся на 3, но не делятся на 5.

  for (var i = 20; i < 50; i++) {
    List <int> number =[];
    if (i % 3 == 0 && i % 5 != 0){
      number.add(i);
      print(number);
    }
  }

  // #7 Даны натуральные числа от 1 до 50. Найти сумму тех из них, которые делятся на 5 или на 7
print(function_7());

// #8 Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.
print(function_8());

//9. Найти сумму чисел от 100 до 200 кратных 17.
print(function_9(100, 200));

//10. Составьте программу, которая вычисляет сумму квадратов чисел от 1 до введенного вами целого числа N
print(function_10(11));
}


// #7
 String function_7(){
 int summ = 0;
  for (int i = 1; i <= 50; i++) {
    if (i % 5 == 0 || i % 7 == 0) {
      print(i);
      summ += i;
    }  
  }
  return "Общий сумма: $summ";
}

//#8
String function_8(){
  List result = [];
  for (int i = 10; i <= 99; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
     result.add(i);
    }  
  }
  return 'Цифры которые делятся на 4, но не делятся на 6:   $result';
}

//#9
  int function_9(int a, int b){
  for (int i = a; i <= b; i++) {
    int allSumm = 0;
    if (i % 17 == 0) {
      allSumm += i;
      print(allSumm);
    }
  } ;
   return allSumm; 
}

 //10
  function_10(int n){
  for (int i = 1; i <=n; i++) {
    int allSquare = i * i;
    print(allSquare);
  }
  return allSquare;
}