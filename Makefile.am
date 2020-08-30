## Process this file with automake to produce Makefile.in

APP_ID = onedown

DIST_SUBDIRS = data

SUBDIRS = data

jsdir = $(datadir)/$(APP_ID)
js_DATA = \
    README.md \
    konkor.onedown.policy \
    LICENSE

js_SCRIPTS = onedown \
    shutdown-onedown

bin_SCRIPTS = onedown

dist_js_DATA = $(js_SCRIPTS)

dist_doc_DATA = \
	README.md

policydir=/usr/share/polkit-1/actions
policy_DATA = konkor.onedown.policy

helperdir=/usr/bin
helper_SCRIPTS = shutdown-onedown

EXTRA_DIST = $(js_DATA)

uninstall-local:
	-rm -r $(jsdir)

