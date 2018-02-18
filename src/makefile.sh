set -x
member1=alexandre
member2=jerome
CFLAGS="-Isrc/$member1/ -Isrc/$member2/"

gcc -c $member1/${member1}.c -o ${member1}.o
gcc -c $member2/${member2}.c -o ${member2}.o

gcc $CFLAGS main.c ${member1}.o ${member2}.o -o main
