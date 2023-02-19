DESTDIR  =
PREFIX   = /usr
MANPATH ?= $(PREFIX)/share/man
man1_dir = $(MANPATH)/man1
man7_dir = $(MANPATH)/man7

man1_targets = \
	background.1 \
	backtick.1 \
	case.1 \
	define.1 \
	dollarat.1 \
	elgetopt.1 \
	elgetpositionals.1 \
	elglob.1 \
	eltest.1 \
	emptyenv.1 \
	envfile.1 \
	exec.1 \
	execline.1 \
	execline-cd.1 \
	execline-shell.1 \
	execline-startup.1 \
	execline-umask.1 \
	execlineb.1 \
	exit.1 \
	export.1 \
	fdblock.1 \
	fdclose.1 \
	fdmove.1 \
	fdreserve.1 \
	fdswap.1 \
	forbacktickx.1 \
	foreground.1 \
	forstdin.1 \
	forx.1 \
	getcwd.1 \
	getpid.1 \
	heredoc.1 \
	homeof.1 \
	if.1 \
	ifelse.1 \
	ifte.1 \
	ifthenelse.1 \
	importas.1 \
	loopwhilex.1 \
	multidefine.1 \
	multisubstitute.1 \
	pipeline.1 \
	piperw.1 \
	posix-cd.1 \
	posix-umask.1 \
	redirfd.1 \
	runblock.1 \
	shift.1 \
	trap.1 \
	tryexec.1 \
	unexport.1 \
	wait.1 \
	withstdinas.1

man7_targets = \
	execline-block.7 \
	execline-components.7 \
	execline-exitcodes.7 \
	execline-grammar.7 \
	execline-pushenv.7 \
	execline-substitute.7 \
	execline-transform.7

all:
	@echo "Nothing to be done. Ready for 'make install'."

install:
	cd man1; install -D -m 0644 -t ${DESTDIR}${man1_dir} $(man1_targets)
	cd man7; install -D -m 0644 -t ${DESTDIR}${man7_dir} $(man7_targets)

uninstall:
	cd $(man1_dir); rm -f $(man1_targets)
	cd $(man7_dir); rm -f $(man7_targets)

.PHONY: all install uninstall
