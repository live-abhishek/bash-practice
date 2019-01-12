# print 1st word
cat using_awk.txt | awk '{print $1}'
echo
# print 2nd word
cat using_awk.txt | awk '{print $2}'
echo
# print 3rd word
cat using_awk.txt | awk '{print $3}'
echo
# 0th index holds the entire string
cat using_awk.txt | awk '{print $0}'
echo
# if any line contains a@test.com print the entire line
cat using_awk.txt | awk '$3 == "a@test.com" {print $0}'
echo
# field separator can be specified using -F
cat using_awk.txt | awk -F ':' '{print $2}'

