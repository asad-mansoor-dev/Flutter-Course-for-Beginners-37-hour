import 'package:flutter/material.dart';
// 1- Keywords: https://dart.dev/language/keywords
// 2- Data Types: https://api.dart.dev/stable/3.0.1/dart-core/dart-core-library.html

/* 3- Constants:
const name = 'Asad'  // While constant need to be initialised at first time.

Two types of Constants
i) Compile Time Constant
    Package the program that can be run afterwards on machine time. Packging your code.

    const age = 27; // const is keyword, age is name
    const twiceTheAge = age * 2;

ii) Run time Constant
    Running your program on machine is run-time. In Dart run-time and compile time constants have no difference.
*/

/*
4- Variables
    var name = 'Asad';  
    final var name = 'Asad'   // A variable whose value can only be assigned once.
*/

/*
5- Functions

  returnType functionName(parameters...) {
    //commands...
  }

// Sigmle Line functions; function short-hand
String getFirstName() => 'FirstName'; // In single line function you don't need return keyword, it will return automatically.

String getFullName(String firstName, String lastName) {

  return '$firstName $lastName';
}

// run the function

print(getFullName('Asad', 'Mehmood'));
*/

/*
6- If & Else

  void test() {
  final name = 'Asad';


  if(name == 'Asad') {
    print('Yes this is Asad');
  } else {
    print('I don\'t know what this'); //OR print("I don't know what this");
  }

  // for single line
  if (name == 'Asad') print('Yes One liner Asad');

}
*/

/*
7- Operators (+ - / * ==): Prefix, Infix, Postfix

  void test() {

  var age = 20;
  // Infix Operators
  final halfOfAge = age / 2;
  final doubleTheAge = age * 2;
  print(halfOfAge);

  // Prefix Operators
  final ageMinusOne = --age; // age will also be decremented and ageMinusOne variable will also be initialised to it.
  print(age);
  print(ageMinusOne);
}

void test() {

  final name= 'Asad';
  final nameTimeTwenty = name * 20;
  print(nameTimeTwenty);
}
*/

/*
8- Lists in Dart:
  In Dart Array is named as List,
  Other types of Lists include 

  void test() {
  var names = ['Muhammad', 'Asad', 'Mehmood'];
  final asad = names[1];
  print(asad);

  final length = names.length;
  print(length);
  names.add('Devsinc');
  print(names.length);
}
*/

/*
9- Sets in Dart:
  In Dart Array is named as List,
  Other types of Lists include 
  
  void test() {
  var names = ['Muhammad', 'Asad', 'Mehmood'];
  final asad = names[1];
  print(asad);

  final length = names.length;
  print(length);
  names.add('Devsinc');
  print(names.length);
}

//Heterogenius values are also allowed in Sets.
void test() {
  final names = {'Muhammad', 1};
  names.add('Muhammad');
  names.add('Asad');
  names.add('Mehmood');
  print(names);
} 
*/

/*
10- Maps in Dart: Maps are used to hold key-value pairs of information.

// Two keys cannot be same, they need to be unique.
// Heterogenius type values will be of type 'Object'.
void test() {
  // Map<String, Object>
  const person = {
    'age': 20,
    'name':'Asad'
  }; 

  // Map<String, Int>
  const person = {
    'age': 20,
    'class': 14
  };

  const person = {
    'age': 20,
    'name':'Asad'
  };

  // TO OVERRITE A KEY, USE BELOW SYNTAX
  person['age'] = 30;
} 
*/

/*
11- Sound Null-Safety in Dart (Operators  ?? ?. ??=)
  Absence of a value.

void test() {
  const name = null; // dynamic data type
  String? fullName = null; // String? type
  fullName = 'Asad';
  print(name);
  print(fullName); 
}

void test() {
  List<String>? names = ['Asad', 'Mehmood']; // List can benull but values cannot be null
  List<String?>? fullNames = ['Asad', 'Mehmood']; // Both List and it's values can be null 
}
*/

/*
12- Cherry Picking non-null values

  void test() {
  const String? firstName = null;
  const String? middleName = 'Asad';
  const String? lastName = 'Mehmood';

  const firstNonNullValue = firstName ?? middleName ?? lastName;
  }

*/

/*
13- Null-Over-Assignment Operator

void test(String? firstName, String? middleName, String? lastName) {
  String? name = firstName;
  name ??= lastName; // if value on left side is null assign it the value of right side.
  print(name);
}
*/

/*
14- Conditional invocation

void test(List<String>? names) {
  final length = names?.length ?? 0;
}
*/

/*
15- Enumerations: Named lists of related items

enum PersonProperties {
  firstName, lastName, age
}
void test() {
  print(PersonProperties.firstName);
  print(PersonProperties.firstName.name);  // use .name to print name of that prroperty in enum  
}
*/

/*
16- Switch Statement
enum AnimalType {
  cat, dog, bunny
}
void test(AnimalType animalType) {
  switch (animalType) {
    case AnimalType.bunny:
      print('Bunny');
      break;
    case AnimalType.cat:
      print('Cat');
      break;
    case AnimalType.dog:
      print('Dog');
  } 
}
*/

