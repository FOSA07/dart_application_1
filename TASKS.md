# Student Tasks

Practice exercises for the Dart module. The tasks follow the same order as the
lessons in `bin/dart_application_1.dart`, so if a task defeats you, go back and
re-read that topic first.

## Two kinds of work

| | Practice sets 1–11 | Challenges C1, C2, C3 … |
| --- | --- | --- |
| Where it goes | `exercises/` on your own machine | `bin/`, in a file named after you |
| Submitted? | No — kept private, Git ignores the folder | **Yes** — on your own branch, via a pull request |
| How | See below | See **`GITHUB_GUIDE.md`** |

Before submitting your first challenge, read `GITHUB_GUIDE.md` from the top. It
covers branching, committing, pushing and pull requests, and assumes no previous
experience with Git.

## Before you start

Create a folder for your practice work and put each set of tasks in its own file:

```bash
mkdir exercises
```

Then create a file such as `exercises/set2_variables.dart`. Every file you write
needs a `main()` function, because that is where Dart starts:

```dart
void main() {
  // your answer goes here
}
```

Run it with:

```bash
dart run exercises/set2_variables.dart
```

## Rules

1. **Only use what we have covered in class.** No classes and no `try`/`catch` —
   those topics are still ahead of us. From Set 11 onwards you may (and should)
   write your own functions; before that, keep everything inside `main()`.
2. **Run `dart analyze` before you say you are finished.** It should print
   *No issues found*. If it does not, read the message: it is telling you about a
   real mistake.
3. **Comment your code.** Put a short comment above each task saying which task it
   is and what it does.
4. Where a task shows expected output, your program must produce exactly that.
5. If you are stuck, print things. `print()` on a half-finished value is the
   fastest way to see what is actually happening.

---

## Set 1 — Comments and print

1. Print your full name, your course, and your favourite programming language on
   three separate lines.
2. Put a single-line comment above each `print` explaining what it does.
3. Use a multi-line comment `/* */` to disable one of the three prints without
   deleting it. Run again and confirm only two lines appear.
4. Add a documentation comment `///` at the top of `main()` describing what the
   program does.

## Set 2 — Variables and data types

1. Declare four variables for a student and print each one with a label:
   a `String` name, an `int` age, a `double` height, a `bool` for whether they have
   paid their fees.
2. Print the `.runtimeType` of all four.
3. Declare the same four values again using `var`, and prove with `.runtimeType`
   that Dart worked out the type on its own.
4. Declare a `final` variable holding `DateTime.now()` and a `const` variable
   holding the VAT rate `0.075`. Print both.
5. Now try to assign a new value to your `final` variable. Read the error message
   Dart gives you, then comment the line out so your program runs again.
6. Declare a nullable `String? middleName` with no value. Print it, then print it
   again using `??` so that it shows `None` instead of `null`.
7. Using string interpolation, print one sentence that includes the name, the age,
   and the age multiplied by 12 (their age in months) — all in a single `print`.

## Set 3 — Operators

1. With `int a = 17;` and `int b = 5;`, print the result of `+`, `-`, `*`, `/`,
   `%` and `~/`. Label each line, for example `Remainder: 2`.
2. Explain in a comment why `17 / 5` and `17 ~/ 5` give different answers.
3. A book costs 2500 and a student buys 3. Work out the total, then add 7.5% VAT.
   Print the final amount to exactly two decimal places using `.toStringAsFixed(2)`.
4. Print all six comparison results (`>`, `<`, `>=`, `<=`, `==`, `!=`) for `a` and `b`.
5. Use the ternary operator to print `Adult` or `Minor` based on an age variable.
6. For the numbers 9 and 5, print the result of `&`, `|`, `^`, `<< 1` and `>> 1`.
   Also print each number's binary form using `.toRadixString(2)`.

## Set 4 — Type conversion and user input

1. Ask the user for their name, then greet them by it.
2. Ask the user for their age as text, convert it with `int.tryParse`, and print
   `Next year you will be X`. If they typed something that is not a number, print
   `That is not a valid age` instead.
3. Ask for two numbers and print their sum. Remember `readLineSync()` always gives
   you a `String`, never a number.
4. Ask for a height in metres as a `double` and print it rounded to one decimal
   place.
5. Convert the number `89` into a `String` and print its `.length`. Explain in a
   comment why the answer is 2.

## Set 5 — Collections

### List

1. Create a `List<String>` of five subjects you are studying. Print the whole list,
   its `.length`, its `.first` and its `.last`.
2. Add a sixth subject with `add`, insert one at position 0 with `insert`, remove
   one by name with `remove`, then remove whatever is at index 2 with `removeAt`.
   Print the list after every single change.
