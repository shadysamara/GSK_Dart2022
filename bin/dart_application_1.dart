import 'dart:developer';

import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

import 'Person.dart';
import 'Student.dart';
import 'Teacher.dart';
import 'dummy_data.dart';

typedef String GskFunction(String x);
enum UserType { admin, client, seller }
void main(List<String> arguments) {
  Student student = Student.fromMap({
    "first_name": "shaker",
    "last_name": "ahmed",
    "isMale": true,
    "age": 8.5,
    "gpa": 99
  });
  Teacher teacher1 = Teacher('ahmed', 'hassan', 700);
  Teacher teacher2 = Teacher('ahmed', 'hassan', 700);
  print(teacher1 == teacher2); // => true operator overiding

/*
define abstract method in student class called getHomework
*/

// student.
/*
- define toMap method in student class
- define new class called graduatedStudent and make it subclass for student



*/
  /*
create class called student and define this attributes to it
- fullName as string
- gpa as double
- level as enum and give it this values (first, second, third, fourth, graduated)
- define function called getStudentGpa that return string as the following
   - if the gpa larger than 90 return excellent
   - if the gpa larger than 80 return vgood
   - if the gpa larger than 70 return good
   - if the gpa larger than 60 return poor
   - else return failed
- create instance from student class
- create costructor for student class and assign values for each attribute using
this constructor
- create a new constructor called student.fromMap
- check if your constructor work correctly by pass map to it
  */
  // Person person3 = Person()
  //   ..fName = "omar"
  //   ..lName = "ahmed"
  //   ..gender = Gender.male
  //   ..ageInYears = 9.7;

  // Person person2 = Person();
  // person2.fName = "omar";
  // person2.lName = "ahmed";
  // person2.ageInYears = 9.7;
  // person2.gender = Gender.male;
  // List<Person> persons = students.map((e) => Person.fromMap(e)).toList();
  // print(persons.first.toMap().toString());

  // Person person1 = Person('omar', 'ahmed', Gender.male, 9.5);
  // person1.fName = "omar";
  // person1.lName = "ahmed";
  // person1.ageInYears = 9.7;
  // person1.gender = Gender.male;
  // print(person1.fName);
  /* checkUser(UserType user) {
    //condition?if true:if
    String result = user == UserType.admin
        ? 'hello admin'
        : user == UserType.client
            ? 'hello client'
            : 'hello seller';
    // if (user == UserType.admin) {
    //   print('hello admin');
    // } else if (user == UserType.client) {
    //   print('hello client');
    // } else {
    //   print('hello seller');
    // }
  }

  checkUser(UserType.admin);
  */
  /*
define function called checkUser
make the function recieve the user as parameter
check if the passed user is admin print hello admin
if the passed user is client print hello client, you can buy what you want here
if the passed user is seller print hello seller, you can sell your products here


  */
  /*
  String capetilizeFirstLeter(String name) {
    return name[0].toUpperCase() + name.substring(1);
  }

  String formatMiddleName(String name) {
    return ' ' + name[0].toUpperCase() + '. ';
  }

  String? formatFullName(GskFunction fun1, GskFunction fun2, String fullName) {
    List<String> names = fullName.split(' ');
    if (names.length != 3) {
      return null;
    } else {
      String firstName = fun1(names[0]);
      String secondName = fun2(names[1]);
      String lastName = fun1(names[2]);
      return firstName + secondName + lastName;
    }
  }

  int sum(int x, int y) {
    return x + y;
  }

  print(formatFullName(
      capetilizeFirstLeter, formatMiddleName, 'shady ahmed mohammed'));
*/
  //positional parameters

// optional parameters
// optional positional parameters
// optional named parameters
  /*int summation(int x, {int y = 9}) {
    return x + y;
  }

  summation(6);

  double devision({int x = 1, int y = 1}) {
    return x / y;
  }

  print(devision(y: 8));
  int multiply([int x = 1, int? y]) {
    if (y == null) {
      return x * 1;
    } else {
      return x * y;
    }
  }

  print(multiply(5, 6));
*/
/*
// signeture
1- return type
2- function name
3- parameters

4- implemtation
*/
  /*
- define new map called StudentDetails which has keys as string and values as dynamic
- add name to the map and assign string value to it
- add subjects to the map and assign list of string to it
- add marks to the map and assign map of markes to it
- use for loop to print all subjects in the map

  Map<String, dynamic> StudentDetails = {
    "name": "omar",
    "subjects": ["arabic", "english", "math"],
    "marks": {"arabic": 99, "math": 95, "english": 98}
  };
  // List<String> subjects = StudentDetails['subjects'];
 StudentDetails['subjects'].forEach((element) {
    print(element);
  });


  */
  //Map -> hashmap -> json
  // Map<String, dynamic> map = {
  //   "name": "omar",
  //   "age": 9,
  //   "isMale": true,
  //   "city": "rafah"
  // };
  // map['name'] = 'majd';
  // map.putIfAbsent('city', () => 'gaza');
  // map.containsKey('city');
  // map.containsValue("rafah");
  // map.forEach((key, value) {
  //   print('the key is: $key, and the value is $value');
  // });

  //set
  //   List<String> namesList = ['ahmed', 'ahmed', 'omar'];
  // Set<String> namesSet = {'ahmed', 'ahmed', 'omar',...namesList};

  // print(namesSet);
  // print(namesList);
  /*
- defien list called students and assign empty list to it
- check if the list is empty print no process is applied
- add dummy names to students list using addAll
- if the list is not empty convert all the names 
which has more than 4 letters to upperCase for just the first 
letter and save the result in
new list using map function
ahmed = ? Ahmed
[in, ahmed, ali, saeed]=>[in,Ahmed,ali,Saeed];

List<String> students = [];
  List<String> newList = [];
  if (students.isEmpty) {
    students.addAll(['ali', 'hassan', 'hussam', 'mai']);
  } 
    newList = students.map((e) {
      if (e.length >= 4) {
        return e[0].toUpperCase() + e.substring(1);
      } else {
        return e;
      }
    }).toList();
  
  print(newList);


  */
/*
- define a string variable called users and give it 
default value = "".
- defeine List of string called usersList which contains
the following items ['saeed','hesham','raed']
- using anu method of for loop assign all userList
values to user variable
"saeed/hesham/raed"
*/
  // List<String> usersList = ['saeed', 'hesham', 'raed', 'hesham'];
  // List<String> userListUpper = [];
  // List<int> usersNamesLengths = [];
  // String users = "";

  // Iterable<int> result = usersList.map((element) {
  //   return element.length;
  // });
  // usersNamesLengths = result.toList();
  // int heshamIndex = usersList.lastIndexOf('hesham');
  // bool largerThAN4 = usersList.any((element) {
  //   return element.length > 4;
  // });
  // List test = [1];
  // print(test.isEmpty);

  // List<String> maleStudents = ['omar', 'hassan', 'saeed'];
  // List<String> femaleStudents = ['sara', 'hanan', 'farah'];
  // List<String> allStudents = [...maleStudents, ...femaleStudents, 'raed'];

/*
define new string variable contains many lines and 
use $ sign to print some variables inside this string

*/
  String sentence =
      """create a multi-line string: use a triple quote with either 
single or double quotation marks  ’’’ .
 You can concatenate strings using adjacent string literals
""";
  String name = 'omar';
  int age = 9;
  String omarSentece =
      "hello my name is " + name + " i am " + age.toString() + " years old";
  String omarSentence2 = "hello my name is $name, and i am $age years old";
  // print(omarSentence2);
  // int x = 1;
  // double y = 2.0;
  // num z = 1.4;
  // String name = "omar";
  // bool result = true;
  // List<dynamic> persons = ['omar', 9, true, []]; // generic type
  // Set<String> personsNames = {'omar', "omar"};
  // Map<String, int> personsAgeMap = {
  //   "Omar":9,
  //   "saeed":8,
  //   "amjad":7
  // };
}
