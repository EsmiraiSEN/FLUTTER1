void main() {

  // 2.1. Переменные и базовые типы
  String name = 'Артём';
  int age = 20;
  double height = 1.75;
  bool isStudent = true;

  print(name);
  print(age);
  print(height);
  print(isStudent);

  // 2.2. Строковая интерполяция
  print('Привет, $name! Тебе $age лет.');
  print('Через 5 лет тебе будет ${age + 5} лет.');
  print('Рост: ${height} м, студент: $isStudent');

  // 2.3. Вывод типа — var
  var score = 95; 
  var language = 'Dart'; 
  print('$language: $score');
  

  // 2.4. final и 2.5. const
  final String finalLang = 'Dart';
  const double pi = 3.14159;
  final int startYear = 2026;
  print('$finalLang started in $startYear, pi is $pi');

  // 2.6. Null Safety
  String? city = null; // nullable
  

  if (city != null) {
    print(city.toUpperCase());
  }
  
  // Способ 2: оператор ?.
  print(city?.toUpperCase());

  // Оператор ??
  String? nickname = null;
  String display = nickname ?? 'Аноним';
  print(display);

  // 2.7. Коллекции
  List<String> fruits = ['яблоко', 'банан', 'груша'];
  fruits.add('апельсин');
  print(fruits[0]);
  print(fruits.length);

  Map<String, dynamic> person = {'name': 'Артём', 'age': 20};
  print(person['name']);
  person['city'] = 'Волжский';

  Set<int> ids = {1, 2, 3, 2, 1};
  print(ids); // {1, 2, 3}
  print(ids.length); // 3