3. Create a `List<int>` of six test scores. Sort it, print it, then print the
   highest and the lowest score. Print the top three scores using `sublist`.
4. Print your subject list as one line of text separated by commas, using `join`.
5. Create a `List<List<int>>` holding three rows of three numbers. Print the whole
   second row, then print just the number in the second row, third column.
6. Take a list that contains duplicates. Print its length, then print the length
   again after removing the duplicates with `.toSet().toList()`.

### Set

7. Two study groups: `{"Ada", "Bola", "Chidi"}` and `{"Chidi", "Dele", "Ada"}`.
   Print everyone across both groups, then only those in both, then those in the
   first group only.
8. Add a name that is already in a set and print what `add` returns. Explain the
   result in a comment.

### Map

9. Create a `Map<String, int>` of five students and their scores. Print the map,
   its `.length`, its `.keys` and its `.values`.
10. Add a new student, change one existing student's score, and remove another.
    Print the map after each change.
11. Print the score of a student who is **not** in the map. Then print it again
    using `??` so it shows `0` instead of `null`.
12. Use `containsKey` to check whether a student is in the map, and print a
    sensible message either way.
13. Create a `List<Map<String, Object>>` holding three products, each with a
    `name` and a `price`. Print the name of the second product and the price of
    the third.

### The spread operator

14. Create two lists of subjects and join them into one using `...`. Then print
    `[list1, list2]` **without** the dots. Explain the difference in a comment, and
    print the `.length` of both to prove your point.
15. Copy a list using `[...original]`, add an item to the copy, then print both.
    Now do the same thing again using plain assignment (`var copy = original;`)
    instead. Explain in a comment why the two behave differently.
16. Merge two `Map`s of settings where one key appears in both. Before you run it,
    write a comment predicting which value survives. Then swap the order of the two
    spreads and see whether you were right.
17. Make a `Map<String, List<int>>` of bonus marks for two students. Using `...?`,
    print a total list for a student who **is** in the map, and for one who is
    **not**. Explain why the `?` is needed.

## Set 6 — The String class

1. Start with `String messy = "   Dart Programming   ";`. Print its length, then
   trim it and print the length again.
2. Print that same text in full capitals and in full small letters.
3. From the string `"Dart Programming Fundamentals"`, print the first four
   characters, everything from position 5 onwards, and the position where the word
   `Programming` starts.
4. Given an email address in a variable, check that it contains `@` **and** ends
   with `.com`. Print `Valid` or `Invalid`.
5. Split a full name such as `"faleti oluwaseyi samuel"` into words and print how
   many words it has.
6. Compare `"Dart"` and `"dart"` with `==`. Then compare them again in a way that
   treats them as equal. Explain the difference in a comment.
7. Print a two-column receipt line using `padRight`, so that the prices line up:

   ```
   Bread          500
   Milk           250
   Sugar         1200
   ```

8. **Challenge:** reverse a string without using a loop. Hint: `split("")`,
   `reversed` and `join` can be chained together.

## Set 7 — Decision making

1. Ask the user for a score out of 100 and print a grade: 70 and above is `A`,
   60–69 is `B`, 50–59 is `C`, 45–49 is `D`, anything lower is `F`.
2. Ask for a number and print whether it is even or odd.
3. Ask for three numbers and print the largest, using `if` statements only.
4. Ask for a day number from 1 to 7 and print the name of the day using a
   `switch` statement. Print `Invalid day` for anything else.
5. Rewrite task 4 using a **switch expression** instead, storing the result in a
   variable and printing it once.
6. A student may write the exam only if their attendance is 75 or more **and**
   their test score is 40 or more. Ask for both and print whether they are eligible.
7. Ask for a year and print whether it is a leap year. A year is a leap year if it
   divides by 4 but not by 100, unless it also divides by 400.

## Set 8 — Loops

1. Print the numbers 1 to 10, each on its own line, using a `for` loop.
2. Print 10 down to 1.
3. Print all even numbers from 1 to 20.
4. Ask the user for a number and print its full multiplication table from 1 to 12,
   in the form `7 x 3 = 21`.
5. Use a `while` loop to add up every number from 1 to 100 and print the total.
6. Use a `do-while` loop that prints a counter and stops when it reaches 5.
7. Loop over your subject list from Set 5 and print each subject with its index,
   like `0 -> Mathematics`.
8. Loop over your student score map and print each entry as `Ada scored 88`.
9. Use nested loops to print this triangle:

   ```
   *
   **
   ***
   ****
   ```

10. Ask the user for a word and count how many vowels it contains. Hint: loop over
    the positions and use `"aeiou".contains(...)`.

## Set 9 — Jump statements

1. Loop from 1 to 20 and stop the loop completely at the first number that divides
   exactly by 7. Print that number.
