/// A small library of example functions used by the Functions lesson in
/// `bin/dart_application_1.dart`.
///
/// This file exists for two reasons:
///
/// 1. A function cannot be declared inside `main()` as a normal top-level
///    function, so real functions need somewhere to live.
/// 2. It is the CUSTOM LIBRARY we promised back in the Libraries topic. Anything
///    you put in `lib/` can be imported by any other file in this project using
///    `import 'package:dart_application_1/functions.dart';`
///
/// Notice that every function below is documented with a `///` comment. That is
/// the documentation comment we met in the very first lesson, and this is what it
/// is really for: hover over any of these function names in your editor and the
/// text will appear.
library;

// ---------------------------------------------------------------------------
// BASICS: declaration and invocation
// ---------------------------------------------------------------------------

/// Returns the sum of [a] and [b].
///
/// The shape of every function is the same:
/// `returnType functionName(parameters) { body }`
int add(int a, int b) {
  return a + b;
}

/// Prints a greeting for [personName].
///
/// This function returns nothing, so its return type is `void`.
void greet(String personName) {
  print("Hello, $personName!");
}

/// Prints a line of dashes, to separate sections of output.
///
/// A function does not have to take any parameters at all.
void printSeparator() {
  print("-" * 50);
}

// ---------------------------------------------------------------------------
// RETURN TYPES
// ---------------------------------------------------------------------------

/// Returns true when [n] is an even number.
bool isEven(int n) {
  return n % 2 == 0;
}

/// Splits [sentence] into a list of its words.
///
/// A function can return any type, including a collection.
List<String> splitWords(String sentence) {
  return sentence.split(" ");
}

/// Returns a map of each word in [words] to its length.
Map<String, int> lengthsOf(List<String> words) {
  return {for (String word in words) word: word.length};
}

/// Returns the first name in [names], or null when the list is empty.
///
/// The `?` on the return type is a promise to the caller that this function may
/// hand back null, so they must handle that case.
String? firstNameOrNull(List<String> names) {
  if (names.isEmpty) {
    return null;
  }
  return names.first;
}

/// Returns the grade letter for [score].
///
/// Shows that `return` leaves the function IMMEDIATELY. Once one of these runs,
/// none of the lines below it are reached.
String gradeFor(int score) {
  if (score >= 70) return "A";
  if (score >= 60) return "B";
  if (score >= 50) return "C";
  if (score >= 45) return "D";
  return "F";
}

// ---------------------------------------------------------------------------
// PARAMETERS: positional, optional positional, named
// ---------------------------------------------------------------------------

/// Describes a student.
///
/// [studentName] is REQUIRED POSITIONAL - it must always be supplied.
/// [age] and [course] are OPTIONAL POSITIONAL, marked by the square brackets.
/// Optional positional parameters must be able to hold null, or have a default.
String describeStudent(String studentName, [int? age, String? course]) {
  String description = studentName;
  if (age != null) description += ", aged $age";
  if (course != null) description += ", studying $course";
  return description;
}

/// Returns [amount] with VAT added.
///
/// [rate] is optional AND has a DEFAULT VALUE, so callers can leave it out and
/// get 7.5% without saying so.
double applyVat(double amount, [double rate = 0.075]) {
  return amount + (amount * rate);
}

/// Builds a full name from its parts.
///
/// These are NAMED parameters, written in curly braces. Callers must write the
/// parameter name at the call site, which makes long calls readable.
/// `required` means the caller cannot leave it out, even though it is named.
String formatName({
  required String first,
  String? middle,
  required String last,
}) {
  if (middle == null) {
    return "$first $last";
  }
  return "$first $middle $last";
}

/// Builds a label, showing named parameters that all have DEFAULT VALUES.
///
/// Every parameter here can be left out, so `buildLabel()` on its own is valid.
String buildLabel({String text = "Item", int count = 1, bool shout = false}) {
  String label = "$count x $text";
  return shout ? label.toUpperCase() : label;
}

