// // // 3.1. Базовая функция
// // String greet(String name) {
// //   return 'Привет, $name!';
// // }

// // // 3.2. Стрелочные функции
// // String greetArrow(String name) => 'Привет, $name!';
// // int square(int x) => x * x;
// // double half(double x) => x / 2;

// // // 3.3. Именованные параметры
// // void describePet({required String name, String species = 'кот', int age = 0}) {
// //   print('$name — $species, возраст $age');
// // }

// // // 3.4. Необязательные позиционные параметры
// // String repeat(String text, [int times = 2]) {
// //   String result = '';
// //   for (int i = 0; i < times; i++) {
// //     result += text;
// //   }
// //   return result;
// // }

// void main() {
  

//   // // 2.1. Переменные и базовые типы
//   // String name = 'Артём';
//   // int age = 20;
//   // double height = 1.75;
//   // bool isStudent = true;

//   // print(name);
//   // print(age);
//   // print(height);
//   // print(isStudent);

//   // // 2.2. Строковая интерполяция
//   // print('Привет, $name! Тебе $age лет.');
//   // print('Через 5 лет тебе будет ${age + 5} лет.');
//   // print('Рост: ${height} м, студент: $isStudent');

//   // // 2.3. Вывод типа — var
//   // var score = 95; 
//   // var language = 'Dart'; 
//   // print('$language: $score');
  

//   // // 2.4. final и 2.5. const
//   // final String finalLang = 'Dart';
//   // const double pi = 3.14159;
//   // final int startYear = 2026;
//   // print('$finalLang started in $startYear, pi is $pi');

//   // // 2.6. Null Safety
//   // String? city = null; // nullable
  

//   // if (city != null) {
//   //   print(city.toUpperCase());
//   // }
  
//   // // Способ 2: оператор ?.
//   // print(city?.toUpperCase());

//   // // Оператор ??
//   // String? nickname = null;
//   // String display = nickname ?? 'Аноним';
//   // print(display);

//   // // 2.7. Коллекции
//   // List<String> fruits = ['яблоко', 'банан', 'груша'];
//   // fruits.add('апельсин');
//   // print(fruits[0]);
//   // print(fruits.length);

//   // Map<String, dynamic> person = {'name': 'Артём', 'age': 20};
//   // print(person['name']);
//   // person['city'] = 'Волжский';

//   // Set<int> ids = {1, 2, 3, 2, 1};
//   // print(ids); // {1, 2, 3}
//   // print(ids.length); // 3

//   // // Перебор коллекций
//   // List<String> fruits2 = ['яблоко', 'банан', 'груша'];
//   // for (var fruit in fruits2) {
//   //   print(fruit);
//   // }

// //   print(greet('Артём'));
// //   print(square(4));
// //   print(half(5.0));

// //   // Вызов именованных параметров
// //   describePet(name: 'Барсик', age: 3);
// //   describePet(name: 'Шарик', species: 'пёс');

// //   // Вызов позиционных параметров
// //   print(repeat('xa'));
// //   print(repeat('xa', 3));

// //   // Анонимные функции и методы коллекций
// //   List<int> numbers = [1,45,3,12];
// //   numbers.sort((a, b) => b - a); // сортировка по убыванию
// //   print(numbers);

// //   List<String> names = ['Артём', 'Мария', 'Иван'];
// //   List<String> upper = names.map((name) => name.toUpperCase()).toList();
// //   print(upper);

// //   List<String> longNames = names.where((name) => name.length > 4).toList();
// //   print(longNames);

// // 4.1. Условия и тернарный оператор
//   int score2 = 85;
//   String grade;
//   if (score2 >= 90) {
//     grade = 'A';
//   } else if (score2 >= 75) {
//     grade = 'B';
//   } else {
//     grade = 'C';
//   }
//   print(grade);

//   String result = score2 >= 60 ? 'Сдал' : 'Не сдал';
//   print(result);

//   // 4.2. Циклы
//   for (int i = 0; i < 5; i++) {
//     print(i);
//   }

//   int n = 0;
//   while (n < 3) {
//     print(n);
//     n++;
//   }

//   // 4.3. Switch
//   String day = 'Пн';
//   switch (day) {
//     case 'Сб':
//     case 'Вс':
//       print('Выходной');
//       break;
//     case 'Пн':
//       print('Начало недели');
//       break;
//     default:
//       print('Рабочий день');
//   }
// }



// 1. Вычисляет среднее значение списка оценок
double average(List<int> grades) {
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}

// 2. Возвращает максимальную оценку
int maxGrade(List<int> grades) {
  int max = grades[0];
  for (var grade in grades) {
    if (grade > max) max = grade;
  }
  return max;
}

// 3. Возвращает минимальную оценку
int minGrade(List<int> grades) {
  int min = grades[0];
  for (var grade in grades) {
    if (grade < min) min = grade;
  }
  return min;
}

// 4. Возвращает текстовую оценку по среднему баллу
String letterGrade(double avg) {
  if (avg >= 4.5) return 'Отлично';
  if (avg >= 3.5) return 'Хорошо';
  if (avg >= 2.5) return 'Удовлетворительно';
  return 'Неудовлетворительно';
}

// 5. Выводит статистику для одного студента
void printStats({required String name, required List<int> grades}) {
  double avg = average(grades);
  print('$name');
  print('Оценки: $grades');
  print('Среднее: ${avg.toStringAsFixed(2)}');
  print('Макс: ${maxGrade(grades)}, Мин: ${minGrade(grades)}');
  print('Итог: ${letterGrade(avg)}');
  print('');
}


void main() {
  // 1. Данные студентов
  Map<String, List<int>> students = {
    'Артём Иванов':[2,2,3,5],
    'Мария Петрова':[3,4,3,5],
    'Иван Сидоров':[2,2,5,5],
  };
  print('Анализатор оценок');
  print('');

  // 2. Выводим статистику по каждому студенту
  students.forEach((name, grades) {
    printStats(name: name, grades: grades);
  });

  // 3. Общая статистика
  print('Общая статистика');
  int totalStudents = students.length;
  print('Всего студентов: $totalStudents');

  // 4. Считаем количество отличников (среднее >= 4.5)
  int excellentCount = 0;
  students.forEach((name, grades) {
    if (average(grades) >= 4.5) excellentCount++;
  });
  print('Отличников: $excellentCount из $totalStudents');
}