2. Loop from 1 to 20 but skip every multiple of 3, printing the rest.
3. Search a list of names for one particular name. Stop as soon as you find it and
   print `Found`. If the loop finishes without finding it, print `Not found`.
   Hint: use a `bool` variable to remember whether you found it.
4. Write two nested loops from 1 to 5. Use a **labelled break** to leave both loops
   at once when the two counters multiply to more than 12.
5. Explain in a comment, in your own words, the difference between `break` and
   `continue`.

## Set 10 — Building collections with `if` and `for`

1. Build a menu `List<String>` that always contains `Home` and `Logout`, but only
   contains `Billing` when a `userLevel` variable is 2 or more. Use a collection
   `if` inside the list literal — not an `if` statement outside it. Run it twice
   with different levels.
2. Build a list of the squares of 1 to 10 using a collection `for` in a single
   literal.
3. Now build the same list of squares the long way: start with an empty list, use
   an ordinary `for` loop and `.add()`. Print both and confirm they match.
4. From a list of numbers, build a new list containing only the even ones, doubled,
   using a `for` and an `if` in the **same** literal.
5. From a list of words, build a `Map` where each word is a key and its length is
   the value, using a collection `for`.
6. From a list of names, build a `Set` of their first letters. Explain in a comment
   why the set is sometimes shorter than the list of names.
7. In one literal, combine all three: spread an existing list in with `...`, add
   some items with a collection `for`, and include one extra item with a
   collection `if`.

## Set 11 — Functions

Remember: a function cannot be declared inside `main()` as a top-level function.
Put yours **below** `main()` in your exercise file, or in a file inside `lib/`.

### Basics, return types and `void`

1. Write `int addNumbers(int a, int b)` that returns the sum, then call it three
   times with different values and print each result.
2. Write a `void` function `sayHello(String name)` that prints a greeting. Explain
   in a comment why you cannot write `var x = sayHello("Ada");`.
3. Write `bool isPositive(int n)` and use it inside an `if`.
4. Write `List<String> initialsOf(List<String> names)` that returns the first
   letter of each name.
5. Write `String? findName(List<String> names, String target)` that returns the
   name if it is in the list and `null` if it is not. Call it both ways, and use
   `??` to print `Not found`.
6. Write `String classify(int n)` that returns `"negative"`, `"zero"` or
   `"positive"` using three `return` statements and **no** `else`. Explain in a
   comment why no `else` is needed.

### Parameters

7. Write `String describeCar(String make, [String? colour, int? year])` and call it
   with one, two, then three arguments.
8. Write `double total({required double price, required int quantity, double discount = 0})`
   that returns the amount due. Call it with and without the discount.
9. Rewrite task 8 using only positional parameters. Then write a comment saying
   which version you would rather read at the call site, and why.
10. Write a function with a required positional parameter **and** two named
    parameters. Try putting a named parameter first and read the error you get.

### Default values and arrow functions

11. Write `String repeatText(String text, [int times = 3])` and call it both ways.
12. Rewrite these as arrow functions: a function returning a number cubed, a
    function returning whether a string is empty, and a function returning the
    larger of two numbers.
13. Take one of your longer functions and explain in a comment why it **cannot**
    be written with an arrow.

### Functions as values

14. Store a function in a variable and call it through that variable. Then
    reassign the variable to a different function and call it again.
15. Build a `List` of three functions that each transform an `int`. Loop through
    the list, calling each one on the number 6.
16. Write `int applyOperation(int a, int b, int Function(int, int) operation)` and
    call it with an add function, a subtract function, and an anonymous function
    that multiplies.
17. Write `Function makeGreeter(String greeting)` that returns a function. Use it
    to build a `sayHi` and a `sayGoodMorning`, then call both. Explain in a comment
    what the returned function is remembering.

### Typedefs and recursion

18. Create a `typedef` for a function taking a `String` and returning a `String`.
    Use it to declare a list of two text-formatting functions, then apply both to
    the same word.
19. Write a recursive `int sumTo(int n)` that adds every number from 1 to `n`.
    Label the base case and the recursive case in comments.
20. Write a recursive function that prints a countdown from `n` to 1. Then remove
    the base case, run it, and write down the error you get. Put the base case back.

### The collection methods

Use the list `[45, 78, 62, 90, 55]` for these.

21. Use `forEach` to print every score.
22. Use `map` to add 5 to every score, and print the result as a `List`.
23. Use `where` to keep only the scores of 60 and above.
24. Use `any` to check whether anyone scored 90 or more, and `every` to check
    whether everyone passed.
25. Use `firstWhere` to find the first score above 60. Then use it to look for a
    score above 200, supplying `orElse` so it does not crash.
