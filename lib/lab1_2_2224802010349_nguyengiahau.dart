void main() {
  // Variables
  var name = "Nguyen Gia Hau";
  int age = 20;
  double height = 5.9;
  bool isAdult = age > 18 ? true : false;

  // print statements
  print("Name: $name");
  print("Age: $age");
  print("Height: $height");

  if (isAdult) {
    print("$name is an adult.");
  } else {
    print("$name is not an adult.");
  }

  // function call
  greet(name);

  // loop
  for (int i = 0; i < 5; i++) {
    print("This is loop iteration number $i");
    if (i == 3) {
      break; // Exit the loop when I is 3
    }
  }

  // friends array
  List<String> friends = ["Alice", "Bob", "Charlie"];

  // Lopping through friends array
  for (String friend in friends) {
    print("Friend: $friend");
  }

  // creating a person object
  Person person = Person(name, age, height);
  person.introduce();

  // exception handling
  try {
    int result = 10 ~/ 0; // This will throw an exception
    print("Result: $result");
  } catch (e) {
    print("An error occurred: $e");
  }
}

void greet(String name) {
  print("Welcome, $name!");
}

class Person {
  String name;
  int age;
  double height;
  bool isAdult = false;

  Person(this.name, this.age, this.height) {
    isAdult = age > 18 ? true : false;
  }

  void introduce() {
    print(
      "Hello, my name is $name. I am $age years old and my height is $height feet.",
    );
  }
}
