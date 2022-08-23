class Person {
  String? firstName;
  String? lastName;
  String get fullName => "$firstName $lastName";
}

class newPerson {
  String? firstName;
  String? lastName;
  String get fullName => "$firstName $lastName";
  String get initials => "${firstName![0]}.${lastName![0]}.";
  set fullName(String fullName) {
    var parts = fullName.split(" ");
    this.firstName = parts.first;
    this.lastName = parts.last;
  }
}

class anotherPerson {
// ... class fields definition
  String? firstName;
  String? lastName;
  static String personLabel = "Person name:";
  String get fullName => "$personLabel $firstName $lastName";
// modified to print the new static field "personLabel"
}

class PersonName {
  late String firstName;
  late String lastName;

  PersonName(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }

  String get fullName => "$firstName $lastName";
}

class PersonNewName {
  late String firstName;
  late String lastName;

  PersonNewName(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
  String get fullName => "$firstName $lastName";
  PersonNewName.anonymous();
}

class PersonAnotherNewName {
  late String firstName;
  late String lastName;
  late var _cacheService;
  // factory PersonAnotherNewName.fromCache(String firstName, String lastName) {
  //   if (_cacheService.containsPerson(firstName, lastName)) {
  //     return _cacheService.getPerson(firstName, lastName);
  //   } else {
  //     return PersonAnotherNewName(firstName, lastName);
  //   }
  // }
  PersonAnotherNewName(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
  String get fullName => "$firstName $lastName";
  PersonAnotherNewName.anonymous();
}

class Student extends PersonName {
  String nickName;
  Student(
    String firstName,
    String lastName,
    this.nickName,
  ) : super(firstName, lastName);
  @override
  String toString() => "$fullName, aka $nickName";
}

class newStudent implements PersonName {
  String nickName;
  @override
  String firstName;
  @override
  String lastName;
  newStudent(this.firstName, this.lastName, this.nickName);
  @override
  String get fullName => "$firstName $lastName";
  @override
  String toString() => "$fullName, also known as $nickName";
}

abstract class PersonNew {
  String firstName;
  String lastName;
  PersonNew(this.firstName, this.lastName);
  String get fullName => "$firstName $lastName";
}

class StudentNew extends PersonNew {
  String nickName;
  StudentNew(this.nickName, super.firstName, super.lastName);
//... other class members
  @override
  String get fullName => "$firstName $lastName";
}

class ProgrammingSkills {
  coding() {
    print("writing code...");
  }
}

class ManagementSkills {
  manage() {
    print("managing project...");
  }
}

class SeniorDeveloper extends PersonNew
    with ProgrammingSkills, ManagementSkills {
  SeniorDeveloper(String firstName, String lastName)
      : super(firstName, lastName);
}

class JuniorDeveloper extends PersonNew with ProgrammingSkills {
  JuniorDeveloper(String firstName, String lastName)
      : super(firstName, lastName);
}
