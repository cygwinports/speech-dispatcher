pushd /usr/share/speech-dispatcher/conf
for f in `find -type f`
do
	if test -f /etc/speech-dispatcher/$f && cmp -s $f /etc/speech-dispatcher/$f
	then
		rm -f /etc/speech-dispatcher/$f
	fi
done
for d in `find -mindepth 1 -type d`
do
	rmdir --ignore-fail-on-non-empty /etc/speech-dispatcher/$d
done
rmdir --ignore-fail-on-non-empty /etc/speech-dispatcher
popd
