import 'package:latihan_11_tsa/latihan_11_tsa.dart';
// import 'package:flutter/material.dart';

void main(List<String> arguments) {
  print('\nMixins\n');

  SeniorDeveloper seniorDeveloper = new SeniorDeveloper("Achmada", "Fiqri");
  print(seniorDeveloper.fullName);
  seniorDeveloper.manage();
  seniorDeveloper.coding();
  JuniorDeveloper juniorDeveloper = new JuniorDeveloper("Taufania", "Frinda");
  print(juniorDeveloper.fullName);
  juniorDeveloper.coding();

  print('\nClass Abstract\n');

  PersonNew student = new StudentNew("Clark", "Kent", "Kal-El");
  print(student);

  print('\nInterfaces\n');

  Student students = Student("Clark", "Kent", "Kal-El");
  print(students);

  print('\nClass Inheritance\n');

  Student student1 = Student("Clark", "Kent", "Kal-El");
  print(student1);

  print('\nFactory constructors\n');

  PersonAnotherNewName somePersonAnotherNewName =
      PersonAnotherNewName("Clark", "Kent");
  print(somePersonAnotherNewName.fullName);

  print('\nNamed Konstruktor\n');

  PersonNewName somePersonNewName = PersonNewName("Clark", "Kent");
  print(somePersonNewName.fullName);

  print('\nKonstruktor\n');

  PersonName somePersonName = PersonName("Clark", "Kent");
  print(somePersonName.fullName);

  print('\nStruktur Class\n');

  Person somePerson = Person();
  somePerson.firstName = "Clark";
  somePerson.lastName = "Kent";
  print(somePerson.fullName);

  print('\nGetter Setter\n');

  newPerson someNewPerson = new newPerson();
  someNewPerson.firstName = "Clark";
  someNewPerson.lastName = "Kent";
  print(someNewPerson.fullName); // prints Clark Kent
  print(someNewPerson.initials); // prints C. K.
  someNewPerson.fullName = 'Achmada Fiqri A Rasyad';
  print(someNewPerson.fullName); // prints Achmada Fiqri A Rasyad
  print(someNewPerson.initials); // prints A. R.

  print('\nStatic Fields and Methods\n');

  anotherPerson someAnotherPerson = new anotherPerson();
  someAnotherPerson.firstName = "Clark";
  someAnotherPerson.lastName = "Kent";
  anotherPerson someAnotherNewPerson = new anotherPerson();
  someAnotherNewPerson.firstName = "Peter";
  someAnotherNewPerson.lastName = "Parker";
  print(someAnotherPerson.fullName); // prints Person name: Clark Kent
  print(someAnotherNewPerson.fullName); // prints Person name: Peter Parker
  anotherPerson.personLabel = "name:";
  print(someAnotherPerson.fullName); // prints name: Clark Kent
  print(someAnotherNewPerson.fullName); // prints name: Peter Parker
}
