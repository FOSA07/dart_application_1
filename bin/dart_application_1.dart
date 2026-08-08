import 'dart:core';
import 'dart:io';

// This is the main function where the execution of the program starts.
// The main function is the entry point of a Dart application.
// You need to have a main function in every Dart application.
void main() {
  // =======COMMENT========================================================================================================
  // Comments are used to explain the code and make it more readable.
  // The compiler ignores comments, so they do not affect the execution of the program.
  // This is a single-line comment
  /* This is a multi-line comment
     that spans multiple lines. */
  // You can also use comments to temporarily disable code during development.
  /// This is a documentation comment. It is used to generate documentation for the code.
  /// Documentation comments are written using triple slashes (///) and can be used to describe classes, methods, and variables.
  //  =========================================================================================================================

  // =======PRINT STATEMENT========================================================================================================
  // This is a simple Dart application that prints "Hello, World!" to the console.

  print('Hello, World!');
  print('This is a Dart application.');
  print('Dart is a programming language developed by Google.');
  print('Dart is used to build web, server, and mobile applications.');
  print('Dart is an object-oriented language with C-style syntax.');
  print(
    'Dart is a compiled language that can be run on the Dart VM or compiled to JavaScript.',
  );
  print('Dart is a language that is easy to learn and use.');

  // =========================================================================================================================

  // =======DART KEYWORDS========================================================================================================
  // Dart keywords are reserved words that have a special meaning in the Dart programming language.
  // Keywords cannot be used as identifiers (variable names, function names, etc.) in Dart.
  // Some of the Dart keywords are: abstract, as, assert, async, await, break, case, catch, class, const, continue, covariant, default, deferred, do, else, enum, export, extends, extension, external, factory, false, final, finally, for, Function, get, hide, if, implements, import, in, interface, is, late, library, mixin, new, null, on, operator, part, required, rethrow, return, set, show, static, super, switch, sync, this, throw, true, try, typedef, var, void, while, with, yield
  // =========================================================================================================================

  // =======DATA TYPES========================================================================================================
  // Data is an essential part of any programming language, and Dart provides a variety of data types to represent different kinds of data.
  // Data types are used to define the type of data that a variable can hold.
  // Dart is a statically typed language, which means that the type of a variable must be known at compile time.
  // Dart provides the following data types:
  // int: Represents integer values (whole numbers). e.g 1, 2, 3, -1, -2, -3
  // double: Represents floating-point values (decimal numbers). e.g 1.0, 2.5, 3.14, -1.0, -2.5, -3.14
  // String: Represents a sequence of characters (text). e.g "Hello, World!"
  // bool: Represents a boolean value (true or false). e.g true, false

  // =========================================================================================================================

  // =======VARIABLES========================================================================================================
  // Variables are used to store data in a program.
  // A variable is a named storage location in memory that can hold a value of a specific data type.
  // In Dart, variables are declared using the var keyword or by specifying the data type explicitly.
  // Variables are mutable, which means that their values can be changed during the execution of a program.
  // Before using a variable, it must be declared and initialized with a value.
  // Syntax for variable declaration:
  // Data-type variable-name;
  // Example:
  var name; // variable declaration
  // You store a value in a variable using the assignment operator (=).
  name = "John Doe"; // variable initialization
  // You can also declare and initialize a variable in a single line.
  // Data-type variable-name = value;
  // Example of a String variable:
  String studentName = "Jane Doe"; // variable declaration and initialization
  // Example of an int variable:
  int studentAge = 20; // variable declaration and initialization
  // Example of a double variable:
  double studentHeight = 5.5; // variable declaration and initialization
  // Example of a bool variable:
  bool isStudent = true; // variable declaration and initialization
  // Letting Dart Decide the Type of a Variable
  // Dart is a statically typed language, which means that the type of a variable must be known at compile time.
  // However, Dart also supports type inference, which means that the compiler can infer the type of a variable based on the value assigned to it.
  // This allows you to declare variables without explicitly specifying their data type, making your code more concise and easier to read.
  // Example:
  var studentName2 = "Jane Doe"; // variable declaration and initialization
  // The compiler infers that studentName2 is of type String based on the value assigned to it.
  // Do print(studentName2.runtimeType); to check the type // Output: String
  // Dart also provide the dynamic keyword, which allows you to declare a variable that can hold values of any data type.
  // Example:
  dynamic studentName3 = "Jane Doe"; // variable declaration and initialization

  // Locking a Variable's Value
  // In Dart, you can use the final and const keywords to declare variables whose values cannot be changed after they are initialized.
  // The final keyword is used to declare a variable that can only be assigned a value once, while the const keyword is used to declare a variable whose value is a compile-time constant.
  // Example of a final variable:
  final String country = "Nigeria"; // variable declaration and initialization
  // Example of a const variable:
  const double pi = 3.14; // variable declaration and initialization
  // The difference between final and const is that final variables can be assigned a value at runtime, while const variables must be assigned a value at compile time.
  // Example of a final variable assigned at runtime:
  final DateTime date = DateTime.now();
  // This simply means that the value of date is determined at runtime, and it cannot be changed after it is assigned.
  //
  // String Interpolation
  // Dart provides a feature called string interpolation, which allows you to embed expressions inside string literals.
  // This makes it easy to create dynamic strings that include variable values or the results of expressions.
  // To use string interpolation, you can use the $ symbol followed by the variable name or expression inside curly braces {}.
  // Example:
  String firstName = "John";
  String lastName = "Doe";
  print("My name is $firstName $lastName"); // Output: My name is John Doe
  // You can also use expressions inside the curly braces.
  int a = 10;
  int b = 20;
  print(
    "The sum of $a and $b is ${a + b}",
  ); // Output: The sum of 10 and 20 is 30
  // You can also use string interpolation to call methods or access properties of objects.
  String text = "Hello, World!";
  print(
    "The length of the text is ${text.length}",
  ); // Output: The length of the text is 13
  // You can also use string interpolation to format numbers or dates.
  double price = 9.99;
  print(
    "The price is \$${price.toStringAsFixed(2)}",
  ); // Output: The price is $9.99
  DateTime now = DateTime.now();
  print(
    "The current date and time is ${now.toString()}",
  ); // Output: The current date and time is 2024-06-15 12:34:56.789

  // ======OPERATORS========================================================================================================
  // Operators are symbols that perform operations on variables and values.
  // Types of operators in Dart include:
  // Arithmetic Operators: These are the basic mathematical operators used to perform arithmetic operations on numbers: +, -, *, /, %, ~/
  // The % operator is used to find the remainder of a division operation, while the ~/ operator is used to perform integer division (i.e., division that discards the remainder).
  // Example:
  int x = 10;
  int y = 3;
  print(x + y); // Output: 13
  print(x - y); // Output: 7
  print(x * y); // Output: 30
  print(x / y); // Output: 3.3333333333333335
  print(x % y); // Output: 1
  print(x ~/ y); // Output: 3
  // Increment and Decrement Operators: These operators are used to increase or decrease the value of a variable by 1: ++, --
  // Example:
  int z = 5;
  z++; // Increment z by 1
  print(z); // Output: 6
  z--; // Decrement z by 1
  print(z); // Output: 5
  // Assignment Operators: These operators are used to assign values to variables: =, +=, -=, *=, /=, %=, ~/=
  // Example:
  int a1 = 10;
  a1 += 5; // Equivalent to a1 = a1 + 5
  print(a1); // Output: 15
  a1 -= 3; // Equivalent to a1 = a1 - 3
  print(a1); // Output: 12
  a1 *= 2; // Equivalent to a1 = a1 * 2
  print(a1); // Output: 24
  // a1 /= 4; // This will cause an error because a1 is an int and the result of the division is a double. To fix this, you can either change the type of a1 to double or use the ~/ operator for integer division.
  a1 ~/= 4; // Equivalent to a1 = a1 ~/ 4
  print(a1); // Output: 6.0
  // Comparison Operators: These operators are used to compare values and return a boolean result: >, <, >=, <=, ==, !=
  // Example:
  int a2 = 10;
  int b2 = 5;
  print(a2 > b2); // Output: true
  print(a2 < b2); // Output: false
  print(a2 >= b2); // Output: true
  print(a2 <= b2); // Output: false
  print(a2 == b2); // Output: false
  print(a2 != b2); // Output: true
  // Logical Operators: These operators are used to combine boolean expressions and return a boolean result: &&, ||, !
  // Logical AND (&&): Returns true if both operands are true, otherwise returns false.
  // Logical OR (||): Returns true if at least one of the operands is true, otherwise returns false.
  // Logical NOT (!): Returns true if the operand is false, and false if the operand is true.
  // Example:
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue && isFalse); // Output: false
  print(isTrue || isFalse); // Output: true
  print(!isTrue); // Output: false
  print(!isFalse); // Output: true
  // Null-aware Operators: These operators are used to handle null values and provide default values when a variable is null: ?, ??, ??=
  // The ? operator is used to check if a variable is null before accessing its properties or methods.
  // The ?? operator is used to provide a default value when a variable is null.
  // The ??= operator is used to assign a value to a variable only if it is null.
  // Example:
  int? number = null;
  print(number ?? 10); // Output: 10
  number ??= 20; // Assigns 20 to number only if it is null
  print(number); // Output: 20
  // Type Test Operators: These operators are used to test the type of a variable and return a boolean result: is, is!, as
  // The is operator is used to check if a variable is of a specific type.
  // The is! operator is used to check if a variable is not of a specific type.
  // The as operator is used to cast a variable to a specific type.
  // Example:
  dynamic value = "Hello, World!";
  print(value is String); // Output: true
  print(value is! int); // Output: true
  String stringValue = value as String; // Casts value to String
  print(stringValue); // Output: Hello, World!
  // Bitwise Operators: These operators are used to perform bitwise operations on integers: &, |, ^, ~, <<, >>
  // The & operator performs a bitwise AND operation.
  // The | operator performs a bitwise OR operation.
  // The ^ operator performs a bitwise XOR operation.
  // The ~ operator performs a bitwise NOT operation.
  // The << operator performs a left shift operation.
  // The >> operator performs a right shift operation.
  // Ternary Operators: These operators are used to perform conditional operations based on a boolean expression: condition ? expr1 : expr2
  // Example:
  int age = 20;
  String isAdult = age >= 18 ? "Yes" : "No";
  print(isAdult); // Output: Yes

  // =================================================================================================================================================

  // =======TYPE CONVERSIONS========================================================================================================
  // Type conversion is the process of converting a value from one data type to another.
  // Dart provides several methods for type conversion, including:
  // int.parse(): Converts a string to an integer.
  // double.parse(): Converts a string to a double.
  // toString(): Converts a value to a string.
  // Example:
  String str = "123";
  int num1 = int.parse(str); // Converts str to an integer
  print(num1); // Output: 123
  double num2 = double.parse("45.67"); // Converts a string to a double
  print(num2); // Output: 45.67
  int num3 = 89;
  String str2 = num3.toString(); // Converts an integer to a string
  print(str2); // Output: 89
  // Note: When performing type conversions, it is important to ensure that the value being converted is compatible with the target data type.
  // For example, attempting to convert a non-numeric string to an integer using int.parse() will result in a FormatException.
  // int.parse("abc"); // Throws FormatException

  // =================================================================================================================================================

  // =======LIBRARIES========================================================================================================
  // Libraries are collections of pre-written code that provide additional functionality to a Dart application.
  // Dart provides a rich set of built-in libraries that can be imported and used in your application.
  // You can also create your own libraries to organize your code and make it more reusable.
  // To use a library in your Dart application, you need to import it using the import statement.
  // Example:
  // import 'dart:math'; // Importing the math library
  // import 'dart:convert'; // Importing the convert library
  // Types of Libraries in Dart:
  // 1. Built-in Libraries: These are libraries that are included with the Dart SDK and provide a wide range of functionality, such as math, collections, and I/O.
  // 2. External Libraries: These are libraries that are developed by third-party developers and can be added to your Dart application using the pub package manager.
  // 3. Custom Libraries: These are libraries that you create yourself to organize your code and make it more reusable.

  // =================================================================================================================================================

  // =======USER INPUT========================================================================================================
  // User input is a way for users to interact with a Dart application by providing data or commands.
  // stdin is a built-in library in Dart that provides functionality for reading input from the standard input (keyboard).
  // To use stdin, you need to import the dart:io library at the beginning of your Dart file.
  // Example:
  // import 'dart:io'; // Importing the dart:io library to use stdin
  // Dart provides several ways to get user input, including:
  // 1. Using the stdin.readLineSync() method: This method reads a line of text from the standard input (keyboard) and returns it as a string.
  // Example:
  print("Enter your name: ");
  String? nameInput = stdin
      .readLineSync(); // Reads user input from the keyboard
  print("Hello, $nameInput!"); // Prints a greeting message with the user's name
  // 2. Using the stdin.readByteSync() method: This method reads a single byte of input from the standard input (keyboard) and returns it as an integer.
  // Example:
  print("Enter a number: ");
  int? numberInput = int.tryParse(
    stdin.readLineSync()!,
  ); // Reads user input from the keyboard and converts it to an integer
  if (numberInput != null) {
    print(
      "You entered the number: $numberInput",
    ); // Prints the number entered by the user
  } else {
    print(
      "Invalid input. Please enter a valid number.",
    ); // Prints an error message if the input is not a valid number
  }
  // stdin.readLineSync() only takes string input, so if you want to take other types of input, you need to convert the string to the desired type using the appropriate method (e.g., int.parse(), double.parse(), etc.).
  // stdin.readLineSync() returns a nullable String, which means that it can return null if the user does not enter any input.

  // =================================================================================================================================================

  // =======COLLECTIONS========================================================================================================
  // Collections are data structures that can hold multiple values or objects.
  // Dart provides several types of collections, including:
  // 1. List: A list is an ordered collection of values that can be of any data type. Lists are similar to arrays in other programming languages.
  // Example:
  List<String> fruits = ["Apple", "Banana", "Orange"]; // A list of strings
  print(fruits); // Output: [Apple, Banana, Orange]
  List random = ["text", 1, 2.0]; // A dynamic list: can hold values of any type
  print(random);
  // 2. Set: A set is an unordered collection of unique values. Sets do not allow duplicate values and are useful for storing distinct items.
  // Example:
  Set<int> numbers = {1, 2, 3, 4, 5}; // A set of integers
  print(numbers); // Output: {1, 2, 3, 4, 5}
  // 3. Map: A map is a collection of key-value pairs, where each key is unique and maps to a specific value. Maps are useful for storing data that can be accessed using a unique identifier (key).
  // Example:
  Map<String, int> ages = {
    "Alice": 25,
    "Bob": 30,
    "Charlie": 35,
  }; // A map of string keys and integer values
  print(ages); // Output: {Alice: 25, Bob: 30, Charlie: 35}
  // You can also create empty collections and add values to them later.
  List<String> colors = []; // An empty list of strings
  colors.add("Red"); // Adding a value to the list
  colors.add("Green"); // Adding a value to the list
  colors.add("Blue"); // Adding a value to the list
  print(colors); // Output: [Red, Green, Blue]
}
