import 'Person.dart';

class Student extends Person {
  late num gpa;
  Student(this.gpa, String firstName, String lastName, Gender gender,
      double ageInYears)
      : super(firstName, lastName, gender, ageInYears);
  Student.fromMap(Map<String, dynamic> map) : super.fromMap(map) {
    gpa = map['gpa'];
  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    return {
      "fName": super.fName,
      "lName": super.lName,
      "isMale": super.gender == Gender.male ? true : false,
      "gpa": gpa,
      "age": super.ageInYears,
    };
  }
}


