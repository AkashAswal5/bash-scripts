Here are 10 easy and 10 medium Bash programming problems categorized by topic, designed to practice file handling, loops, conditionals, and functions.

##  Easy Problems (Fundamentals)

1.  **File Existence Checker**: Write a script that takes a filename as an argument. If the file exists, print "Found"; otherwise, print "Missing" and exit with status 1.
2.  **Even or Odd**: Take a number as input and use an `if` statement to print whether it is "Even" or "Odd".
3.  **Simple Counter**: Use a `for` loop to print numbers from 1 to 10.
4.  **File Extension Filter**: List all files in the current directory that end with `.txt` using a `for` loop and a wildcard.
5.  **Basic Calculator**: Create a script that takes two numbers and an operator (`+`, `-`, `*`, `/`) as arguments and prints the result using a `case` statement.
6.  **Word Count**: Take a filename as input and print the number of lines, words, and characters in it (use `wc`).
7.  **Directory Creator**: Ask the user for a directory name. If it doesn't exist (`-d`), create it; otherwise, print "Directory already exists".
8.  **Reverse Countdown**: Use a `while` loop to count down from 5 to 1 and then print "Blast off!".
9.  **Permission Checker**: Check if a specific file passed as an argument is readable (`-r`). Print "Readable" or "Not Readable".
10. **Greeting Script**: Ask the user for their name. If the name is empty, print "Hello Guest"; otherwise, print "Hello [Name]".

##  Medium Problems (Logic & Automation)

1.  **Log File Analyzer**: Read a log file line-by-line using a `while` loop. Count and print how many lines contain the word "ERROR".
2.  **Backup Script**: Create a script that takes a filename, checks if it exists, and creates a backup copy with the current date appended to the name (e.g., `file.txt.2026-07-12`).
3.  **Multiplication Table**: Ask the user for a number and use nested `for` loops to print its multiplication table from 1 to 10.
4.  **Find Largest File**: Iterate through all files in a directory. Identify and print the name of the file with the largest size (use `-s` and arithmetic comparison).
5.  **User Input Validation**: Write a function that asks for a password. Loop until the user enters a password longer than 8 characters. Print "Weak" or "Strong" accordingly.
6.  **Batch Renamer**: Take a directory path as an argument. Rename all `.jpeg` files in that directory to `.jpg` using a loop.
7.  **System Health Check**: Create a script that checks: (a) if disk usage is over 80%, (b) if a specific process is running, and (c) if a critical config file exists. Report the status of each.
8.  **Palindrome Checker**: Take a string as input. Use logic to reverse it and check if it is a palindrome (reads the same forwards and backwards).
9.  **Prime Number Finder**: Ask for a number `N`. Use a loop to check and print all prime numbers between 1 and `N`.
10. **CSV Column Extractor**: Read a CSV file. Ask the user for a column number. Print only the data from that specific column for every row (use `cut` or `awk` inside a loop).




