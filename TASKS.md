# Student Tasks

Practice exercises for the Dart module. The tasks follow the same order as the
lessons in `bin/dart_application_1.dart`, so if a task defeats you, go back and
re-read that topic first.

## Before you start

Create a folder for your work and put each set of tasks in its own file:

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

1. **Only use what we have covered in class.** No functions of your own, no
   classes, no `try`/`catch` — those topics are still ahead of us. Everything here
   can be solved with variables, operators, collections, strings and control
   structures, all written inside `main()`.
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

---

## Challenges

These combine several topics. Take your time.

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

---

## Checking your own work

Before you submit anything:

- [ ] `dart analyze` prints **No issues found**
- [ ] The program runs from start to finish without crashing
- [ ] Every task is labelled with a comment saying which task it is
- [ ] Where the task specified an output, yours matches it exactly
