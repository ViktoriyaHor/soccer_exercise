# soccer_exercise

Input/output
The input and output will be text. Your solution should parse the provided sample input file via stdin (pipe or redirect) or by parsing a file passed by name on the command line. Your solution should output the correct result via stdout to the console.

The input contains results of games, one per line. See sample input for details. The output should be ordered from most to least points, following the format specified in expected output.

You can expect that the input will be well-formed. There is no need to add special handling for malformed input files.

The rules
In this league, a draw (tie) is worth 1 point and a win is worth 3 points. A loss is worth 0 points. If two or more teams have the same number of points, they should have the same rank and be printed in alphabetical order (as in the tie for 3rd place in the sample data).

Guidelines
This should be implemented in ruby.

Your solution should be able to be run from the command line. Please include appropriate scripts and instructions for running your application and your tests.

If you use other libraries installed by rubygems/bundler it is not necessary to commit the installed packages.

Write automated tests.

Appreciated well factored, object-oriented or functional designs.

Input sample
Lions 3, Snakes 3
Tarantulas 1, FC Awesome 0
Lions 1, FC Awesome 1
Tarantulas 3, Snakes 1
Lions 4, Grouches 0

Expected output
Tarantulas, 6 pts
Lions, 5 pts
FC Awesome, 1 pt
Snakes, 1 pt
Grouches, 0 pts
