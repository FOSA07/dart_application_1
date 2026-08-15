# How to Submit Your Challenge Tasks on GitHub

This guide walks you through getting your challenge work from your computer into
the class repository. If you have never used Git or GitHub before, start at the
top and follow every step in order. Nothing here assumes you know anything already.

Take your time. It feels strange the first two or three times and then becomes
routine.

**Our repository:** <https://github.com/FOSA07/dart_application_1>

---

## Contents

1. [What you need before you start](#1-what-you-need-before-you-start)
2. [Words you will keep hearing](#2-words-you-will-keep-hearing)
3. [One-time setup](#3-one-time-setup-do-this-once-only)
4. [The four golden rules](#4-the-four-golden-rules)
5. [Naming your branch and your file](#5-naming-your-branch-and-your-file)
6. [Submitting a challenge task, step by step](#6-submitting-a-challenge-task-step-by-step)
7. [Getting the newest lessons](#7-getting-the-newest-lessons)
8. [Starting your next task](#8-starting-your-next-task)
9. [When something goes wrong](#9-when-something-goes-wrong)
10. [Cheat sheet](#10-cheat-sheet)
11. [Checklist before you submit](#11-checklist-before-you-submit)

---

## 1. What you need before you start

- **Git installed.** Check by running `git --version` in your terminal. If you get
  a version number, you have it. If you get "command not found", install it from
  <https://git-scm.com/downloads>.
- **A GitHub account.** Sign up free at <https://github.com>.
- **Your username sent to your teacher**, so you can be added to the repository.
  Until you are added, you can read the repository but not push to it.
- **The Dart SDK**, which you already have from class. Check with `dart --version`.

---

## 2. Words you will keep hearing

Read this once. You do not need to memorise it — come back when a word confuses you.

| Word | What it actually means |
| --- | --- |
| **Repository** (repo) | The project folder, with its full history. Ours is `dart_application_1`. |
| **Remote** | The copy that lives on GitHub, shared by everybody. Ours is nicknamed `origin`. |
| **Clone** | Download the whole repository onto your computer. You do this once. |
| **`main`** | The official branch. It holds the lessons. Everyone shares it. |
| **Branch** | Your own private copy of the project where you can work without disturbing anyone. |
| **Commit** | A save point, with a message describing what you did. |
| **Stage** (`git add`) | Choosing which files go into your next commit. |
| **Push** | Send your commits from your computer up to GitHub. |
| **Pull** | Bring other people's changes from GitHub down to your computer. |
| **Pull request** (PR) | A request asking your teacher to merge your branch into `main`. |
| **Merge** | Combining one branch into another. |
| **Conflict** | Git cannot decide between two versions of the same line. You want to avoid these. |

A useful picture: `main` is the class notice board. Your branch is your own
notebook. You write in your notebook, then ask for your page to be pinned to the
board. You never scribble on the board directly.

---

## 3. One-time setup (do this once only)

### Step 1 — Tell Git who you are

Git stamps your name on every commit. Set it once, using your real name and the
email address on your GitHub account:

```bash
git config --global user.name "Ada Lovelace"
git config --global user.email "ada@example.com"
```

### Step 2 — Set how pulling behaves

This avoids a confusing message later on. Run it once:

```bash
git config --global pull.rebase false
```

### Step 3 — Clone the repository

Move to wherever you keep your work, then:

```bash
git clone https://github.com/FOSA07/dart_application_1.git
cd dart_application_1
```

You now have the whole project, including all the lessons.

### Step 4 — Install the project dependencies

```bash
dart pub get
```

### Step 5 — Check it works

```bash
dart run bin/dart_application_1.dart
```

You should see the lessons run. It will pause twice and ask you for input — type
anything and press Enter. If that works, your setup is complete.

---

## 4. The four golden rules

These four rules exist to stop you losing work and to stop conflicts. Read them
twice.

### Rule 1 — Never work directly on `main`

`main` belongs to everybody. Always create your own branch first.

`main` is **protected** on GitHub, so if you forget, your push will simply be
refused with a `GH006: Protected branch update failed` message. Nothing breaks and
nothing is lost — see section 9.8 for how to recover. Think of it as a safety net,
not a telling-off.

If you are ever unsure which branch you are on, run:

```bash
git status
```

The first line tells you. It should **never** say `On branch main` while you are
doing challenge work.

### Rule 2 — Never edit a file that came from `main`

This is the most important rule of all.

Do **not** change any of these:

- `bin/dart_application_1.dart`
- `lib/functions.dart`
- `README.md`, `TASKS.md`, `BACKLOG.md`, this guide
- `pubspec.yaml`, `analysis_options.yaml`
- any file another student created

**Why?** Because your teacher keeps adding lessons to those files. If you have
also changed them, Git cannot tell whose version is correct when you next pull.
That is a **merge conflict**, and sorting one out is painful for a beginner.

If you follow this rule, you will never get a conflict. Not once.

**"But I want to experiment with the lesson code!"** Good — you should. Copy the
part you want to play with into **your own file** and experiment there. Never
change the original.

### Rule 3 — Only add your own file

When saving your work, name your file explicitly:

```bash
git add bin/c7_ada_lovelace.dart
```

Do **not** use `git add .` — that sweeps up every change in the folder, including
any accidental edit to a lesson file you did not mean to make.

### Rule 4 — Always update `main` before starting something new

New lessons arrive regularly. Before each new task, refresh your copy. Section 7
shows how.

---

## 5. Naming your branch and your file

We use one branch and one file per challenge task.

Throughout this guide the example student is **Ada Lovelace** working on
**challenge C7**. Replace those with your own name and your own task.

### Your branch name

Pattern: `challenge-<task>-<your-first-name>-<your-last-name>`

All lowercase, words joined with **hyphens**:

```
challenge-c7-ada-lovelace
challenge-c1-bola-adeyemi
challenge-c8-chidi-okoro
```

### Your file name

Pattern: `bin/<task>_<your_first_name>_<your_last_name>.dart`

All lowercase, words joined with **underscores**:

```
bin/c7_ada_lovelace.dart
bin/c1_bola_adeyemi.dart
bin/c8_chidi_okoro.dart
```

### Watch out — hyphens and underscores are not interchangeable

| Thing | Separator | Example |
| --- | --- | --- |
| Branch name | hyphen `-` | `challenge-c7-ada-lovelace` |
| Dart file name | underscore `_` | `c7_ada_lovelace.dart` |

This is not us being fussy. Dart **requires** file names to be lowercase with
underscores. If you name your file `C7-Ada-Lovelace.dart`, `dart analyze` will
report:

```
info - The file name 'C7-Ada-Lovelace.dart' isn't a lower_case_with_underscores
identifier. Try changing the name to follow the lower_case_with_underscores style.
```

### What goes inside your file

Your file needs its own `main()` function, because it is a complete program on its
own. Start from this template:

```dart
// Challenge C7 - Report card rebuilt with functions
// Student: Ada Lovelace
// Branch:  challenge-c7-ada-lovelace

void main() {
  print("C7 - Ada Lovelace");
  // your answer goes here
}

// Any functions you write go below main().
```

Run it with:

```bash
dart run bin/c7_ada_lovelace.dart
```

Because your file has its own `main()`, it runs completely separately from the
lessons. Nothing you write can break anyone else's work.

---

## 6. Submitting a challenge task, step by step

Follow these nine steps every single time. They are always the same.

### Step 1 — Go to `main` and get the latest version

```bash
git checkout main
git pull origin main
```

You are making sure you start from the newest lessons.

### Step 2 — Create your branch and switch to it

```bash
git checkout -b challenge-c7-ada-lovelace
```

`-b` means "create this branch, then move onto it". Confirm it worked:

```bash
git status
```

It should now say `On branch challenge-c7-ada-lovelace`.

### Step 3 — Create your file

Create `bin/c7_ada_lovelace.dart` and paste in the template from section 5.

### Step 4 — Write your answer

Do the task. Save often. Run it as often as you like:

```bash
dart run bin/c7_ada_lovelace.dart
```

### Step 5 — Check your code is clean

```bash
dart analyze
```

This must print **No issues found**.

This matters more than you might think. `dart analyze` checks **every** file in
the project, so once your file is merged, a mistake in it shows up as an error for
the whole class. Fix everything before you push.

Also tidy your layout:

```bash
dart format bin/c7_ada_lovelace.dart
```

### Step 6 — Stage your file

```bash
git add bin/c7_ada_lovelace.dart
```

Name your file explicitly. Now check what you are about to commit:

```bash
git status
```

You should see **only your file** listed in green. If any lesson file appears
there, stop and read section 9.4 before going any further.

### Step 7 — Commit

```bash
git commit -m "C7: report card rebuilt with functions - Ada Lovelace"
```

Write a message that says what you did. `"update"` and `"changes"` tell nobody
anything.

### Step 8 — Push to GitHub

The first time you push a new branch, use `-u`:

```bash
git push -u origin challenge-c7-ada-lovelace
```

For any later pushes on the **same** branch, this is enough:

```bash
git push
```

### Step 9 — Open a pull request

1. Go to <https://github.com/FOSA07/dart_application_1>.
2. You should see a yellow banner naming your branch, with a green
   **Compare & pull request** button. Click it.
   - No banner? Click the **Pull requests** tab, then **New pull request**, and
     choose your branch.
3. Check the top of the page reads `base: main` ← `compare: challenge-c7-ada-lovelace`.
4. Give it a clear title, for example `C7 - Ada Lovelace`.
5. In the description, say anything your teacher should know — what you found
   hard, or a part you are unsure about.
6. Click **Create pull request**.

You are done. Your teacher will review it and either merge it or ask for changes.

Every pull request needs your teacher's approval before it can be merged, so there
will always be a short wait. That is normal — it is the review, not a problem with
your work.

### If your teacher asks for changes

Stay on the same branch, fix the code, then:

```bash
git add bin/c7_ada_lovelace.dart
git commit -m "C7: fix average calculation for an empty list"
git push
```

The pull request updates by itself. Do not open a new one.

---

## 7. Getting the newest lessons

When your teacher adds a lesson, it goes into `main` on GitHub. Your computer does
not know about it until you ask.

```bash
git checkout main
git pull origin main
```

That is all. Because you never edited the lesson files (Rule 2), this will always
work smoothly.

Do this at the start of every class, and before starting any new task.

### Bringing new lessons into a task you have already started

Usually you do not need to — finish your task, get it merged, then update `main`.

But if a task is taking you several days and you want the newest lessons in it:

```bash
git checkout challenge-c7-ada-lovelace
git merge main
```

If Git says `Already up to date` or reports a successful merge, you are fine. If
it mentions a **conflict**, stop and read section 9.5.

---

## 8. Starting your next task

Every new task starts from a fresh, up-to-date `main` — **never** from your last
task's branch. Otherwise your old work gets dragged into the new pull request.

```bash
git checkout main
git pull origin main
git checkout -b challenge-c8-ada-lovelace
```

Then follow section 6 from Step 3 again.

### About your practice exercises

Sets 1 to 11 in `TASKS.md` are practice, and they stay on your own computer in
your `exercises/` folder. That folder is deliberately ignored by Git, so it will
never be uploaded and never cause a conflict.

Only the **challenge tasks** (C1, C2, C3 …) go into `bin/` and get submitted.

---

## 9. When something goes wrong

Do not panic, and do not delete the folder and start again. Almost everything is
recoverable. Find your problem below.

### 9.1 `Author identity unknown`

You skipped setup step 1:

```bash
git config --global user.name "Ada Lovelace"
git config --global user.email "ada@example.com"
```

### 9.2 `fatal: The current branch has no upstream branch`

You used `git push` on a brand-new branch. Use the longer form the first time:

```bash
git push -u origin challenge-c7-ada-lovelace
```

### 9.3 `Updates were rejected because the remote contains work you do not have`

Someone pushed to that branch after you last pulled. Bring their work down first,
then push again:

```bash
git pull
git push
```

### 9.4 I edited a lesson file by mistake

You will spot this when `git status` lists a file you did not mean to touch.

To throw away your accidental changes to that file:

```bash
git restore bin/dart_application_1.dart
```

Replace the path with whichever file it is. This only discards changes to that
file — your own file is untouched.

> ⚠️ This permanently deletes your changes to that file. That is what you want
> here, but be sure you are naming the right file.

### 9.5 I have a merge conflict

You will see something like:

```
CONFLICT (content): Merge conflict in bin/dart_application_1.dart
```

and inside the file, markers like `<<<<<<<`, `=======` and `>>>>>>>`.

**Ask your teacher before touching it.** Guessing usually makes it worse.

If you want to back out and go back to how things were before the merge:

```bash
git merge --abort
```

This almost always means Rule 2 was broken somewhere. Once you find and undo that
edit, it will not happen again.

### 9.6 I did my work on `main` by mistake

If you have **committed** it on `main`, your work is safe. Move it onto a proper
branch:

```bash
git branch challenge-c7-ada-lovelace   # bookmark your work under a new name
git reset --hard origin/main           # put main back to how GitHub has it
git checkout challenge-c7-ada-lovelace # move onto your branch, work intact
```

> ⚠️ `git reset --hard` throws away anything **not committed**. Make sure
> `git status` shows a clean tree before running it, and if you are at all unsure,
> ask your teacher first.

If you have **not** committed yet, it is simpler — just create the branch and your
changes come with you:

```bash
git checkout -b challenge-c7-ada-lovelace
```

### 9.7 I do not know which branch I am on

```bash
git status
```

The first line says. To list every branch you have, with a `*` next to the current
one:

```bash
git branch
```

To move to another one:

```bash
git checkout challenge-c7-ada-lovelace
```

### 9.8 `GH006: Protected branch update failed`

The full message looks something like:

```
remote: error: GH006: Protected branch update failed for refs/heads/main.
remote: error: Changes must be made through a pull request.
! [remote rejected] main -> main (protected branch hook declined)
```

This means you tried to push straight to `main`. GitHub is set up to refuse that,
on purpose — it is Rule 1 being enforced automatically, so a mistake here cannot
damage the class repository.

**This is not a disaster.** Your work is safe on your computer. You just need to
move it onto a branch of your own. Follow section 9.6, then push that branch
instead.

### 9.9 `dart analyze` reports errors in someone else's file

That is not your problem to fix, and you must not edit their file. Tell your
teacher.

### 9.10 I want to see what I have changed

```bash
git status   # which files changed
git diff     # what changed inside them
```

---

## 10. Cheat sheet

| I want to… | Command |
| --- | --- |
| See where I am | `git status` |
| List my branches | `git branch` |
| Go to main | `git checkout main` |
| Get the newest lessons | `git pull origin main` |
| Start a new task | `git checkout -b challenge-c7-ada-lovelace` |
| Switch branches | `git checkout branch-name` |
| Run my file | `dart run bin/c7_ada_lovelace.dart` |
| Check my code | `dart analyze` |
| Tidy my layout | `dart format bin/c7_ada_lovelace.dart` |
| Stage my file | `git add bin/c7_ada_lovelace.dart` |
| Save a checkpoint | `git commit -m "a clear message"` |
| Upload a new branch | `git push -u origin challenge-c7-ada-lovelace` |
| Upload later changes | `git push` |
| Undo my edit to a lesson file | `git restore path/to/file.dart` |
| See what I changed | `git diff` |

---

## 11. Checklist before you submit

Go through this before opening your pull request:

- [ ] I am on my own branch, not `main` (`git status` confirms it)
- [ ] My branch is named `challenge-<task>-<firstname>-<lastname>`
- [ ] My file is in `bin/` and named `<task>_<firstname>_<lastname>.dart`, all
      lowercase with underscores
- [ ] My file has its own `main()` function
- [ ] My name and the task number are in a comment at the top
- [ ] The program runs: `dart run bin/my_file.dart`
- [ ] `dart analyze` prints **No issues found**
- [ ] I ran `dart format` on my file
- [ ] `git status` shows **only my own file** — no lesson files
- [ ] My commit message describes what I actually did
- [ ] I pushed, and my pull request targets `main`

---

Still stuck? Bring the exact error message to class. Copy the whole thing —
"it didn't work" is impossible to help with, but the error text usually points
straight at the answer.