26. Use `reduce` to find the total, and again to find the highest score.
27. Use `fold` to build a single `String` of all the scores separated by commas.
    Explain in a comment why `reduce` could not do this.
28. Use `removeWhere` to delete every failing score. Print the list before and
    after, and say in a comment what `removeWhere` did to the original.
29. Use `List.generate` to build the first ten multiples of 3.
30. Sort a list of names by length, shortest first. Then sort it longest first.
31. Chain `where` and `map` in one line: keep the passing scores and convert them
    to grade letters.

---

## Challenges

These combine several topics. Take your time.

**These are the ones you submit.** Each challenge gets its own branch and its own
file in `bin/`, named after you — for example `bin/c7_ada_lovelace.dart` on branch
`challenge-c7-ada-lovelace`. Your file needs its own `main()`. Follow
`GITHUB_GUIDE.md` step by step.

### C1 — Report card

Store five subjects and their scores in a `Map<String, int>`. Then:

- Loop over the map and print each subject with its score, neatly aligned.
- Work out the total and the average.
- Print the average to two decimal places.
- Print an overall grade using the same scale as Set 7 task 1.
- Print `PASS` or `FAIL` depending on whether the average is 50 or more.

### C2 — Shopping cart

Store products in a `List<Map<String, Object>>`, each with a `name`, a `price` and
a `quantity`. Then:

- Loop through and print each line as `2 x Bread = 1000`.
- Work out the cart total.
- If the total is over 5000, apply a 10% discount and say so.
- Print the final amount to two decimal places.

### C3 — Sentence statistics

Ask the user to type a sentence, then print:

- how many characters it has,
- how many words it has,
- the longest word,
- how many **different** words it has (hint: a `Set` does this work for you),
- the whole sentence in capitals.

### C4 — Number guessing game

Store a secret number in a variable. Using a `do-while` loop, keep asking the user
to guess until they get it right. After each wrong guess tell them `Too high` or
`Too low`. When they win, print how many attempts it took.

### C5 — Simple ATM menu

Start with a balance of 10000. In a loop, show a menu:

```
1. Check balance
2. Deposit
3. Withdraw
4. Exit
```

Read the user's choice and act on it with a `switch`. Refuse a withdrawal that is
larger than the balance. Keep looping until they choose 4, then `break` out and
print `Goodbye`.

### C6 — Exam eligibility list

Start with two collections:

- a `Map<String, int>` of five students and their attendance percentage,
- a `List<String>` of two students who are **exempt** from the attendance rule.

Then:

- Build a list of every student whose attendance is 75 or more, using a collection
  `for` and a collection `if` in a **single list literal**. No `.add()` allowed.
- Produce a combined list that also includes the exempt students, using the spread
  operator.
- An exempt student might also have good attendance, so remove any duplicates.
- Sort the final list alphabetically and print it.
- Print how many students are eligible and how many are not.

**Bonus:** print the names of the students who are *not* eligible, and make sure an
exempt student never appears in that list.

### C7 — Rebuild your report card with functions

Go back to your answer for **C1** and rewrite it so that almost no logic is left
inside `main()`. Write at least these functions:

- `double averageOf(List<int> scores)` — returns the average, and returns 0 for an
  empty list rather than crashing
- `String gradeFor(int score)` — returns the grade letter
- `String formatRow(String subject, int score)` — returns one neatly padded line
- `List<String> failedSubjects(Map<String, int> results)` — returns the subjects
  below the pass mark

`main()` should then read as a short list of calls, and nothing else.

**Then make it flexible:** change `failedSubjects` so it takes a second parameter
of type `bool Function(int)`, deciding what counts as a failure. Call it once with
a rule for "below 50" and again with a rule for "below 40" — **without editing the
function itself**. That is the moment higher-order functions justify themselves.

### C8 — Password strength checker

Create `typedef Rule = bool Function(String);` and build a
`Map<String, Rule>` where each key describes a rule and each value tests it:

- `"at least 8 characters"`
- `"contains a digit"`
- `"contains a capital letter"`
- `"is not blank"`

Then:

- Write `List<String> failedRules(String password, Map<String, Rule> rules)` that
  returns the descriptions of every rule the password breaks.
- Ask the user for a password.
- If nothing failed, print `Strong password`. Otherwise print each failure on its
  own line, starting with how many rules were broken.

**Bonus:** add a fifth rule without touching `failedRules` at all. If you have to
modify that function, your design was not quite right — think about why.

---

## Checking your own work

Before you submit anything:

- [ ] `dart analyze` prints **No issues found**
- [ ] The program runs from start to finish without crashing
- [ ] Every task is labelled with a comment saying which task it is
- [ ] Where the task specified an output, yours matches it exactly