/// Writes a log line, mixing a required positional parameter with named ones.
///
/// Positional parameters always come FIRST. You cannot put named parameters
/// before them.
void logMessage(
  String message, {
  String level = "INFO",
  bool underline = false,
}) {
  print("[$level] $message");
  if (underline) print("-" * (message.length + level.length + 3));
}

// ---------------------------------------------------------------------------
// ARROW FUNCTIONS
// ---------------------------------------------------------------------------

/// Returns the square of [n], written as an ARROW FUNCTION.
///
/// When a function body is a single expression, `=> expression` replaces
/// `{ return expression; }`. The two forms mean exactly the same thing.
int square(int n) => n * n;

/// Returns [n] doubled.
///
/// `double` is already the name of a Dart type, so it cannot be used as a
/// function name. This is the keyword rule from our very first lessons.
int twice(int n) => n * 2;

/// Returns true when [text] looks like an email address.
bool looksLikeEmail(String text) => text.contains("@") && text.endsWith(".com");

// ---------------------------------------------------------------------------
// HIGHER-ORDER FUNCTIONS
// ---------------------------------------------------------------------------

/// Applies [operation] to [value] twice and returns the result.
///
/// This is a HIGHER-ORDER FUNCTION: one of its parameters is itself a function.
/// The type `int Function(int)` reads as "a function that takes an int and
/// returns an int".
int applyTwice(int value, int Function(int) operation) {
  return operation(operation(value));
}

/// Returns a NEW function that multiplies whatever it is given by [factor].
///
/// A function can return another function. The returned function remembers the
/// value of [factor] even after this function has finished - that is a CLOSURE.
int Function(int) multiplierOf(int factor) {
  return (int n) => n * factor;
}

/// Keeps only the items of [names] that [test] approves of.
///
/// This is a hand-written version of the `where` method you will meet on
/// collections. Writing it yourself once makes `where` obvious later.
List<String> keepWhere(List<String> names, bool Function(String) test) {
  List<String> kept = [];
  for (String candidate in names) {
    if (test(candidate)) {
      kept.add(candidate);
    }
  }
  return kept;
}

// ---------------------------------------------------------------------------
// TYPEDEFS
// ---------------------------------------------------------------------------

/// A name for the type "a function that takes an int and returns an int".
///
/// Writing `int Function(int)` everywhere gets noisy. A TYPEDEF gives that type
/// a short name you can use instead.
typedef IntTransformer = int Function(int);

/// A name for the type "a function that takes a String and returns a bool".
typedef Validator = bool Function(String value);

/// Applies [transformer] to every number in [numbers].
///
/// Compare this signature with [applyTwice] above: `IntTransformer` and
/// `int Function(int)` mean exactly the same thing, but this one reads better.
List<int> transformAll(List<int> numbers, IntTransformer transformer) {
  return [for (int n in numbers) transformer(n)];
}

/// Returns true only when [value] passes every one of the [rules].
bool passesAll(String value, List<Validator> rules) {
  for (Validator rule in rules) {
    if (!rule(value)) return false;
  }
  return true;
}

// ---------------------------------------------------------------------------
// RECURSION
// ---------------------------------------------------------------------------

/// Returns the factorial of [n], for example 5 gives 120.
///
/// A RECURSIVE function calls itself. Every recursive function needs a BASE CASE
/// - here, `n <= 1` - or it will call itself forever and crash.
int factorial(int n) {
  if (n <= 1) return 1; // base case: stop here
  return n * factorial(n - 1); // recursive case: call itself with a smaller n
}

/// Counts down from [n] to 1, printing each number.
void countdown(int n) {
  if (n < 1) return; // base case: nothing left to print
  print(n);
  countdown(n - 1);
}

// ---------------------------------------------------------------------------
// A PREVIEW: generic functions
// ---------------------------------------------------------------------------

/// Returns the first item of [items], or [fallback] when the list is empty.
///
/// The `<T>` makes this a GENERIC function: it works with a list of any type,
/// and Dart works out what `T` is from how you call it. Generics are a topic of
/// their own later on - this is just a taste.
T firstOr<T>(List<T> items, T fallback) {
  if (items.isEmpty) return fallback;
  return items.first;
}
