# Dart Programming Fundamentals

Course material for the Dart module at Aptech. This is not an application in the
usual sense — it is a **runnable set of lecture notes**. Every topic we cover in
class is written into one Dart program that you can read, run, edit and break.

Each topic follows the same rhythm:

1. A comment block explaining the idea in plain English.
2. A small working example.
3. An `// Output:` comment on each line showing exactly what it prints.

So you never have to guess what a line does — run the file and compare it against
the comments.

## Requirements

- Dart SDK 3.12.1 or later (check with `dart --version`)

## Getting started

```bash
dart pub get                        # fetch dependencies, once
dart run bin/dart_application_1.dart
```

The program pauses twice to ask you for input — first your name, then a number.
Type an answer and press Enter each time, and it will carry on to the end.

Two other commands worth knowing:

```bash
dart analyze   # checks the code for mistakes without running it
dart format .  # tidies the layout to the standard Dart style
```

`dart analyze` should always report **No issues found**. If it reports something
after you have been editing, read the message — it is usually pointing at a real
mistake.

## Where things live

| Path | What it is |
| --- | --- |
| `bin/dart_application_1.dart` | **The course.** All lessons live here, in teaching order. |
| `TASKS.md` | **Your exercises.** Practice tasks for every topic, in lesson order. |
| `GITHUB_GUIDE.md` | **Read before submitting.** How to branch, commit and open a pull request. |
| `BACKLOG.md` | Teacher's planning notes. You can ignore this one. |
| `pubspec.yaml` | Project name, Dart SDK version, and dependencies. |
| `analysis_options.yaml` | The rules `dart analyze` checks against. |
| `lib/functions.dart` | Our own library of example functions, imported by the lesson. |
| `test/` | Starter test file. We will use this properly when we cover testing. |

## Topics covered so far

Lessons appear in the file in the order below. This list doubles as our progress
tracker for the class.

- [x] Comments
- [x] Print statements
- [x] Dart keywords
- [x] Data types
- [x] Variables — `var`, `dynamic`, `final`, `const`, type inference, string interpolation
- [x] Operators — arithmetic, assignment, comparison, logical, null-aware, type test, bitwise, ternary
- [x] Type conversions
- [x] Libraries
- [x] User input with `stdin`
- [x] Collections — List, Set, Map, and the spread operator
- [x] The String class
- [x] Control structures — decision making, loops, jump statements
- [x] Building collections with `if` and `for` — collection-if, collection-for
- [x] Functions — declaration, parameters, defaults, arrow syntax, anonymous and
      higher-order functions, typedefs, recursion, scope, and the collection
      methods (`forEach`, `map`, `where`, `reduce`, `fold` …)

### Coming next

- [ ] Null safety as a topic of its own
- [ ] Object-oriented programming — classes, constructors, inheritance
- [ ] Exception handling
- [ ] Asynchronous programming — `Future`, `async`/`await`

## How to find a topic

Each lesson opens with a banner comment in capitals, like:

```dart
// =======COLLECTIONS====================================================
```

Search the file for the topic name to jump straight to it. Larger topics are split
into numbered sub-blocks, for example `1. LIST`, `2. SET`, `3. MAP`.

## Practising

Reading and running the lessons is only half the work. `TASKS.md` has exercises for
every topic we have covered, in the same order, ending with the longer challenges
that combine them.

There are two kinds of work, and they are handled differently:

- **Practice sets (1–11)** — write these in an `exercises/` folder on your own
  machine. That folder is ignored by Git, so it stays private to you.
- **Challenges (C1, C2, C3 …)** — these are submitted. Each one goes in `bin/`, in
  a file named after you, on a branch of your own. **`GITHUB_GUIDE.md` walks you
  through the whole process** from cloning the repository to opening a pull
  request. Read it before your first submission.

The single most important rule when submitting: **never edit a file that came from
`main`.** Work only in your own file, and you will never hit a merge conflict.

## Suggested way to study this

Reading the file is not enough. To actually learn it:

1. Run the program and match the console output against the `// Output:` comments.
2. Change the values in an example, predict what will happen, then run it again.
3. Deliberately break something — use an index that does not exist, remove a
   `break` from a `switch` — and read the error Dart gives you. Learning to read
   error messages is half the skill.
4. Comment out a section you have understood so the output stays short while you
   work on the next one.
