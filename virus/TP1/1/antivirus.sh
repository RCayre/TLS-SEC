hash="9803a8f83fc241480060a73fde0692cf"
for i in *.sh; do
	if test "./$i" != "$0" ; then
		if test $(tail -n 8 $i |md5sum|head -c 32) == "$hash"; then
			head -n -9 $i > "/tmp/$i"
			mv "/tmp/$i" "./$i"
		fi
	fi
done

