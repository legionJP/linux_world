#-----------------------------
#1. regex (Regular Expressions :
#-----------------------------

# a powerful tool to do pattern based selection. 
# It uses special notation similar to those we've encountered already such as the * wildcard.
# These are almost universal with any programming language.

#-----------------------------------------------------------------

stringfield="sally sells seashells 
by the seashore"   #there should be no spaces around the = operator when declaring a variable in shell scripting.
# you can then access the value of the string variable
echo $stringfield

#=================================
# 1. Beginning of a line with anchor tag- '^'
#++++++++++++++++++++++++++++++++++
#Using the regex in stringfield

^by 
#this would match "by the seashore"

#=============================
# 2. End of a line with '$'     -
#+++++++++++++++++++++++++++++

seashore$
#would match the line "by the seashore"

#=======================================
# 3. Matching any single character with- '.'   
#+++++++++++++++++++++++++++++++++++++++

b.
#would match by 

================================
#  4. Bracket notation with []
#+++++++++++++++++++++++++++++++
# can be a little tricky, use to match a pattern 
#brackets allow us to specify characters found within the bracket.

d[iou]g 
#this wooul match : dig, dog, dug

#4.1 the anchor tag^ when used in a bracket mans anything except the 
#character within bracket 

d[^i]g 
# would match dog but not dig

#4.2) Brackets can also use ranges to increase the amount of characters you want to use.

d[a-c]g 
#will match patterns like dag, dbg, and dcg

#4.3) these brackets are case sensitive so can be use as:

d[A-C]g 
#will match dAg, dBg and dCg but not dag, dbg and dcg
#===================================================================#
#=======================Text Editors ===============================#

#-----------
