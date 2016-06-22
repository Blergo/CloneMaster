package:
	rm -rf CloneMaster-deb CloneMaster_*.deb
	git archive --prefix=CloneMaster-deb/ HEAD | tar -xf -
	cp -rf CloneMaster-deb/etc/skel CloneMaster-deb/root
	rm -rf CloneMaster-deb/etc/skel
	rm -rf CloneMaster-deb/etc/default
	rm -rf CloneMaster-deb/etc/rcS
	dpkg-deb -b CloneMaster-deb
	dpkg-name CloneMaster-deb.deb
	rm -rf CloneMaster-deb
