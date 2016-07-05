all: unpack

unpack:
	wget http://svn.openstreetmap.org/applications/utils/downloading/JTileDownloader/trunk/release/jTileDownloader-0-6-1.zip
	unzip jTileDownloader-0-6-1.zip

install:
	install -m755 jTileDownloader/jTileDownloader-0-6-1.jar $(DESTDIR)
	install -m755 wrapper $(DESTDIR)
	install appConfig.xml $(DESTDIR)
	install gtkrc $(DESTDIR)
	install jTileDownloader/README.txt $(DESTDIR)
	install jTileDownloader/COPYING.txt $(DESTDIR)
