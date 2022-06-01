import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

typedef String GskFunction(String x);
void main(List<String> arguments) {
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

  //positional parameters

// optional parameters
// optional positional parameters
// optional named parameters
  int summation(int x, {int y = 9}) {
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
