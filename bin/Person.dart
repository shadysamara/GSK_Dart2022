enum Gender { male, female }
enum Level { excellent, vgood, good, poor, failed }

class Person {
  late String fName;
  late String lName;
  late Gender gender;
  late Level level;
  late double ageInYears;
  double ageInMonths() {
    return (ageInYears) * 12;
  }

  Person(this.fName, this.lName, this.gender, this.ageInYears);

  Person.fromMap(Map<String, dynamic> map) {
    fName = map['first_name'];
    lName = map['last_name'];
    gender = map['isMale'] == true ? Gender.male : Gender.female;
    level = map['gpa'] >= 90
        ? Level.excellent
        : map['gpa'] >= 80
            ? Level.vgood
            : map['gpa'] >= 70
                ? Level.good
                : map['gpa'] >= 60
                    ? Level.poor
                    : Level.failed;
    ageInYears = map['age'];
  }
  toMap() {
    // return person as map
  }
}
