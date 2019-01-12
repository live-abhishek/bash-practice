# create a copy of emails.txt
cp emails.txt using_sed.txt

# replace fisrt character with word 'test' non-destructive
# s stands for substitution
sed s/^[a-z]/test/ using_sed.txt
# add at the end word .com non-desctructive
sed s/$/\.com/ using_sed.txt
# change and replace in the file
# -i stands for in-place
# notice . is escaped so that it can be identified as normal character
# and not as special regex character
sed -i s/$/\.com/ using_sed.txt
# -r stands for extended regular expression
# notice + is escaped so that it can inferred as special regex character
# and not as normal character
# clears out all the line
sed -r s/^[a-z]@[a-z]\+\.com// using_sed.txt

# we can capture a regex group and use back-reference
# strips the .com from each line and writes to the file
sed -ri s/^\([a-z]@[a-z]\+\).com/\\1/ using_sed.txt

