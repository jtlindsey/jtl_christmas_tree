Christmas Tree
==============

Tis the Season! For this Dojo we will be building a small Ruby program
that will display a Christmas Tree.


```ruby
           *
          ***
         *****
        *******
       *********
      ***********
     *************
    ***************
   *****************
  *******************
 *********************
***********************
         xxxx
         xxxx
         xxxx
```

Notes
=====

For Christmas Tree to form properly we need the following:

* Height must be a minimum of 3
* Width must always be double the height

e.g. height = 12
     width = 24

To "draw" the tree we start off by finding the mid point. We know the width
is double the height, which gives us 24.  We simply divide 24 by 2 to get 12.
This will give us which position in the string to place our first *.

```ruby
# first row, star is mid point of width
"           *"
# second row, star is mid point plus 2 more stars
"          ***"
# third row, star is mid point plus 2 more stars
"         *****"
# fourth row, start is mid point plus 2 more stars
"        *******" #notice we decrease the blank spaces by 1
```

You can see a pattern forming. In the first row the star is the 12
position in the string after 11 blank spaces. Notice we decrease the blank
spaces by 1 and increase "*" by 2 until we reach the max height of 12.

To calculate the base we follow a similar format. The total amount of
blank spaces will be a third of the width + 1 and the total amount of "x" will
be a sixth of the width.

```ruby
# blank spaces = (24 / 3) + 1 = 9
# total x = 24 / 6 = 3

"         xxxx"
"         xxxx"
"         xxxx"
```
