
import 'Person.dart';
import 'general_class.dart';

class Human with GeneralClass {
  @override
  bool operator ==(Object x) {
    return (x is Human) && x.name==name && x.age==age;
  }
   @override
  bool operator >(Object x) {
    return (x is Human) && (age!  > x.age! );
  }
}
