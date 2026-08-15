# Course Backlog

Working backlog for building this course — topics still to write, fixes, and repo
housekeeping. This is teacher-side planning. Student exercises live in `TASKS.md`.

## How to use this file

- `- [ ]` is open, `- [x]` is done.
- When a topic is finished, tick it **here and in the progress list in `README.md`**.
  Those two lists have to agree, or the class loses its progress signal.
- Sections are roughly in the order we intend to tackle them.
- Move finished items down to **Done**, with the date.

---

## 1. Course content

### Functions — DONE 2026-08-14

- [x] Declaring a function: name, parameters, return type, `return`
- [x] `void` versus a real return type, plus nullable return types
- [x] Parameters versus arguments as terminology
- [x] Positional parameters
- [x] Optional positional parameters `[ ]` and default values
- [x] Named parameters `{ }`, `required`, and defaults
- [x] Arrow syntax `=>` for one-line functions
- [x] Functions as values; anonymous functions; closures
- [x] Higher-order functions — taking one, returning one
- [x] Function typedefs
- [x] Recursion, with base case and recursive case
- [x] Scope: local functions, top-level functions, enclosing scope
- [x] **Debt owed from Collections** — fully repaid:
  - [x] `forEach` (taught as a tear-off, with a note on why the literal form is linted)
  - [x] `map`
  - [x] `where`
  - [x] `any` / `every`
  - [x] `firstWhere`, including `orElse`
  - [x] `reduce` / `fold`, and why `fold` can change type but `reduce` cannot
  - [x] `removeWhere`
  - [x] `List.generate`
  - [x] `sort` with a custom comparator
  - [x] `putIfAbsent` revisited, now that `() => 999` can be explained

### Then, in teaching order

- [ ] Null safety as a topic of its own — `?`, `!`, `late`, why `readLineSync()`
      returns `String?`. Currently only reachable sideways via null-aware operators.
- [ ] Object-oriented programming — classes, objects, fields, methods,
      constructors (default, named, `const`), getters and setters, `this`,
      `extends` / `super`, `abstract`, `implements`, mixins, `enum`, `static`,
      overriding `toString()`
- [ ] Exception handling — `try` / `on` / `catch` / `finally`, `throw`, custom
      exceptions. Note: the Type Conversions section already warns that
      `int.parse("abc")` throws a `FormatException` but never shows the fix.
- [ ] Asynchronous programming — `Future`, `async` / `await`, `Stream`

### Later, if the syllabus allows

- [ ] Generics
- [ ] Extension methods
- [ ] `typedef`
- [ ] Records and pattern matching, sealed classes

---

## 2. Repository

- [ ] `git init` — there is no repository in this folder yet
- [ ] First commit capturing the current state as a baseline
- [ ] Add a remote and push
- [ ] One commit per lesson from here on, so progress is visible in the history
- [ ] Consider a tag per class session, so students can check out the exact state
      the class was in on a given day

---

## 3. Structure

- [ ] `main()` is now about 1100 lines and will keep growing. Split into
      `bin/lessons/01_comments.dart`, `02_variables.dart` and so on, each with its
      own `main()`, so any single lesson can be run on its own.
- [ ] The two `stdin` prompts in the User Input topic sit in the middle of the
      file, so students must answer them before they can see any output from
      Collections onward. Splitting the lessons solves this; until then it is a
      known friction point.
- [ ] Decide whether the combined file should stay as an "everything" entry point
      after the split

---

## 4. Student-facing material

- [ ] Write exercises for each topic covered so far
- [ ] Put exercises in `test/` so students can run `dart test` and get an objective
      pass or fail on their work
- [x] Start using `lib/` — done via `lib/functions.dart`
- [ ] Replace the stock `calculate()` in `lib/dart_application_1.dart`

---

## 5. Housekeeping

- [ ] `CHANGELOG.md` is still the stock "Initial version" text
- [ ] The `path` package is declared in `pubspec.yaml` but never used — either use
      it as the external-library example in the Libraries topic, or remove it
- [ ] Review `analysis_options.yaml` and decide whether to enable stricter lints
      for the class

---

## Done

- [x] 2026-08-14 — Fixed content errors in the existing lessons: wrong `~/=` output
      comment, `readByteSync()` mislabel, `!` used before it was taught, stale
      hardcoded `DateTime` output, missing bitwise examples, missing `runtimeType`
      call, incomplete data-types list, redundant `dart:core` import
- [x] 2026-08-14 — Cleared all 13 `dart analyze` warnings; the project now reports
      **No issues found**
- [x] 2026-08-14 — Gave the Libraries topic a runnable example using `dart:math`
- [x] 2026-08-14 — Wrote the String class section
- [x] 2026-08-14 — Wrote Control Structures, split into Decision Making, Loop
      (Iteration) and Jump Statement
- [x] 2026-08-14 — Expanded Collections: List, Set and Map each with properties,
      mutation, search, sorting, nesting, spread, and reference-versus-copy
- [x] 2026-08-14 — Replaced the stock `README.md` with a real course README and
      progress checklist
- [x] 2026-08-14 — Split student exercises into `TASKS.md`; this planning file
      became `BACKLOG.md`
- [x] 2026-08-14 — Taught the spread operator properly in Collections (it was
      previously only used in passing): spreading into List, Set and Map, why the
      dots matter, last-spread-wins on duplicate Map keys, and the null-aware `...?`
- [x] 2026-08-14 — Added "Building collections with `if` and `for`" after Control
      Structures, so collection-if and collection-for come only once `if` and `for`
      have been taught
- [x] 2026-08-14 — Added exercise Set 10, spread tasks in Set 5, and challenge C6
- [x] 2026-08-14 — Wrote the Functions topic in full (11 sub-blocks) and created
      `lib/functions.dart`, which doubles as the custom-library example the
      Libraries topic promised. Repaid the Collections debt in full.
- [x] 2026-08-14 — Added exercise Set 11 (31 tasks) plus challenges C7 and C8
