#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#                   Intro to the Tidyverse by Colleen O'Briant
#                                Koan #02: Pipes
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Instructions: When you come to an exercise, fill in the blank, un-comment the
# line (Ctrl+Shift+C on Windows, Cmd+Shift+C on Macs), and execute the code in
# the console (Ctrl/Cmd+Return). If the chunk spans multiple lines, highlight
# the whole chunk or simply put your cursor at the end of the last line. Then
# save (Ctrl/Cmd+S) and test that your answers are correct (Ctrl/Cmd+Shift+T).
# When you finish the koan with 100%, knit it to html (Ctrl/Cmd+Shift+K) and
# submit the html file on Canvas!

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Piping: %>%

# The pipe is *the most frequently used* function in the tidyverse. It lets
# you clearly express a sequence of functions without cluttering your programs
# with parentheses from function composition. The pipe is included in the
# tidyverse, so you'll need to run this line of code first in order to attach
# the tidyverse to your current R session:

library(tidyverse)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#                              ----- Examples -----

# Here are two ways to do the same thing: finding the minimum of a vector.

# Without using a pipe:
min(c(6, 3, 2))
# Using a pipe:
c(6, 3, 2) %>% min()

# 1. Create a vector using c() and write two ways to find its sum, one without
# using a pipe and one with a pipe. (Warning: the tests for this koan look at the
# code you write, not just how the code evaluates. So you'll need to make sure
# that you're using my style especially with respect to spaces in order for the
# tests to pass. For example, if you look at the code above, just like in
# English, I put one space after a comma. I put a space before and after the
# pipe. I put no spaces inside `min()`. I recommend following my stylistic
# choices so that your tests will always pass and your code looks neat and
# professional.)

#1@

# Without using a pipe:
# __
# Using a pipe:
# __

#@1

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#                  ----- Applying a sequence of functions -----
#
# You can start to see how the pipe comes in handy when you string 2 or more
# functions together.

# Suppose you have a vector 'x', and you'd like to apply a function 'f' on it.
# But you're not done: you want to take the vector that's the result of 'f(x)'
# and apply another function 'g()' on that.

# So you run:
# g(f(x))

# An alternative way to do that is:
# x %>% f() %>% g()

# Or using multiple lines:
# x %>%
#   f() %>%
#   g()

# The code is evaluated from top to bottom, so that 'f(x)' is evaluated and then
# the result is piped into 'g()'. If you're using multiple lines, the pipe must
# go at the end of the line.

# With function composition, you have to read inside out: 'g(f(x))'.
# With pipes, you read left to right: 'x %>% f() %>% g()', or top to bottom when
# using multiple lines. Pipes oftentimes help us make our code more *clear and
# readable*, which is one of our biggest goals for writing good code.

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#                              ----- Examples -----

# Suppose I want to take the vector c(10, 2, 8), find the maximum which is 10,
# and then repeat that maximum three times. Two ways to do this:

rep(max(c(10, 2, 8)), 3)

c(10, 2, 8) %>%
  max() %>%
  rep(3)

# Note that the second way, using pipes, is a little more clear and readable,
# so in general we should prefer that way.

# 2. Use pipes to take a numeric vector, sort it from smallest to largest using
# the function `sort`, and then repeat that sorted vector twice using `rep`.

#2@

# __ %>%
#   __ %>%
#   __

#@2

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#                  ----- Using a period `.` with a pipe -----
#
# The last thing to know about pipes is this: the pipe takes the data that comes
# before it and inserts it into the FIRST ARGUMENT of the function that comes
# after. But what if instead, you wanted to use a pipe to insert the data into
# the SECOND argument of the function that comes after? You can use a period `.`
# to indicate where you want the data piped into. For example:
# Take the vector c(3, 9, 5) and find the minimum (3). If you want to repeat the
# vector 1:3 that number of times, this is how you'd do that:

c(3, 9, 5) %>%
  min() %>%
  rep(1:3, times = .)

# Notice I used a period `.` to indicate that I wanted the 3 to be piped into
# the second argument of rep(), not the first.

# 3. Use pipes and a period to take a numeric vector, find its sum (I'll call
# that sum s), and then generate the sequence going from 1 to s using `:`.

#3@

# __ %>%
#   __ %>%
#   __

#@3

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Great work! You're one step closer to tidyverse enlightenment. Make sure to
# return to this topic to meditate on it later.
