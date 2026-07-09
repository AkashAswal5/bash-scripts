# Basic Function Creation: Write a function named add that takes two numbers as arguments, prints their sum, and returns an exit status of 0 if successful. 
# Exit Status Check: Create a script that checks if a file exists using a function. The function should return 0 if the file exists and 1 if it doesn't. Print "File found" or "File missing" based on the exit status.

# Conditional Logic: Write a function is_even that takes a number as an argument. It should return 0 if the number is even and 1 if it is odd. Use this function in a script to print "Even" or "Odd".
# Error Handling: Define a function safe_divide that takes two numbers. If the second number is zero, print an error message and return exit status 1. Otherwise, print the result of the division and return 0.
# Chaining Commands: Create a function install_package that attempts to install a package using apt-get install. The function should check the exit status; if the installation fails (non-zero), print "Installation failed" and return 1. If successful, return 0.

---
Propagating Exit Status: Write a function run_command_safe that accepts a command string as an argument. It should execute the command, capture its exit status, and if the status is non-zero, print "Command failed with status: [status]" to stderr and return that same status. If successful, return 0.
The local Keyword and Scope: Create a function counter that uses a local variable initialized to 0. Every time the function is called, it should increment this variable and print the current count. Challenge: Explain why the count resets on every call if local is used, and modify the function (removing local) to maintain the count across calls using a global variable.
Recursive Functions with Base Cases: Write a recursive function factorial that calculates the factorial of a number passed as $1. The function should call itself. Ensure it returns exit status 0 for valid input and exit status 1 if the input is negative or non-numeric (check before recursing).
Capturing Output vs. Exit Status: Define a function get_config that attempts to read a specific line from a config file. If the file exists and the line is found, it should echo the value and return 0. If not found, it should echo "default_value" and return 1. Write a script snippet that calls this function, captures the output into a variable, and separately checks the exit status to log whether the default was used.
Cleanup with trap and Functions: Create a function setup_temp that creates a temporary directory and stores its path in a global variable. Then, define a cleanup function that removes this directory. Use the trap command to ensure cleanup is automatically executed with the correct exit status of the main script when the script exits (whether normally or via error).

---

> Here are 5 **medium-level** Bash coding questions focusing on functions, exit statuses, argument validation, and array handling:

1.  **Argument Validation and Specific Exit Codes**: Write a function `create_user_dir` that takes a username as an argument. It must validate that:
    *   Exactly one argument is provided (return status **1** if not).
    *   The username contains only alphanumeric characters (return status **2** if invalid).
    *   A directory `/home/<username>` does not already exist (return status **3** if it exists).
    *   If all checks pass, create the directory and return status **0**.

2.  **Array Processing and Return Status**: Create a function `find_max` that accepts a list of numbers as arguments (not an array variable, but `$@`). The function should:
    *   Return exit status **1** if no arguments are provided.
    *   Return exit status **2** if any argument is not a valid integer.
    *   If valid, `echo` the largest number and return exit status **0**.

3.  **Command Chaining with Error Propagation**: Define a function `safe_update` that attempts to run `apt-get update` followed by `apt-get upgrade -y`.
    *   If the first command fails, print "Update failed", return its exit status, and do *not* run the second command.
    *   If the first succeeds but the second fails, print "Upgrade failed", return the second command's exit status.
    *   If both succeed, return **0**.

4.  **File Validation Function**: Write a function `validate_config` that takes a filepath as an argument. It should check:
    *   If the file exists (return **1** if missing).
    *   If the file is readable (return **2** if not readable).
    *   If the file is empty (return **3** if empty).
    *   If all checks pass, `echo` "Config valid" and return **0**.

5.  **Capturing Output vs. Status in Loops**: Create a function `check_hosts` that takes a list of hostnames (e.g., `google.com github.com`).
    *   Loop through each host and `ping -c 1` it.
    *   For each host, `echo` "Host <name> is UP" or "Host <name> is DOWN".
    *   The function should return **0** if *all* hosts are reachable, and **1** if *at least one* host is unreachable.


