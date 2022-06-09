enum Gender { male, female }
enum Level { excellent, vgood, good, poor, failed }
// we can inherit abstract class but we can not make instance from it
abstract class Person {
  late String fName;
  late String lName;
  late Gender gender;
  late double ageInYears;

  double ageInMonths() {
    return (ageInYears) * 12;
  }

// default constructor
  Person(this.fName, this.lName, this.gender, this.ageInYears);

// named constructor
  Person.fromMap(Map<String, dynamic> map) {
    fName = map['first_name'];
    lName = map['last_name'];
    gender = map['isMale'] == true ? Gender.male : Gender.female;
    ageInYears = map['age'];
  }
  Map<String, dynamic> toMap();
}
