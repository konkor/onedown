#application data icons
iconsdir=$(datadir)/onedown/data/icons
icons_DATA= \
    io.github.konkor.onedown.svg \
    open-menu-symbolic.svg \
    $(NULL)

#system application icons
icondir=$(datadir)/icons
nobase_icon_DATA = hicolor/scalable/apps/io.github.konkor.onedown.svg \
    hicolor/32x32/apps/io.github.konkor.onedown.png \
    $(NULL)

#the application icon
pixmapsdir=$(datadir)/pixmaps
pixmaps_DATA= \
    hicolor/scalable/apps/io.github.konkor.onedown.svg

EXTRA_DIST = \
    $(icons_DATA) \
    $(pixmaps_DATA) \
    $(nobase_icon_DATA)

gtk_update_icon_cache = gtk-update-icon-cache -f -t $(datadir)/icons/hicolor

install-data-hook: update-icon-cache

uninstall-hook: update-icon-cache

update-icon-cache:
	@-if test -z "$(DESTDIR)"; then                                     \
		echo "Updating Gtk icon cache.";                                  \
		$(gtk_update_icon_cache);                                         \
	else                                                                \
		echo "*** Icon cache not updated.  After (un)install, run this:"; \
		echo "***   $(gtk_update_icon_cache)";                            \
	fi
