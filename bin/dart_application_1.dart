// Note: 'dart:core' is imported automatically into every Dart file, so you never
// need to write `import 'dart:core';` yourself. Every other library must be
// imported explicitly before you can use it.
import 'dart:io'; // Gives us stdin, for reading input typed by the user.
import 'dart:math'; // Gives us sqrt(), max(), min(), pi and other math helpers.
// This one is OUR OWN library, not a built-in. It lives in lib/functions.dart.
// The package name comes from pubspec.yaml, which is why it reads
// package:dart_application_1/... rather than a file path.
import 'package:dart_application_1/functions.dart';

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
  // num: The parent type of both int and double. A num variable can hold either. e.g 1, 2.5
  // String: Represents a sequence of characters (text). e.g "Hello, World!"
  // bool: Represents a boolean value (true or false). e.g true, false
  // Dart also has types for holding many values at once, which we cover later:
  // List: An ordered collection of values. e.g ["Apple", "Banana"]
  // Set: An unordered collection of unique values. e.g {1, 2, 3}
  // Map: A collection of key-value pairs. e.g {"Alice": 25}
  // And two special types:
  // dynamic: A variable that can hold a value of ANY type, checked at runtime instead of compile time.
  // Object: The parent type of (almost) everything in Dart. Every type above is an Object.

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
  String? name; // variable declaration (no value yet, so it holds null)
  // The ? after the type means "this variable is allowed to hold null".
  // You store a value in a variable using the assignment operator (=).
  name = "John Doe"; // variable initialization
  print(name); // Output: John Doe
  // You can also declare and initialize a variable in a single line.
  // Data-type variable-name = value;
  // Example of a String variable:
  String studentName = "Jane Doe"; // variable declaration and initialization
  print(studentName); // Output: Jane Doe
  // Example of an int variable:
  int studentAge = 20; // variable declaration and initialization
  print(studentAge); // Output: 20
  // Example of a double variable:
  double studentHeight = 5.5; // variable declaration and initialization
  print(studentHeight); // Output: 5.5
  // Example of a bool variable:
  bool isStudent = true; // variable declaration and initialization
  print(isStudent); // Output: true
  // Letting Dart Decide the Type of a Variable
  // Dart is a statically typed language, which means that the type of a variable must be known at compile time.
  // However, Dart also supports type inference, which means that the compiler can infer the type of a variable based on the value assigned to it.
  // This allows you to declare variables without explicitly specifying their data type, making your code more concise and easier to read.
  // Example:
  var studentName2 = "Jane Doe"; // variable declaration and initialization
  // The compiler infers that studentName2 is of type String based on the value assigned to it.
  // Every value in Dart knows its own type, and .runtimeType asks it what that type is.
  print(studentName2.runtimeType); // Output: String
  // Because the type was inferred as String, you CANNOT later put a number in it:
  // studentName2 = 42; // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  // Dart also provide the dynamic keyword, which allows you to declare a variable that can hold values of any data type.
  // Example:
  dynamic studentName3 = "Jane Doe"; // variable declaration and initialization
  print(studentName3.runtimeType); // Output: String
  studentName3 = 42; // This IS allowed, because studentName3 is dynamic.
  print(studentName3.runtimeType); // Output: int

  // Locking a Variable's Value
  // In Dart, you can use the final and const keywords to declare variables whose values cannot be changed after they are initialized.
  // The final keyword is used to declare a variable that can only be assigned a value once, while the const keyword is used to declare a variable whose value is a compile-time constant.
  // Example of a final variable:
  final String country = "Nigeria"; // variable declaration and initialization
  print(country); // Output: Nigeria
  // country = "Ghana"; // Error: a final variable can only be set once.
  // Example of a const variable:
  const double piApprox = 3.14; // variable declaration and initialization
  print(piApprox); // Output: 3.14
  // The difference between final and const is that final variables can be assigned a value at runtime, while const variables must be assigned a value at compile time.
  // Example of a final variable assigned at runtime:
  final DateTime date = DateTime.now();
  print(date.year); // Output: the current year, e.g 2026
  // This simply means that the value of date is determined at runtime, and it cannot be changed after it is assigned.
  // const DateTime badDate = DateTime.now(); // Error: DateTime.now() is not known at compile time.
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
  ); // Output: The current date and time is <the moment you ran this>, e.g 2026-08-08 12:34:56.789
  // Note: this line prints something different every time you run it, so do not
  // expect it to match a fixed value.

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
  print(a1); // Output: 6
  // Note: the result is 6 and not 6.0, because ~/ always produces an int.
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
  print(isFalse || isTrue); // Output: true
  print(!isTrue); // Output: false
  print(!isFalse); // Output: true
  // Note on short-circuiting: with &&, if the LEFT side is already false, Dart does
  // not bother evaluating the right side, because the answer must be false either
  // way. With ||, if the LEFT side is already true, the right side is skipped.
  // Null-aware Operators: These operators are used to handle null values and provide default values when a variable is null: ?, ??, ??=
  // The ? operator is used to check if a variable is null before accessing its properties or methods.
  // The ?? operator is used to provide a default value when a variable is null.
  // The ??= operator is used to assign a value to a variable only if it is null.
  // Example:
  int?
  number; // A nullable variable with no value assigned is automatically null.
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
  // Bitwise operators work on the binary (base 2) form of a number, one bit at a time.
  // Example:
  int p = 12; // in binary: 1100
  int q = 10; // in binary: 1010
  print(p & q); // 1100 & 1010 = 1000  -> Output: 8
  print(p | q); // 1100 | 1010 = 1110  -> Output: 14
  print(p ^ q); // 1100 ^ 1010 = 0110  -> Output: 6
  print(~p); // flips every bit        -> Output: -13
  print(p << 1); // shift left by 1, same as p * 2  -> Output: 24
  print(p >> 1); // shift right by 1, same as p ~/ 2 -> Output: 6
  // The toRadixString(2) method lets you see the binary form of a number:
  print(p.toRadixString(2)); // Output: 1100
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
  //    You list them under `dependencies:` in pubspec.yaml, then run `dart pub get`.
  // 3. Custom Libraries: These are libraries that you create yourself to organize your code and make it more reusable.
  //    Files you write inside the lib/ folder of this project are custom libraries.
  // Example using the built-in dart:math library, which is imported at the top of this file:
  print(sqrt(16)); // Output: 4.0
  print(max(10, 20)); // Output: 20
  print(min(10, 20)); // Output: 10
  print(pi); // Output: 3.141592653589793
  print(pow(2, 8)); // Output: 256
  // Notice that sqrt, max, min, pi and pow are not built into the language itself.
  // They only became available because of the `import 'dart:math';` line at the top.
  // Remove that import and every line above would fail to compile.

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
  // 2. Reading a number: stdin.readLineSync() ALWAYS gives you text, even when the
  // user types digits. To get a number you must convert that text yourself.
  // Use int.tryParse() rather than int.parse() here: tryParse returns null when the
  // text is not a valid number, instead of crashing the program with a FormatException.
  // Example:
  print("Enter a number: ");
  String? numberText = stdin.readLineSync(); // Reads the user's input as text
  int? numberInput = int.tryParse(
    numberText ?? "",
  ); // Converts that text to an integer, or null if it is not a number
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
  // Every variable we have written so far holds exactly ONE value. That works until
  // you need to store the names of 40 students - you would need 40 separate variables.
  // A COLLECTION is a single variable that holds MANY values at once.
  // Dart provides three main collection types, and the whole skill is knowing which
  // one to reach for:
  // 1. List - an ORDERED collection. Items keep their position, and duplicates are allowed.
  // 2. Set  - an UNORDERED collection of UNIQUE values. Duplicates are silently dropped.
  // 3. Map  - a collection of KEY-VALUE pairs. You look items up by key, not by position.
  // Like String, all three are classes, so every collection you create is an object
  // with its own properties and methods, reached with the dot (.) operator.

  // -------1. LIST-------------------------------------------------
  // A list is an ordered collection of values. Lists are what other programming
  // languages call arrays.
  // Example:
  List<String> fruits = ["Apple", "Banana", "Orange"]; // A list of strings
  print(fruits); // Output: [Apple, Banana, Orange]
  // The <String> part is the TYPE ARGUMENT. It promises that every item in this list
  // is a String, so Dart will reject fruits.add(42) at compile time. Always state it
  // when you can - it is what stops a wrong value from ever getting in.
  List random = ["text", 1, 2.0]; // A dynamic list: can hold values of any type
  print(random); // Output: [text, 1, 2.0]
  // Writing List with no type argument is the same as writing List<dynamic>, which
  // gives up that protection. Prefer a typed list unless you genuinely need mixed types.
  // Dart can also infer the type for you:
  var marks = [45, 67, 89]; // inferred as List<int>
  print(marks.runtimeType); // Output: List<int>

  // Creating empty lists
  // You can create an empty collection and fill it later.
  List<String> colors = []; // An empty list of strings
  colors.add("Red"); // Adding a value to the list
  colors.add("Green"); // Adding a value to the list
  colors.add("Blue"); // Adding a value to the list
  print(colors); // Output: [Red, Green, Blue]
  // Careful: var empty = []; is inferred as List<dynamic>, so state the type instead:
  List<int> emptyScores = [];
  print(emptyScores); // Output: []
  // List.filled() builds a list of a fixed size where every slot starts the same:
  List<int> seats = List.filled(5, 0);
  print(seats); // Output: [0, 0, 0, 0, 0]

  // Reading items by position (index)
  // Positions are called INDEXES, and they start at 0, not 1.
  // In a 3-item list the valid indexes are 0, 1 and 2.
  print(fruits[0]); // Output: Apple
  print(fruits[2]); // Output: Orange
  // Two shortcuts for the ends of a list:
  print(fruits.first); // Output: Apple
  print(fruits.last); // Output: Orange
  // Asking for an index that does not exist CRASHES the program at runtime:
  // print(fruits[3]); // RangeError: index 3 is out of range for a list of length 3
  // This is the single most common list error. The last valid index is always
  // length - 1, so check against .length before using an index you calculated.

  // List properties
  print(fruits.length); // how many items. Output: 3
  print(fruits.isEmpty); // Output: false
  print(fruits.isNotEmpty); // Output: true
  print(emptyScores.isEmpty); // Output: true
  // .reversed gives the items back to front. It returns an Iterable rather than a
  // List, so call .toList() when you want a real list:
  print(fruits.reversed.toList()); // Output: [Orange, Banana, Apple]

  // Adding items
  List<String> basket = ["Bread"];
  basket.add("Milk"); // adds one item to the END
  print(basket); // Output: [Bread, Milk]
  basket.addAll(["Eggs", "Sugar"]); // adds several items at once
  print(basket); // Output: [Bread, Milk, Eggs, Sugar]
  basket.insert(0, "Rice"); // adds at a chosen index, shifting the rest right
  print(basket); // Output: [Rice, Bread, Milk, Eggs, Sugar]

  // Changing an item
  // Assign straight to the index. This REPLACES what was there.
  basket[1] = "Yam";
  print(basket); // Output: [Rice, Yam, Milk, Eggs, Sugar]

  // Removing items
  basket.remove("Milk"); // removes by VALUE - the first match only
  print(basket); // Output: [Rice, Yam, Eggs, Sugar]
  basket.removeAt(0); // removes by INDEX
  print(basket); // Output: [Yam, Eggs, Sugar]
  basket.removeLast(); // removes the final item
  print(basket); // Output: [Yam, Eggs]
  // remove() returns a bool telling you whether anything was actually removed:
  print(basket.remove("Pepper")); // nothing to remove. Output: false

  // Searching a list
  print(fruits.contains("Banana")); // is this value present? Output: true
  print(fruits.indexOf("Banana")); // at which index? Output: 1
  print(fruits.indexOf("Mango")); // -1 means not found. Output: -1
  // A list DOES allow duplicates, and indexOf finds only the first one:
  List<String> repeated = ["a", "b", "a", "c"];
  print(repeated.indexOf("a")); // Output: 0
  print(repeated.lastIndexOf("a")); // Output: 2

  // Sorting
  // sort() rearranges the list IN PLACE - it changes the original and returns nothing.
  // This is the opposite of String methods, which never touch the original.
  List<int> testMarks = [72, 45, 90, 68];
  testMarks.sort();
  print(testMarks); // Output: [45, 68, 72, 90]
  // Strings sort into dictionary order, using the same rule as compareTo():
  List<String> studentNames = ["Chidi", "Ada", "Dele", "Bola"];
  studentNames.sort();
  print(studentNames); // Output: [Ada, Bola, Chidi, Dele]
  // For largest-first, sort then reverse:
  print(testMarks.reversed.toList()); // Output: [90, 72, 68, 45]

  // Taking a slice, and joining back to text
  print(
    testMarks.sublist(1, 3),
  ); // index 1 up to but NOT including 3. Output: [68, 72]
  print(studentNames.join(", ")); // Output: Ada, Bola, Chidi, Dele
  // join() is how you turn a list into readable output instead of printing brackets.

  // Emptying a list
  List<int> temporary = [1, 2, 3];
  temporary.clear();
  print(temporary); // Output: []
  print(temporary.length); // Output: 0

  // Lists inside lists
  // A list item can itself be a list. Use two sets of brackets to reach inside.
  List<List<int>> grid = [
    [1, 2, 3],
    [4, 5, 6],
  ];
  print(grid[1]); // the second inner list. Output: [4, 5, 6]
  print(grid[1][2]); // row 1, column 2. Output: 6

  // -------2. SET-------------------------------------------------
  // A set is an unordered collection of UNIQUE values. Sets do not allow duplicates,
  // which makes them the right choice for "distinct items" and for fast membership tests.
  // Example:
  Set<int> numbers = {1, 2, 3, 4, 5}; // A set of integers
  print(numbers); // Output: {1, 2, 3, 4, 5}
  // Notice sets print with curly braces { }, while lists print with square brackets [ ].

  // Duplicates are dropped silently
  // Put the SAME data into a List and into a Set and compare what survives:
  List<String> courseChoices = ["Dart", "HTML", "Dart", "CSS"];
  Set<String> registeredCourses = courseChoices.toSet();
  print(courseChoices); // the List kept both. Output: [Dart, HTML, Dart, CSS]
  print(courseChoices.length); // Output: 4
  print(registeredCourses); // the Set kept one. Output: {Dart, HTML, CSS}
  print(registeredCourses.length); // Output: 3
  // add() returns a bool telling you whether the value was new:
  print(registeredCourses.add("SQL")); // new value. Output: true
  print(registeredCourses.add("Dart")); // already there. Output: false
  print(registeredCourses); // Output: {Dart, HTML, CSS, SQL}

  // A trap: how to write an EMPTY set
  // Empty curly braces do NOT make a set - Dart reads {} as an empty MAP.
  var mystery = {};
  print(
    mystery.runtimeType,
  ); // Output: _Map<dynamic, dynamic>  <-- a Map, not a Set
  // To get an empty set you must state the type, either on the variable or the literal:
  Set<String> emptySet = {};
  print(emptySet.runtimeType); // Output: _Set<String>
  print(<int>{}.runtimeType); // Output: _Set<int>
  // The leading underscore just means Dart's own internal class name. Read _Set<String>
  // as "a Set of String".
  emptySet.add("Now it really is a set");
  print(emptySet); // Output: {Now it really is a set}

  // Sets have no index
  // Because a set is unordered, there is no "position 0" to ask for.
  // print(numbers[0]); // Error: the operator [] is not defined for Set.
  // Use .contains() to ask about membership instead - that is what sets are good at.
  print(numbers.contains(3)); // Output: true
  print(registeredCourses.remove("HTML")); // Output: true
  print(registeredCourses); // Output: {Dart, CSS, SQL}

  // Set operations, straight from mathematics
  Set<String> morningClass = {"Ada", "Bola", "Chidi"};
  Set<String> eveningClass = {"Chidi", "Dele", "Ada"};
  // everyone from both classes, with no repeats:
  print(morningClass.union(eveningClass)); // Output: {Ada, Bola, Chidi, Dele}
  // only the people who attend BOTH:
  print(morningClass.intersection(eveningClass)); // Output: {Ada, Chidi}
  // in the morning class but NOT the evening one:
  print(morningClass.difference(eveningClass)); // Output: {Bola}
  // Note that difference is not symmetrical - swapping the two gives a different answer:
  print(eveningClass.difference(morningClass)); // Output: {Dele}

  // Removing duplicates from a list
  // This is the most common practical use of a set: convert to a set and back.
  List<int> withDuplicates = [1, 2, 2, 3, 3, 3, 4];
  print(withDuplicates.toSet().toList()); // Output: [1, 2, 3, 4]

  // -------3. MAP-------------------------------------------------
  // A map is a collection of KEY-VALUE pairs. Each key is unique, and each key maps
  // to one value. Use a map when items have a natural name or id rather than a position.
  // Example:
  Map<String, int> ages = {
    "Alice": 25,
    "Bob": 30,
    "Charlie": 35,
  }; // A map of string keys and integer values
  print(ages); // Output: {Alice: 25, Bob: 30, Charlie: 35}
  // Map<String, int> means: the keys are Strings and the values are ints.

  // Reading a value by its key
  print(ages["Alice"]); // Output: 25
  // A missing key returns null rather than crashing - this is a key difference from a
  // List, which throws a RangeError for a bad index.
  print(ages["Zainab"]); // Output: null
  // So use ?? to supply a fallback, exactly as in the null-aware operators section:
  print(ages["Zainab"] ?? 0); // Output: 0

  // Adding and updating
  // There is only one syntax, and which one it does depends on whether the key exists.
  Map<String, int> stock = {"Pen": 10};
  stock["Book"] = 25; // key does not exist -> ADDS a new pair
  print(stock); // Output: {Pen: 10, Book: 25}
  stock["Pen"] = 8; // key already exists -> REPLACES the old value
  print(stock); // Output: {Pen: 8, Book: 25}
  // A map can never hold the same key twice. Writing to an existing key overwrites it.
  // putIfAbsent() only writes when the key is missing, leaving existing values alone:
  stock.putIfAbsent("Pen", () => 999); // Pen exists, so this is ignored
  stock.putIfAbsent("Ruler", () => 5); // Ruler is new, so it is added
  print(stock); // Output: {Pen: 8, Book: 25, Ruler: 5}

  // Map properties
  print(ages.length); // how many pairs. Output: 3
  print(ages.isEmpty); // Output: false
  print(ages.isNotEmpty); // Output: true
  print(ages.keys); // all the keys. Output: (Alice, Bob, Charlie)
  print(ages.values); // all the values. Output: (25, 30, 35)
  print(ages.keys.toList()); // as a real List. Output: [Alice, Bob, Charlie]
  // .entries gives the pairs themselves; each entry has a .key and a .value.
  print(ages.entries.first.key); // Output: Alice
  print(ages.entries.first.value); // Output: 25

  // Checking and removing
  print(ages.containsKey("Bob")); // Output: true
  print(ages.containsKey("Zainab")); // Output: false
  print(ages.containsValue(30)); // Output: true
  stock.remove("Ruler"); // removes by KEY, and returns the value removed
  print(stock); // Output: {Pen: 8, Book: 25}
  stock.addAll({
    "Bag": 3,
    "Pen": 12,
  }); // merges another map in, overwriting matches
  print(stock); // Output: {Pen: 12, Book: 25, Bag: 3}

  // Combining collections
  // Real data is usually nested. A student record is a Map; a class is a List of them.
  List<Map<String, Object>> classRecords = [
    {"name": "Ada", "score": 88},
    {"name": "Bola", "score": 74},
  ];
  print(classRecords[0]["name"]); // Output: Ada
  print(classRecords[1]["score"]); // Output: 74
  // A map value can itself be a collection:
  Map<String, List<String>> departments = {
    "Computing": ["Ada", "Bola"],
    "Design": ["Chidi"],
  };
  print(departments["Computing"]); // Output: [Ada, Bola]
  print(departments["Computing"]?.length); // Output: 2
  // Note the ?. above: departments["Computing"] might be null, so we ask for .length
  // only if it is not null. This is the null-aware access operator from earlier.

  // -------THE SPREAD OPERATOR (...)-------------------------------------------------
  // The spread operator is three dots: ...
  // It takes an existing collection and UNPACKS its items into a new collection
  // literal. Instead of copying items across one .add() at a time, you pour the
  // whole collection in at once.
  // Read [0, ...evenNums, 9] as "a new list holding 0, then everything inside
  // evenNums, then 9".
  List<int> evenNums = [2, 4];
  List<int> oddNums = [1, 3];
  List<int> allNums = [0, ...evenNums, ...oddNums, 9];
  print(allNums); // Output: [0, 2, 4, 1, 3, 9]
  // You can spread as many collections as you like, in any order, mixed with
  // ordinary items.

  // Why the dots matter
  // Leaving them out does something completely different - it nests the whole list
  // inside the new one as a single item:
  print([
    0,
    evenNums,
  ]); // Output: [0, [2, 4]]   <-- 2 items: a number and a list
  print([0, ...evenNums]); // Output: [0, 2, 4]  <-- 3 items, all numbers
  print([0, evenNums].length); // Output: 2
  print([0, ...evenNums].length); // Output: 3

  // Spreading into a Set
  // The rules of the destination still apply, so a Set will drop any duplicates
  // that the spread brings in:
  Set<String> groupA = {"Ada", "Bola"};
  Set<String> groupB = {"Bola", "Chidi"};
  Set<String> everyone = {...groupA, ...groupB};
  print(everyone); // Output: {Ada, Bola, Chidi}  <-- only one Bola survives

  // Spreading into a Map
  // Maps spread as whole key-value pairs. This is the normal way to merge settings.
  Map<String, int> defaults = {"volume": 5, "brightness": 7};
  Map<String, int> overrides = {"volume": 10};
  Map<String, int> settings = {...defaults, ...overrides};
  print(settings); // Output: {volume: 10, brightness: 7}
  // ORDER MATTERS. When the same key arrives twice, the LAST one wins. Swap the two
  // spreads around and you get a different answer:
  print({...overrides, ...defaults}); // Output: {volume: 5, brightness: 7}

  // The null-aware spread ...?
  // Spreading a collection that is null crashes the program. The ...? form skips a
  // null collection instead, contributing nothing.
  List<int>? maybeExtras; // nullable, and currently null
  // List<int> broken = [0, ...maybeExtras]; // Error: can't spread a possibly-null value
  List<int> safeList = [0, ...?maybeExtras];
  print(safeList); // Output: [0]  <-- the null simply added nothing
  // This matters most with a Map lookup, because looking up a key that does not
  // exist gives you null, exactly as we saw in the Map section:
  Map<String, List<int>> bonusMarks = {
    "Ada": [5, 5],
  };
  print([70, ...?bonusMarks["Ada"]]); // Output: [70, 5, 5]
  print([
    70,
    ...?bonusMarks["Bola"],
  ]); // Output: [70]  <-- no such key, so nothing added
  // Without the ? on those two lines the second one would not compile at all.

  // Copying versus referencing - an important warning
  // Assigning a collection to another variable does NOT make a copy. Both names point
  // at the SAME collection in memory, so a change through one is visible through the other.
  List<String> originalList = ["a", "b"];
  List<String> secondName = originalList; // NOT a copy
  secondName.add("c");
  print(originalList); // Output: [a, b, c]  <-- the "original" changed too
  // The spread operator is how you make a GENUINE copy. Because [...originalList]
  // builds a brand new list and pours the old items into it, the two are now
  // separate collections that happen to hold equal values.
  List<String> realCopy = [...originalList];
  realCopy.add("d");
  print(originalList); // Output: [a, b, c]  <-- untouched this time
  print(realCopy); // Output: [a, b, c, d]
  // And spreading two collections together is how you join them:
  List<String> combined = [...colors, ...originalList];
  print(combined); // Output: [Red, Green, Blue, a, b, c]

  // Which collection should I use?
  // - Order matters, duplicates allowed, look up by position -> List
  // - Every item must be unique, and you mostly ask "is this in there?" -> Set
  // - Each item has a name or id you want to look it up by -> Map

  // A note on what comes next
  // Collections have a second family of methods - forEach, map, where, any, every,
  // firstWhere, reduce and fold - that all work by taking a FUNCTION as their
  // argument. They are the most powerful part of collections, but they only make
  // sense once we have covered functions, so we will return to them in that topic.
  // The putIfAbsent() call above was a small taste: its () => 999 argument is a
  // function written inline.

  // =================================================================================================================================================

  // =======THE STRING CLASS========================================================================================================
  // So far we have used String just to hold text. But String is actually a CLASS,
  // and every piece of text you write is an OBJECT of that class.
  // That means a String is not "just letters" - it carries its own properties
  // (information about itself) and its own methods (actions it can perform).
  // You access them using the dot (.) operator: variableName.property or variableName.method()

  // Writing String Literals
  // Dart lets you write text using either single quotes or double quotes. They mean the same thing.
  String single = 'Hello';
  String double1 = "Hello";
  print(single == double1); // Output: true
  // Use one style so you can put the other inside without extra work:
  print(
    "He said 'hello' to the class.",
  ); // Output: He said 'hello' to the class.
  // To put a special character inside text, you "escape" it with a backslash (\).
  print(
    "A double quote: \" and a backslash: \\",
  ); // Output: A double quote: " and a backslash: \
  print("Line one\nLine two"); // \n starts a new line
  print("Name:\tDart"); // \t inserts a tab
  // A raw string, written with r before the quote, ignores escapes completely.
  print(r"C:\Users\student\notes.txt"); // Output: C:\Users\student\notes.txt
  // Triple quotes let text span several lines exactly as you typed it.
  String multiLine = '''
Dart is fun.
Dart is fast.''';
  print(multiLine);

  // Strings Are Immutable
  // This is the single most important rule of the String class.
  // Immutable means a String can NEVER be changed after it is created.
  // Every method that looks like it "changes" the text actually leaves the original
  // untouched and hands you back a brand new String.
  String original = "dart";
  String changed = original.toUpperCase();
  print(original); // Output: dart      <-- the original is untouched
  print(changed); // Output: DART      <-- the new string is a separate object
  // If you want to keep the result, you must store it, either in a new variable
  // or back into the same one:
  original = original.toUpperCase();
  print(original); // Output: DART

  // String Properties
  // Properties are read like variables - notice there are no brackets () after them.
  String courseTitle = "  Dart Programming Fundamentals  ";
  print(
    courseTitle.length,
  ); // Counts EVERY character, spaces included. Output: 33
  print(
    courseTitle.isEmpty,
  ); // true only if the string has no characters at all. Output: false
  print(courseTitle.isNotEmpty); // the opposite of isEmpty. Output: true
  String nothing = "";
  print(nothing.isEmpty); // Output: true
  // Careful: a string of spaces is NOT empty, because a space is a character.
  print("   ".isEmpty); // Output: false

  // String Methods
  // Methods are actions, so they always end with brackets () - and they may take arguments.
  String title = courseTitle.trim(); // removes spaces from BOTH ends
  print(title); // Output: Dart Programming Fundamentals
  print(title.toUpperCase()); // Output: DART PROGRAMMING FUNDAMENTALS
  print(title.toLowerCase()); // Output: dart programming fundamentals
  // Finding things inside a string:
  print(title.contains("Programming")); // present anywhere? Output: true
  print(title.startsWith("Dart")); // does it begin with this? Output: true
  print(title.endsWith("Fundamentals")); // does it end with this? Output: true
  print(title.indexOf("Programming")); // position of first match. Output: 5
  print(title.indexOf("Java")); // -1 means "not found at all". Output: -1
  // Counting positions starts at 0, not 1. The first character is at position 0.
  print(title[0]); // reads a single character by its position. Output: D
  // Cutting a piece out of a string:
  print(
    title.substring(0, 4),
  ); // position 0 up to but NOT including 4. Output: Dart
  print(
    title.substring(5),
  ); // position 5 to the end. Output: Programming Fundamentals
  // Replacing text (remember: this returns a NEW string):
  print(
    title.replaceAll("Dart", "Flutter"),
  ); // Output: Flutter Programming Fundamentals
  // Breaking a string into a List, using a separator:
  List<String> words = title.split(" ");
  print(words); // Output: [Dart, Programming, Fundamentals]
  print(words.length); // how many words we got. Output: 3
  // Joining a List back into one string is the reverse of split:
  print(words.join("-")); // Output: Dart-Programming-Fundamentals
  // Padding, useful for lining up output in columns:
  print("7".padLeft(3, "0")); // Output: 007
  print("ab".padRight(5, ".")); // Output: ab...

  // Comparing Strings
  // Use == to check whether two strings contain the same characters.
  print("dart" == "dart"); // Output: true
  print("dart" == "Dart"); // Output: false  <-- comparison is case-sensitive
  // A common trick is to lower-case both sides before comparing:
  print("Dart".toLowerCase() == "dart".toLowerCase()); // Output: true
  // compareTo() puts strings in dictionary order. It returns a negative number if
  // the first comes before the second, 0 if they are equal, positive if it comes after.
  print("apple".compareTo("banana")); // Output: -1
  print("banana".compareTo("apple")); // Output: 1
  print("apple".compareTo("apple")); // Output: 0

  // Joining Strings Together
  // The + operator glues two strings into one:
  String part1 = "Hello, ";
  String part2 = "students!";
  String greeting = part1 + part2;
  print(greeting); // Output: Hello, students!
  // Two string literals written next to each other are joined automatically:
  String longLine =
      "This is one sentence "
      "split across two literals.";
  print(longLine);
  // But remember, string interpolation (which we covered earlier) is usually clearer than +:
  String studentFullName = "Jane Doe";
  print("Welcome, $studentFullName!");
  // The * operator repeats a string:
  print("=" * 20); // Output: ====================

  // =================================================================================================================================================

  // =======CONTROL STRUCTURES========================================================================================================
  // Up to this point, our program has been a straight line: Dart starts at the top
  // of main() and runs every single statement, once, in order, down to the bottom.
  // Control structures let us break out of that straight line. They control the FLOW
  // of the program - which statements run, and how many times.
  // There are three kinds, and we will take them one at a time:
  // 1. DECISION MAKING (CONDITIONALS) - choose whether a block of code runs at all.
  // 2. LOOP (ITERATION)               - run a block of code again and again.
  // 3. JUMP STATEMENT                 - leave a block of code early.

  // -------1. DECISION MAKING (CONDITIONALS)-------------------------------------------------
  // A conditional asks a yes/no question and runs code only when the answer is yes.
  // The question must be an expression that produces a bool (true or false) - this is
  // exactly what the comparison and logical operators we learned earlier are for.

  // The if statement
  // Syntax:
  // if (condition) {
  //   // this runs only when condition is true
  // }
  int studentScore = 75;
  if (studentScore >= 50) {
    print("You passed."); // Output: You passed.
  }
  // If the condition is false, the whole block is skipped and nothing happens.
  if (studentScore >= 90) {
    print(
      "You made a distinction.",
    ); // This never runs, because 75 is not >= 90.
  }

  // The if-else statement
  // else gives you something to do when the condition is false. Exactly one of the
  // two blocks will always run - never both, never neither.
  int classAge = 15;
  if (classAge >= 18) {
    print("You may vote.");
  } else {
    print("You are too young to vote."); // Output: You are too young to vote.
  }

  // The if-else if-else ladder
  // When there are more than two possibilities, chain the tests together.
  // Dart checks them from TOP to BOTTOM and stops at the FIRST one that is true.
  // Because of that, order matters: put the strictest test first.
  int examMark = 68;
  if (examMark >= 70) {
    print("Grade: A");
  } else if (examMark >= 60) {
    print("Grade: B"); // Output: Grade: B
  } else if (examMark >= 50) {
    print("Grade: C");
  } else {
    print("Grade: F");
  }
  // The final else is optional. Without it, if no test matches, nothing runs.

  // Combining conditions
  // Use the logical operators && (and) and || (or) to test more than one thing.
  int attendance = 80;
  int testScore = 65;
  if (attendance >= 75 && testScore >= 50) {
    print("Eligible to write the exam."); // Output: Eligible to write the exam.
  } else {
    print("Not eligible.");
  }

  // Nested if
  // An if can be placed inside another if, to ask a follow-up question.
  // Only ask the inner question when the outer one has already been answered yes.
  String registrationStatus = "registered";
  int feesDue = 50000;
  int amountPaid = 20000;
  if (registrationStatus == "registered") {
    // We only bother checking the fees once we know the student registered at all.
    if (amountPaid >= feesDue) {
      print("Registration complete.");
    } else {
      // Output: Registered, but 30000 is still outstanding.
      print("Registered, but ${feesDue - amountPaid} is still outstanding.");
    }
  } else {
    print("You have not registered.");
  }
  // Note: deeply nested ifs become hard to read. When the inner block has no else of
  // its own, you can usually flatten it into a single condition instead:
  // if (registrationStatus == "registered" && amountPaid >= feesDue) { ... }

  // A reminder about the ternary operator
  // For a simple two-way choice that produces a VALUE, the ternary operator we saw
  // in the operators section is shorter than a full if-else.
  String result = studentScore >= 50 ? "Pass" : "Fail";
  print(result); // Output: Pass

  // The switch statement
  // When you are comparing ONE variable against a list of fixed values, a long
  // if-else ladder gets repetitive. switch says "look at this value once, then jump
  // straight to the matching case".
  // Syntax:
  // switch (value) {
  //   case option1:
  //     // code
  //     break;
  //   default:
  //     // code when nothing matched
  // }
  int dayNumber = 3;
  switch (dayNumber) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday"); // Output: Wednesday
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    default:
      print("Weekend or invalid day");
  }
  // Two rules to remember:
  // - break tells Dart to leave the switch. Without it Dart reports an error,
  //   because it would not know where the case is supposed to stop.
  // - default is the catch-all. It runs when no case matched, and it is optional.

  // switch works with strings too, not just numbers:
  String userRole = "student";
  switch (userRole) {
    case "admin":
      print("Full access granted.");
      break;
    case "teacher":
      print("You can edit results.");
      break;
    case "student":
      print("You can view results."); // Output: You can view results.
      break;
    default:
      print("Unknown role.");
  }

  // Sharing one block between several cases
  // Leave a case EMPTY (no code, no break) and it falls through to the case below it.
  // This is how you say "any of these values should do the same thing".
  String today = "Sat";
  switch (today) {
    case "Sat":
    case "Sun":
      print("It is the weekend."); // Output: It is the weekend.
      break;
    default:
      print("It is a working day.");
  }

  // The switch expression (a newer, shorter form)
  // The switches above are STATEMENTS: they do something. A switch EXPRESSION instead
  // produces a value that you can store in a variable. Note the differences:
  // => instead of a colon, commas instead of break, and _ instead of default.
  int monthNumber = 2;
  String season = switch (monthNumber) {
    12 || 1 || 2 => "Harmattan",
    3 || 4 || 5 => "Hot season",
    6 || 7 || 8 || 9 => "Rainy season",
    _ => "Unknown",
  };
  print(season); // Output: Harmattan

  // -------2. LOOP (ITERATION)-------------------------------------------------
  // A loop repeats a block of code. Each single pass through the block is called an
  // ITERATION. Loops save you from writing the same statement over and over.
  // Every loop needs three things, or it will never stop:
  //   (a) a starting point, (b) a condition to keep going, (c) a change that moves
  //   the loop closer to that condition becoming false.

  // The for loop
  // Use it when you know in advance HOW MANY times to repeat.
  // Syntax: for (initialization; condition; update) { ... }
  //   initialization - runs once, before the loop starts
  //   condition      - checked before EVERY iteration; the loop stops when it is false
  //   update         - runs after every iteration
  for (int i = 1; i <= 5; i++) {
    print("Count: $i"); // Output: Count: 1 ... Count: 5
  }
  // The counter variable i only exists inside the loop. You cannot use it afterwards.
  // Counting backwards is just a matter of changing the condition and the update:
  for (int i = 3; i >= 1; i--) {
    print("Countdown: $i"); // Output: Countdown: 3, 2, 1
  }
  // And you can step by more than one:
  for (int i = 0; i <= 10; i += 5) {
    print("Step: $i"); // Output: Step: 0, 5, 10
  }

  // The for-in loop
  // Use it when you want to visit every item in a collection and do not care about
  // position numbers. It is shorter and safer than a counting for loop.
  for (String fruit in fruits) {
    print("Fruit: $fruit"); // Output: Fruit: Apple, Banana, Orange
  }
  // It works on a Set exactly the same way:
  for (int n in numbers) {
    print("Number: $n"); // Output: Number: 1 ... 5
  }
  // A Map is not a straight line of values, so you loop over its .entries,
  // where each entry has a .key and a .value:
  for (MapEntry<String, int> entry in ages.entries) {
    print("${entry.key} is ${entry.value} years old");
  }
  // You can also loop over just the keys, or just the values:
  for (String personName in ages.keys) {
    print("Name: $personName");
  }
  // If you DO need the position number, use a counting for loop with .length:
  for (int i = 0; i < fruits.length; i++) {
    print("$i -> ${fruits[i]}"); // Output: 0 -> Apple, 1 -> Banana, 2 -> Orange
  }

  // The while loop
  // Use it when you do NOT know how many repetitions you need in advance - you only
  // know the condition that should keep it going.
  // The condition is tested BEFORE each iteration, so a while loop can run zero times.
  int balance = 100;
  while (balance > 0) {
    print("Balance: $balance"); // Output: Balance: 100, 70, 40, 10
    balance -= 30; // <-- this is what eventually makes the condition false
  }
  // WARNING: if you forget the line that changes the variable, the condition stays
  // true forever and the program hangs. This is called an infinite loop.
  // int wrong = 10;
  // while (wrong > 0) { print(wrong); }  // never ends - nothing changes 'wrong'

  // The do-while loop
  // Almost the same as while, with one important difference: the condition is tested
  // AFTER the block. That guarantees the block runs AT LEAST ONCE, even if the
  // condition was false from the very beginning.
  int attempts = 0;
  do {
    attempts++;
    print("Attempt number $attempts"); // Output: Attempt number 1, 2, 3
  } while (attempts < 3);
  // Proof that the body always runs once - this condition is false immediately:
  int impossible = 100;
  do {
    print("This still printed once."); // Output: This still printed once.
  } while (impossible < 0);
  // Notice the semicolon (;) after the closing while(...) of a do-while. It is required.

  // Nested loops
  // A loop inside another loop. For every SINGLE iteration of the outer loop, the
  // inner loop runs all the way through. A 3x3 nesting therefore runs 9 times.
  for (int row = 1; row <= 3; row++) {
    for (int column = 1; column <= 3; column++) {
      print("$row x $column = ${row * column}");
    }
  }

  // -------3. JUMP STATEMENT-------------------------------------------------
  // A jump statement moves control somewhere else immediately, without waiting for
  // the current block to finish normally. Dart has three: break, continue and return.

  // break
  // break ends the ENTIRE loop at once and carries on with the code after it.
  // Use it when you have found what you were looking for and there is no point continuing.
  for (int i = 1; i <= 10; i++) {
    if (i == 4) {
      break; // stop the loop completely
    }
    print("Before break: $i"); // Output: Before break: 1, 2, 3
  }
  // Searching a list is the classic use of break:
  List<String> classList = ["Ada", "Bola", "Chidi", "Dele"];
  for (String student in classList) {
    if (student == "Chidi") {
      print("Found $student - no need to check the rest.");
      break;
    }
    print("Checking $student..."); // Output: Checking Ada..., Checking Bola...
  }
  // You have already met break once before: it is the same break that ends a switch case.

  // continue
  // continue skips only the REST of the current iteration and jumps straight to the
  // next one. The loop itself keeps running.
  for (int i = 1; i <= 6; i++) {
    if (i % 2 != 0) {
      continue; // odd number, so skip the print below
    }
    print("Even: $i"); // Output: Even: 2, 4, 6
  }
  // The difference in one line: break LEAVES the loop, continue SKIPS one round of it.

  // Labels, for jumping out of nested loops
  // A plain break only escapes the loop it is written in - the INNER one. To escape
  // an outer loop as well, give that loop a label and name it in the break.
  outerLoop:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i * j > 4) {
        break outerLoop; // leaves BOTH loops at once
      }
      print("i=$i, j=$j");
    }
  }
  // continue also accepts a label. Here it abandons the inner loop and starts the
  // next iteration of the outer one:
  rowLoop:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (j == 2) {
        continue rowLoop;
      }
      print("Label demo i=$i, j=$j"); // Output: only the j=1 lines
    }
  }

  // return
  // return is the third jump statement. It exits the whole FUNCTION immediately and
  // optionally hands a value back to whoever called it.
  // We have only written one function so far - main() - so we will come back to
  // return properly when we study functions. Written on its own inside main(),
  // `return;` would simply end the program at that point.

  // =================================================================================================================================================

  // =======BUILDING COLLECTIONS WITH if AND for========================================================================================================
  // In the Collections topic we used the spread operator ... to pour one collection
  // into another. Now that if and for have been covered, we can go one step further.
  // Dart lets you write an if or a for INSIDE a collection literal, so the collection
  // is built at the moment it is written, instead of being created empty and filled
  // afterwards. These are called COLLECTION IF and COLLECTION FOR.

  // Collection if
  // Include an item only when a condition is true.
  int userLevel = 2;
  List<String> menu = [
    "Home",
    "Profile",
    if (userLevel >= 2) "Billing", // included only when the test passes
    "Logout",
  ];
  print(menu); // Output: [Home, Profile, Billing, Logout]
  // Exactly the same literal with a lower level simply leaves that item out:
  int guestLevel = 0;
  print([
    "Home",
    "Profile",
    if (guestLevel >= 2) "Billing",
    "Logout",
  ]); // Output: [Home, Profile, Logout]
  // Notice there is no add() and no if statement outside the list. The condition
  // lives inside the literal itself.
  // A collection if can have an else, choosing between two items:
  print([
    if (userLevel >= 5) "Admin panel" else "Standard panel",
  ]); // Output: [Standard panel]

  // Collection for
  // Produce one item for every item in another collection.
  List<int> baseNumbers = [1, 2, 3, 4];
  List<int> doubled = [for (int n in baseNumbers) n * 2];
  print(doubled); // Output: [2, 4, 6, 8]
  // Compare that with the long way, which does exactly the same job:
  List<int> doubledLongWay = [];
  for (int n in baseNumbers) {
    doubledLongWay.add(n * 2);
  }
  print(doubledLongWay); // Output: [2, 4, 6, 8]
  // A counting for loop works inside a literal too:
  print([
    for (int i = 1; i <= 3; i++) "Item $i",
  ]); // Output: [Item 1, Item 2, Item 3]

  // Combining for and if
  // Read this as "for every number, and only if it is even, produce double it".
  List<int> evensDoubled = [
    for (int n in baseNumbers)
      if (n % 2 == 0) n * 2,
  ];
  print(evensDoubled); // Output: [4, 8]

  // They work in Sets and Maps as well
  // In a Set the usual uniqueness rule still applies:
  Set<String> initials = {
    for (String personName in ["Ada", "Bola", "Ade"]) personName[0],
  };
  print(
    initials,
  ); // Output: {A, B}  <-- Ada and Ade both give A, so only one is kept
  // In a Map you write key: value as the produced item:
  Map<String, int> wordLengths = {
    for (String word in ["Dart", "Go", "Python"]) word: word.length,
  };
  print(wordLengths); // Output: {Dart: 4, Go: 2, Python: 6}

  // All three together
  // Spread, collection for and collection if can appear in the same literal.
  List<String> fullMenu = [
    "Start",
    ...menu,
    for (int i = 1; i <= 2; i++) "Extra $i",
    if (userLevel >= 5) "Admin",
  ];
  print(fullMenu);
  // Output: [Start, Home, Profile, Billing, Logout, Extra 1, Extra 2]

  // A note on what comes next
  // Collection for is really a preview of something bigger. When we reach functions
  // you will meet map() and where(), which do the same transforming and filtering
  // work as a method call rather than as part of a literal.

  // =================================================================================================================================================

  // =======FUNCTIONS========================================================================================================
  // Look at how long this main() has become. Every lesson so far has been piled into
  // one enormous block, and if you wanted to reuse any part of it you would have to
  // copy and paste it. That is the problem functions solve.
  // A FUNCTION is a named block of code that you write once and can then run
  // whenever you like, as many times as you like, with different values each time.
  // Functions give you three things:
  // 1. REUSE     - write the logic once, call it from anywhere.
  // 2. NAMING    - applyVat(2500) says what it does; the arithmetic inside does not.
  // 3. STRUCTURE - a program becomes a set of small named jobs instead of one wall of code.
  // We have been calling functions since the very first lesson: print() is a function,
  // and so are int.parse(), sqrt() and stdin.readLineSync(). Now we write our own.

  // -------1. BASICS: DECLARATION AND INVOCATION-------------------------------------------------
  // Every function has the same four parts:
  //
  //   int      add      (int a, int b)     { return a + b; }
  //   ^        ^         ^                   ^
  //   return   name      parameter list      body
  //   type
  //
  // DECLARING a function creates it. It does not run anything.
  // INVOKING (or CALLING) it is what actually runs the body: you write its name
  // followed by brackets, with the values it needs inside them.
  // A function declared but never called does nothing at all.

  // Where can a function be declared?
  // NOT inside main() as a normal function - main() is itself a function, and you
  // cannot nest a top-level declaration inside another one. Functions live either:
  //   (a) at the TOP LEVEL of a file, outside main() - scroll to the bottom of this
  //       file to see the ones we declare there;
  //   (b) in another file that you import - ours are in lib/functions.dart;
  //   (c) inside another function as a LOCAL function, which we cover in a moment.

  // Calling a function from our own library
  // add() and greet() are declared in lib/functions.dart and imported at the top of
  // this file. Once imported, they are used exactly as if we had written them here.
  print(add(3, 4)); // Output: 7
  print(add(100, 250)); // Output: 350
  // Same function, different values, no copying and pasting. That is the whole point.
  greet("Ada"); // Output: Hello, Ada!
  greet("Bola"); // Output: Hello, Bola!
  printSeparator(); // a function can take nothing at all

  // Calling a function declared at the bottom of THIS file
  // Scroll past the closing brace of main() and you will find two more functions.
  // They need no import, because they are in the same file.
  printHeading("Functions"); // Output: Functions, then ========= under it
  print(averageOf([45, 78, 62])); // Output: 61.666666666666664
  // Note they are declared BELOW main() but called from inside it. At the top level
  // the order you write things does not matter - Dart reads the whole file first.

  // Parameters versus arguments
  // These two words get mixed up constantly, so be precise:
  // - A PARAMETER is the name in the declaration. In `int add(int a, int b)`,
  //   a and b are parameters. They are placeholders.
  // - An ARGUMENT is the actual value you pass in when calling. In `add(3, 4)`,
  //   3 and 4 are arguments.
  // Parameters are the empty boxes; arguments are what you put in them.

  // The result of a call is a value
  // A function that returns something can be used anywhere a value can be used:
  // stored in a variable, printed, or passed into another function.
  int sumResult = add(10, 5);
  print(sumResult); // Output: 15
  print(add(add(1, 2), add(3, 4))); // the inner calls run first. Output: 10

  // Local functions
  // A function CAN be declared inside another function. It is then private to that
  // function - nothing outside can see or call it. Use one when a small job is
  // needed only right here.
  int halfOf(int n) {
    return n ~/ 2;
  }

  print(halfOf(50)); // Output: 25
  // halfOf only exists inside main(). Another file could never call it.

  // -------2. void AND RETURN TYPES-------------------------------------------------
  // The type written before a function's name is its RETURN TYPE: it promises what
  // kind of value the caller will get back.

  // void means "this function returns nothing"
  // greet() and printSeparator() above are `void`. They DO something - they print -
  // but they hand nothing back, so there is nothing to store.
  // var nothing = greet("Ada"); // Error: greet() does not produce a value.

  // Returning a value
  // Any other return type means the function must hand back a value of that type,
  // using the `return` keyword.
  print(isEven(10)); // returns bool. Output: true
  print(square(7)); // returns int. Output: 49
  print(applyVat(1000)); // returns double. Output: 1075.0
  print(splitWords("Dart is fun")); // returns a List. Output: [Dart, is, fun]
  print(lengthsOf(["Dart", "Go"])); // returns a Map. Output: {Dart: 4, Go: 2}

  // return exits the function IMMEDIATELY
  // This is the promise we made back in the Jump Statements section. `return` is a
  // jump statement: the moment it runs, the function stops and control goes back to
  // whoever called it. Any code after it never runs.
  // Look at gradeFor() in lib/functions.dart: it is a stack of ifs with no elses,
  // because the first `return` that runs ends the function on the spot.
  print(gradeFor(85)); // Output: A
  print(gradeFor(64)); // Output: B
  print(gradeFor(20)); // Output: F

  // Nullable return types
  // If a function might have no answer, say so with a ? on the return type. The
  // caller is then forced to deal with the null, which is far safer than pretending.
  print(firstNameOrNull(["Ada", "Bola"])); // Output: Ada
  print(firstNameOrNull([])); // Output: null
  print(firstNameOrNull([]) ?? "Nobody"); // Output: Nobody

  // -------3. PARAMETERS: POSITIONAL, OPTIONAL, NAMED-------------------------------------------------
  // Dart gives you three kinds of parameter, and you can mix them.

  // Required positional parameters
  // The plain kind we have used so far. They are matched by POSITION, so the order
  // you pass them in is the order they are received. Get the order wrong and you get
  // a wrong answer, or a type error.
  print(add(10, 3)); // Output: 13
  // Every required positional parameter must be supplied:
  // print(add(10)); // Error: 2 positional arguments expected, but 1 found.

  // Optional positional parameters, written in [ ]
  // These may be left out. If they are, they arrive as null - which is why they must
  // be a nullable type or have a default value.
  print(describeStudent("Ada")); // Output: Ada
  print(describeStudent("Ada", 20)); // Output: Ada, aged 20
  print(
    describeStudent("Ada", 20, "Dart"),
  ); // Output: Ada, aged 20, studying Dart
  // Because they are positional, you cannot skip one and supply the next. There is
  // no way to give a course without also giving an age.

  // Named parameters, written in { }
  // These are matched by NAME instead of position, so the caller writes the name at
  // the call site. Order no longer matters, and the call documents itself.
  print(formatName(first: "Faleti", last: "Samuel"));
  // Output: Faleti Samuel
  print(
    formatName(last: "Samuel", first: "Faleti"),
  ); // order swapped, same result
  // Output: Faleti Samuel
  print(formatName(first: "Faleti", middle: "Oluwaseyi", last: "Samuel"));
  // Output: Faleti Oluwaseyi Samuel
  // Compare those calls with an imaginary positional version, formatName("Faleti",
  // null, "Samuel"). The named form is obvious; the positional one is a guess.

  // required, on a named parameter
  // Named parameters are optional by default. Marking one `required` means the
  // caller must supply it, while still writing its name.
  // print(formatName(first: "Faleti")); // Error: the parameter 'last' is required.

  // Mixing positional and named
  // Positional parameters always come first. Named ones follow in their braces.
  logMessage("Server started"); // Output: [INFO] Server started
  logMessage("Disk almost full", level: "WARN");
  // Output: [WARN] Disk almost full
  logMessage("Build finished", level: "OK", underline: true);

  // -------4. DEFAULT PARAMETER VALUES-------------------------------------------------
  // Any optional parameter - positional or named - can be given a default value with
  // `=`. The default is used whenever the caller leaves that argument out.
  // A default must be a value known at compile time, exactly like a `const`.

  // A default on an optional positional parameter
  print(applyVat(1000)); // rate left out, so 0.075 is used. Output: 1075.0
  print(applyVat(1000, 0.05)); // rate supplied, so 5% is used. Output: 1050.0

  // Defaults on named parameters
  // buildLabel has three named parameters and all three have defaults, so it can be
  // called with no arguments at all.
  print(buildLabel()); // Output: 1 x Item
  print(buildLabel(text: "Book")); // Output: 1 x Book
  print(buildLabel(text: "Book", count: 3)); // Output: 3 x Book
  print(buildLabel(text: "Book", count: 3, shout: true)); // Output: 3 X BOOK
  // Notice you can override just the one you care about and let the rest default.
  print(buildLabel(shout: true)); // Output: 1 X ITEM
  // With positional parameters that would be impossible.

  // -------5. ARROW FUNCTIONS-------------------------------------------------
  // When a function's body is a SINGLE expression, you can replace the braces and
  // the `return` keyword with a fat arrow =>.
  //
  //   int square(int n) { return n * n; }   // long form
  //   int square(int n) => n * n;           // arrow form - identical meaning
  //
  // The arrow form has an invisible `return` built into it. That is why there is no
  // semicolon after the expression until the end of the line.
  print(square(9)); // Output: 81
  print(twice(21)); // Output: 42
  print(looksLikeEmail("ada@school.com")); // Output: true
  print(looksLikeEmail("not-an-email")); // Output: false
  // Arrow syntax only works for ONE expression. A body with an if statement, a loop,
  // or several lines needs the full braces.
  // Local functions can use it too:
  int cube(int n) => n * n * n;
  print(cube(3)); // Output: 27

  // -------6. FUNCTIONS AS VALUES, AND ANONYMOUS FUNCTIONS-------------------------------------------------
  // This is the idea that unlocks everything else: in Dart a function is a VALUE,
  // just like 5 or "hello". It can be stored in a variable, put in a list, passed
  // into another function, or returned from one.

  // Storing a function in a variable
  // Write the function's name WITHOUT brackets to refer to the function itself.
  // Adding brackets would call it and store the result instead.
  int Function(int) myOperation = square;
  print(myOperation(6)); // calling it through the variable. Output: 36
  myOperation = twice; // the same variable can hold a different function
  print(myOperation(6)); // Output: 12
  // The type `int Function(int)` reads as "a function taking an int, returning an
  // int". That is a type like any other, which is why it can label a variable.

  // Anonymous functions
  // A function does not need a name. An ANONYMOUS function is written as just a
  // parameter list and a body, and is usually created at the exact spot it is needed.
  //   (parameters) { body }        or        (parameters) => expression
  int Function(int) addTen = (int n) {
    return n + 10;
  };
  print(addTen(5)); // Output: 15
  // Anonymous functions take the arrow form too, and that is how you will usually
  // see them. Reassigning the same variable proves the two forms are identical:
  addTen = (int n) => n + 10;
  print(addTen(5)); // Output: 15
  // Anonymous functions are also called LAMBDAS. You met one already without knowing
  // it: the `() => 999` we passed to putIfAbsent back in the Collections topic.

  // Functions in a collection
  // Because functions are values, a List can hold them.
  List<int Function(int)> operations = [square, twice, cube];
  for (int Function(int) operation in operations) {
    print(operation(5)); // Output: 25, then 10, then 125
  }

  // Closures
  // An anonymous function REMEMBERS the variables that were in scope where it was
  // created, even after that scope has finished. A function bundled with the
  // variables it remembers is called a CLOSURE.
  int callCount = 0;
  void recordCall() {
    callCount++; // this reaches out and changes main()'s own variable
  }

  recordCall();
  recordCall();
  recordCall();
  print(callCount); // Output: 3
  // multiplierOf() in lib/functions.dart is the clearer example: it BUILDS and
  // returns a function that has remembered its factor.
  int Function(int) triple = multiplierOf(3);
  int Function(int) tenTimes = multiplierOf(10);
  print(triple(7)); // Output: 21
  print(tenTimes(7)); // Output: 70
  // Two functions from the same factory, each holding on to its own factor.

  // -------7. HIGHER-ORDER FUNCTIONS-------------------------------------------------
  // A HIGHER-ORDER FUNCTION is simply a function that takes a function as a
  // parameter, returns a function, or both. Nothing new is happening - it is the
  // "functions are values" rule being used.

  // Taking a function as a parameter
  print(applyTwice(5, square)); // square(square(5)) = 625
  print(applyTwice(5, twice)); // twice(twice(5))   = 20
  // The same applyTwice does completely different work depending on what you hand it.
  // You can pass an anonymous function directly, which is the common style:
  print(applyTwice(5, (int n) => n + 1)); // Output: 7

  // Returning a function
  // multiplierOf() above is the example: you call it and get a function back.
  print(
    multiplierOf(4)(5),
  ); // build the times-4 function, then call it. Output: 20

  // Passing a test into a function
  // keepWhere() in our library takes a list and a function that decides what to keep.
  List<String> namesToFilter = ["Ada", "Bola", "Chidi", "Ayo"];
  print(keepWhere(namesToFilter, (String n) => n.startsWith("A")));
  // Output: [Ada, Ayo]
  print(keepWhere(namesToFilter, (String n) => n.length > 3));
  // Output: [Bola, Chidi]
  // Read keepWhere in lib/functions.dart. It is an ordinary for loop with an if.
  // Once you have seen that, the built-in `where` method holds no mystery.

  // -------8. FUNCTION TYPEDEFS-------------------------------------------------
  // Writing `int Function(int)` over and over is noisy. A TYPEDEF gives a function
  // type a short, meaningful name:
  //
  //   typedef IntTransformer = int Function(int);
  //
  // From then on IntTransformer means exactly the same as int Function(int), but it
  // says WHY the function exists rather than just its shape.
  IntTransformer myTransformer = square;
  print(myTransformer(8)); // Output: 64
  print(transformAll([1, 2, 3, 4], square)); // Output: [1, 4, 9, 16]
  print(transformAll([1, 2, 3, 4], twice)); // Output: [2, 4, 6, 8]
  print(transformAll([1, 2, 3, 4], (int n) => n - 1)); // Output: [0, 1, 2, 3]
  // A typedef becomes really useful when the type appears in several places, such
  // as a LIST of functions. Here each item is a rule a password must satisfy:
  List<Validator> passwordRules = [
    (String s) => s.trim().isNotEmpty, // rule 1: must not be blank
    (String s) => s.length >= 6, // rule 2: must be long enough
  ];
  print(passesAll("secret123", passwordRules)); // Output: true
  print(passesAll("abc", passwordRules)); // Output: false
  // Without the typedef, that list would have to be declared as
  // List<bool Function(String)>, which is a mouthful. Adding a third rule is now
  // just one more line - passesAll() does not change at all.

  // -------9. RECURSION-------------------------------------------------
  // A function is allowed to call ITSELF. That is called RECURSION, and it suits
  // problems that contain a smaller copy of themselves.
  // Every recursive function needs two parts:
  //   BASE CASE      - the condition that stops it. Without one it never ends.
  //   RECURSIVE CASE - the call to itself, with a value closer to the base case.
  print(factorial(5)); // 5*4*3*2*1. Output: 120
  print(factorial(0)); // the base case on its own. Output: 1
  countdown(3); // Output: 3, then 2, then 1
  // Trace factorial(3) by hand:
  //   factorial(3) -> 3 * factorial(2)
  //   factorial(2) -> 2 * factorial(1)
  //   factorial(1) -> 1            <-- base case, so it stops and unwinds
  //   giving 3 * 2 * 1 = 6
  // Forget the base case and the program crashes with a StackOverflowError.

  // -------10. SCOPE-------------------------------------------------
  // SCOPE is the region of code where a name is visible.
  // - A variable declared inside a function exists only inside that function.
  // - A variable declared inside an if or a loop exists only inside those braces.
  // - Something declared at the top level of a file is visible to the whole file,
  //   and to other files if they import it.
  // This is why add() and greet() work here: they are top level in a file we imported.
  // And it is why halfOf() cannot be used anywhere but main().
  int outerValue = 100;
  void showOuter() {
    // A function can SEE variables from the scope that encloses it.
    print(outerValue); // Output: 100
  }

  showOuter();
  // But the reverse is not true - main() cannot see inside showOuter().
  // Functions should generally take what they need as parameters instead of reaching
  // out to variables around them. It makes them reusable and easy to reason about.

  // -------11. THE COLLECTION METHODS WE PROMISED-------------------------------------------------
  // Back in the Collections topic we listed a set of methods and said they had to
  // wait until functions were covered. Here they are. Every one of them is a
  // higher-order method: you hand it a function, and it does the looping for you.
  List<int> scores = [45, 78, 62, 90, 55];

  // forEach - run a function once for each item. Returns nothing.
  scores.forEach(print); // Output: 45, 78, 62, 90, 55
  // Note we passed `print` itself, with no brackets. Handing over an existing
  // function like that is called a TEAR-OFF, and it is where forEach earns its keep.
  // If instead you write out a function literal - scores.forEach((s) => ...) - then
  // `dart analyze` will tell you to use an ordinary for-in loop, because the loop is
  // clearer and can use break and continue. Try it and read the warning.

  // map - transform every item into something else, producing a new collection.
  // It returns a lazy Iterable, so finish with .toList() to get a real List.
  print(scores.map((int s) => s + 5).toList()); // Output: [50, 83, 67, 95, 60]
  print(scores.map((int s) => gradeFor(s)).toList());
  // Output: [D, A, B, A, C]
  // This is the method form of the collection `for` we met earlier.

  // where - keep only the items that pass a test.
  print(scores.where((int s) => s >= 60).toList()); // Output: [78, 62, 90]
  // And this is the method form of the collection `if`.

  // any and every - ask a yes/no question about the whole collection.
  print(scores.any((int s) => s >= 90)); // is at least one 90+? Output: true
  print(scores.every((int s) => s >= 50)); // are they ALL 50+? Output: false

  // firstWhere - find the first item matching a test.
  print(scores.firstWhere((int s) => s > 60)); // Output: 78
  // If nothing matches it throws an error, so supply orElse to stay safe:
  print(scores.firstWhere((int s) => s > 200, orElse: () => -1)); // Output: -1

  // reduce - boil the whole collection down to a single value by combining pairs.
  print(scores.reduce((int a, int b) => a + b)); // total. Output: 330
  print(scores.reduce((int a, int b) => a > b ? a : b)); // highest. Output: 90

  // fold - like reduce, but you supply the starting value, so the result can be a
  // DIFFERENT type from the items. The type in angle brackets says which.
  print(scores.fold<int>(0, (int total, int s) => total + s)); // Output: 330
  print(
    scores.fold<String>("", (String acc, int s) => "$acc$s "),
  ); // Output: 45 78 62 90 55
  // reduce cannot do that second one: it always returns the item type, so it could
  // never turn a list of ints into a String.

  // removeWhere - delete every item matching a test. This CHANGES the list.
  List<int> passMarks = [45, 78, 62, 90, 55];
  passMarks.removeWhere((int s) => s < 50);
  print(passMarks); // Output: [78, 62, 90, 55]

  // List.generate - build a list from an index, using a function.
  print(
    List.generate(5, (int index) => index * index),
  ); // Output: [0, 1, 4, 9, 16]
  print(List.generate(3, (int index) => "Row ${index + 1}"));
  // Output: [Row 1, Row 2, Row 3]

  // sort with a comparator - decide the order yourself.
  // The function receives two items and returns a negative number to put the first
  // one earlier, a positive number to put it later, and 0 to treat them as equal.
  List<int> toSort = [45, 78, 62, 90, 55];
  toSort.sort(
    (int first, int second) => second.compareTo(first),
  ); // largest first
  print(toSort); // Output: [90, 78, 62, 55, 45]
  List<String> sortByLength = ["Chidi", "Ada", "Bolanle"];
  sortByLength.sort((String a, String b) => a.length.compareTo(b.length));
  print(sortByLength); // Output: [Ada, Chidi, Bolanle]

  // putIfAbsent, revisited
  // Now the `() => 999` we glossed over makes sense: it is an anonymous function.
  // Map takes a FUNCTION rather than a value so it only has to work out the value
  // when the key is actually missing.
  Map<String, int> inventory = {"Pen": 10};
  inventory.putIfAbsent(
    "Pen",
    () => 999,
  ); // key exists, so the function never runs
  inventory.putIfAbsent("Book", () => 25); // key missing, so the function runs
  print(inventory); // Output: {Pen: 10, Book: 25}

  // Chaining them together
  // Because most of these return a collection, you can join them into a pipeline.
  // Read it left to right: take the scores, keep the passes, convert to grades.
  print(scores.where((int s) => s >= 50).map(gradeFor).toList());
  // Output: [A, B, A, C]
  // Compare that with the plain .map() a few lines above, which gave
  // [D, A, B, A, C]. The 45 was filtered out by where() before map() ever saw it,
  // so its D never appears. Order in a chain matters.
  // Also notice we passed `gradeFor` as a tear-off, with no brackets and no
  // (s) => gradeFor(s) wrapper around it.

  // =================================================================================================================================================
}

// ===========================================================================
// TOP-LEVEL FUNCTIONS
// ===========================================================================
// Everything below sits OUTSIDE main(). These are top-level functions: they belong
// to the file rather than to any other function, and they are visible to every
// function in this file.
// Note that main() above calls them even though they are written below it. Order of
// declaration does not matter at the top level - Dart reads the whole file first.

/// Returns the average of [values], or 0 when the list is empty.
double averageOf(List<int> values) {
  if (values.isEmpty) return 0;
  return values.reduce((int a, int b) => a + b) / values.length;
}

/// Prints a heading with a line of equals signs under it.
void printHeading(String heading) {
  print(heading);
  print("=" * heading.length);
}
