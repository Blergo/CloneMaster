package:
	rm -rf redobackup-deb redobackup_*.deb
	git archive --prefix=redobackup-deb/ HEAD | tar -xf -
	cp -rf redobackup-deb/etc/skel redobackup-deb/root
	rm -rf redobackup-deb/etc/skel
	rm -rf redobackup-deb/etc/default
	rm -rf redobackup-deb/etc/rcS
	rm -rf redobackup-deb/etc/rc.local
	dpkg-deb -b redobackup-deb
	dpkg-name redobackup-deb.deb
	rm -rf redobackup-deb
