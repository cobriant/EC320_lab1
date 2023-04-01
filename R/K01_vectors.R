#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#                   Intro to the Tidyverse by Colleen O'Briant
#                                Koan #01: Vectors
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Embark on the journey of vectors, where the heart of data organization thrives.
# As you master the art of creating and manipulating vectors, the foundations of
# R shall reveal themselves. With each step, your understanding of these
# versatile data structures shall deepen, empowering you to harness their
# potential in data analysis.

# But first! A word on hotkeys:
# I'm a big fan of learning to use hotkeys: I think it makes programming easier
# and more natural. Hotkeys also help you remember to do things like save your
# work often and test your code regularly. Here are a few of the ones I use all
# the time. Practice them until they become muscle memory!
#
# Description                     Windows/Linux    Mac           Point and Click
# Save your current document      Ctrl+S           Cmd+S         File > Save
# Run current line or selection   Ctrl+Enter       Cmd+Return    Run
# Comment/Uncomment lines         Ctrl+Shift+C     Cmd+Shift+C   Code > Comment/uncomment
# Move cursor to the beginning of a line           Ctrl+A
# Move cursor to the end of a line                 Ctrl+E
# Abort a command                                  Ctrl+C or Esc

# Here's a new hotkey to add: to test your answers to these koans, reassign
# Ctrl/Cmd+Shift+T to be "Run a Test File". Here's how to do that:
# Tools > Modify Keyboard Shortcuts > Filter for Run a Test File
# Click under Shortcut and hit Ctrl+Shift+T on Windows or Cmd+Shift+T on Macs.
# Then hit Apply. To test that it worked, hit Ctrl/Cmd+Shift+T right now.
# In your console, it should say ══ Testing test-K01_vectors.R ═════════════════
# [ FAIL 0 | WARN 0 | SKIP 10 | PASS 0 ], which indicates that you've failed 0
# questions, there are no warnings, 10 questions were skipped (because they're
# incomplete, and you've passed 0 so far).
# Alternatively, run devtools:::test_active_file()

# Here's one more keyboard shortcut to add: to knit this document to html so
# you can turn it in on Canvas when you're finished, reassign Compile Notebook
# to be Ctrl/Cmd+Shift+K. Use the same process as I outlined in the previous
# paragraph with Modify Keyboard Shortcuts. To test it worked, hit Ctrl/Cmd+Shift+K
# and notice that an html document was produced and saved in the same folder
# as this koan. If there are errors in your R script, it will fail to knit to
# html, and you should go through your code line by line until you find the
# error.

# To conquer this challenge:
# 1. When facing an exercise, bravely fill in the blank and prepare for action.
# 2. Liberate the code from its comment chains (Ctrl+Shift+C on Windows,
#    Cmd+Shift+C on Macs).
# 3. Then place your cursor at the end of the last line of the chunk and command
#.   it to run in the console (Ctrl/Cmd+Return).
# 4. Preserve your progress by saving (Ctrl/Cmd+S) and verifying your answers
#.   (Ctrl/Cmd+Shift+T).
# 5. Once you've achieved 100% mastery, transform your work into an html
#    treasure (Ctrl/Cmd+Shift+K) and share your spoils on Canvas!

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#
#                     -----  Create a vector with 'c()' -----
#
# In R, data is held in vectors. An easy way to construct a vector is to use the
# function 'c()'. 'c()' is short for "combine": you can combine elements into a
# vector.

# Read the qelp docs on 'c()':
?qelp::c

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# 1. Make the first element of this numeric vector '6'. Remember to always
# un-comment the line of code (Ctrl/Cmd+Shift+C), execute it (Ctrl/Cmd+Return),
# and then test this file to make sure you passed (Ctrl/Cmd+Shift+T).

#01@

# c(__, 4, 5, 2, 3)

#@01

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# 2. Make the third element of this character vector 'economics'.

#2@

# c("apple", "banana", __)

#@2

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#                      -----  Calculations on Vectors -----
#
# You can do all kinds of calculations on vectors. If you fill in the blank
# correctly, when you run these lines, R will print 'TRUE'.

# 3. Add these two numeric vectors. You should read the `==` operator as "is equal to".

#3@

# c(6, 3, 2) + c(3, 2, 1) == c(__, __, __)

#@3


# 4. Find the minimum of this vector.
?qelp::min

#4@

# min(c(6, 3, 2)) == __

#@4


# 5. Find the sum of all elements of this vector.
?qelp::sum

#5@

# sum(c(6, 3, 2)) == __

#@5


# 6. Multiply a scalar and a vector.

#6@

# 100 * c(6, 3, 2) == c(__, __, __)

#@6


# 7. Divide two vectors.

#7@

# c(6, 3, 2) / c(2, 3, 1) == c(__, __, __)

#@7

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#                              -----  Length -----

# Vectors have a property called *length*, which is the number of elements in
# that vector. The length of the vector c("apple", "banana", "economics") is 3.

length(c("apple", "banana", "economics")) == 3

# 8. Create a vector of length 5. It can be a character vector or
# a numeric vector.

#8@

# length(__) == 5

#@8

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#                    -----  More Ways to Create Vectors -----
#
# 9. If you want to create a vector of consecutive numbers like 'c(1, 2, 3)',
# the shorthand is '1:3'.

c(1, 2, 3) == 1:3

#9@

# c(2, 3, 4) == __:__

#@9


# To create a vector with elements that are repeated, use 'rep':
?qelp::rep

# This repeats 1 five times, 2 five times, and then 3 five times.
rep(1:3, each = 5)

# To create a vector that does random sampling, use 'sample':
?qelp::sample

# This randomly draws 0's or 1's to create a random vector of length 10.
# What is the "replace = TRUE" part about? After each element is sampled, it
# needs to be put back into the probability urn so there's a chance it can be
# sampled again.
sample(c(0, 1), size = 10, replace = TRUE)

# 10. Create a random character vector that draws "heads" or "tails".

#10@

# sample(__, size = 5, replace = TRUE)

#@10

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Great work! You're one step closer to tidyverse enlightenment. Make sure to
# return to this topic to meditate on it later.

# If you're ready, you can move on to the next koan: Pipes.