/*
17- Classes in Dart: Grouping of various functionalities one packageable piece of data.

class Person {
  void run() {
    print('Running');
  }
  void breathe() {
    print('Breathing');
  }
}

void test() {
  final person = Person();
  person.run();
  person.breathe();
}
*/

/*
18- objects: Instamce of class (eg String or any custom class)
  final person = Person();
*/

/*
19- Constructor : Especial logic logic in class that constructs/initialised or buids that class instances.
  class Person {
  final String name; // You must provide initialiser for final variable that is not initialised

  Person(this.name); 
}
*/

/*
20- Methods of a Class: A function on class which is usually available on instance on class means after you instantiated the class.

  class Person {
  final String name; // You must provide initialiser for final variable that is not initialised

  Person(this.name); 

  void printName() {
    print(name);
  }
}

void test() {
 final person = Person('Asad Mehmood');
 person.printName(); 
}
*/

/*
21- Inheritance and Subclassing: Allow to define a class and add that functionality to a new class.
class LivingThing {
  void breathe() {
    print('Living thing is breathing');
  }

  void move() {
    print('I am moving');
  }
}
class Cat extends LivingThing {

}

void test() {
 final fluffers = Cat();
 fluffers.move();
 fluffers.breathe();
}

*/

/*
22- Abstract Class: A class that cannot be instatiated. It group functionalities in one class that other classes can use.

  abstract class LivingThing {
  void breathe() {
    print('Living thing is breathing');
  }

  void move() {
    print('I am moving');
  }
}
class Cat extends LivingThing {

}

void test() {
 final fluffers = Cat();
 fluffers.move();
 fluffers.breathe();
}
*/

/*
23- Factory Constructors
class Cat {
  final String name;
  Cat(this.name);

  factory Cat.mano() {
    return Cat('Mano');
  }
}

void test() {
 final cato = Cat('Mano');
 print(cato.name);
}
*/

/*
24- Custom Operator

class Cat extends Object {   // extends Object is optional, it's just for understanding that we are Overriding the functionalities provided in Object class that is always super class of every class.

  final String name;
  Cat(this.name);

  @override
  bool operator == (covariant Cat other) => other.name == name;

  @override
  int get hashCode => name.hashCode;
  
}

void test() {

 final cato1 = Cat('Mano');
 final cato2 = Cat('Mano');
 if (cato1 == cato2) {
  print('They are equal');
 } else { 
  print('They are not equal'); // If we remove two overriding statements from Cat initialiser then this line will be printed.
 }
}
*/

/////// ADVANCED DART CONCEPTS

/*
25- Extensions: Adding logic/functionality to existing class.

class Cat {
  final String name;
  Cat(this.name);
}

extension Run on Cat {
  void run() {
    print('Cat $name is running');
  }
}

class Person {
  final String firstName;
  final String lastName;

  Person(this.firstName, this.lastName);
}
extension FullName on Person {
  String get fullName => '$firstName $lastName';
}
void test() {
  final cato = Cat('Mano');
  cato.run();
 final person = Person('Asad', 'Mehmood');
 print(person.fullName);
 
}
*/

/*
26- Future:  
Data To be returned in the future, as its name suggests

async / await: Async marks a function as 

Asynchronous Operations: That do not return immediately

Future<int> heavyFutureThatMultipliesByTwo(int a) {
  return Future.delayed(const Duration(seconds: 3), () {  
    return a * 2;
    });
}

void test()  {
  final result =  heavyFutureThatMultipliesByTwo(10);
  print(result);
}
*/

/*
27- Streams
A pipe of data that completes or never completes or errors out and die.
Example: A stream of time... (A stream of data that never completes)

A future that sends data down through this pipe that never ends, continues working...

Stream<String> getName() {
  return Stream.periodic(const Duration(seconds: 1), (value){
    return 'Asad';
  });
}

void test() async {
  await for (final value in getName()) {
    print(value);
  }
  print('Stream finished working'); 
}
*/

/*
28- Generators
A generator is function that returns a list of things. But it internally calculates that data in very simple way.

Iterables: are like a lazy collections. It is a list of things that are not completely calculated when first begins. Or a list of things that are calculated on the go. 
Iterable<int> getOneTwoThree() sync* {
   yield 1;
   yield 2;
   yield 3;
}
void test() {
   for (final value in getOneTwoThree()) {
    print(value);
    if( value == 2) {
      break;
    }
   }
}
async*: Async generators also exist and can be used.
*/

/*
29- Generics: To avoid re-writing similar code
class Pair<A, B> {
  final A value1;
  final B value2;

  Pair(this.value1, this.value2);
}
  void test() {
    final names = Pair('Asad', 'Mehmood');
    print(names.value1);
}
*/



void main() {
  
  runApp(const MyApp());
}

class Pair<A, B> {
  final A value1;
  final B value2;

  Pair(this.value1, this.value2);
}
  void test() {
    final names = Pair('Asad', 'Mehmood');
    print(names.value1);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    test();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
