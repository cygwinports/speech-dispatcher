pushd /usr/share/speech-dispatcher/conf
for d in `find -mindepth 1 -type d`
do
	mkdir -p /etc/speech-dispatcher/$d
done
for f in `find -type f`
do
	if test ! -f /etc/speech-dispatcher/$f
	then
		cp $f /etc/speech-dispatcher/$f
	fi
done
popd
