#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#                   Intro to the Tidyverse by Colleen O'Briant
#                                Koan #02: Pipes
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# To conquer this challenge:
# 1. When facing an exercise, bravely fill in the blank and prepare for action.
# 2. Liberate the code from its comment chains (Ctrl+Shift+C on Windows,
#    Cmd+Shift+C on Macs).
# 3. Then place your cursor at the end of the last line of the chunk and command
#    it to run in the console (Ctrl/Cmd+Return).
# 4. Preserve your progress by saving (Ctrl/Cmd+S) and verifying your answers
#    (Ctrl/Cmd+Shift+T).
# 5. Once you've achieved 100% mastery, transform your work into an html
#    treasure (Ctrl/Cmd+Shift+K) and share your spoils on Canvas!

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Piping: %>%

# The pipe is *the most frequently used* function in the tidyverse. It lets
# you clearly express a sequence of functions without cluttering your programs
# with parentheses from function composition. The pipe is included in the
# tidyverse, so you'll need to run this line of code first in order to attach
# the tidyverse to your current R session:

library(tidyverse)

# Pipe hotkeys: Ctrl/Cmd+Shift+M ("M" for Magrittr pipe).

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#                              ----- Examples -----

# Here are two ways to do the same thing: finding the minimum of a vector.

# Without using a pipe:
min(c(6, 3, 2))
# Using a pipe just takes the data that comes before and applies the function
# that comes after:
c(6, 3, 2) %>% min()

# 1. Create a vector using `c()` and write two ways to find its sum, one without
# using a pipe and one with a pipe. (Warning: the tests for this koan look at the
# code you write, not just how the code evaluates. So you'll need to make sure
# that you're using my style especially with respect to spaces in order for the
# tests to pass. For example, if you look at the code above, just like in
# English, I put one space after a comma. I put a space before and after the
# pipe. I put no spaces inside `min()`. I recommend following my stylistic
# choices so that your tests will always pass and your code is aligned with the
# ways most other people use the tidyverse.)

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

# 3. Use pipes and a period to take the numeric vector 3:6, pipe this vector
# into the `prod()` function to compute the product of those numbers (should be
# 360), then pipe that result in the `to` argument of the function `seq()` to
# generate a vector that is the sequence from 0 to 360 increasing by 5 each step.

# To find out more about `seq()`:
?qelp::seq

#3@

# 3:6 %>%
#   __ %>%
#   __

#@3


#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Great work! You're one step closer to tidyverse enlightenment. Make sure to
# return to this topic to meditate on it later.
