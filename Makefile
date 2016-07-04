package:
	rm -rf CloneMaster-deb CloneMaster_*.deb
	git archive --prefix=CloneMaster-deb/ HEAD | tar -xf -
	cp -rf CloneMaster-deb/etc/skel CloneMaster-deb/root
	rm -rf CloneMaster-deb/etc/skel
	chmod 655 CloneMaster-deb/sbin/clonemaster
	dpkg-deb -b CloneMaster-deb
	dpkg-name CloneMaster-deb.deb
	rm -rf CloneMaster-deb
