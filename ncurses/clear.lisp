(in-package :de.anvi.ncurses)

;;; clear
;;; clear all or part of a curses window
;;; http://invisible-island.net/ncurses/man/curs_clear.3x.html
;;; http://linux.die.net/man/3/erase

;;; C prototypes

;; int erase(void);
;; int werase(WINDOW *win);
;; int clear(void);
;; int wclear(WINDOW *win);
;; int clrtobot(void);
;; int wclrtobot(WINDOW *win);
;; int clrtoeol(void);
;; int wclrtoeol(WINDOW *win);

;;; Low-level CFFI wrappers

(defcfun ("erase"     %erase)     :int)
(defcfun ("werase"    %werase)    :int (win window))
(defcfun ("clear"     %clear)     :int)
(defcfun ("wclear"    %wclear)    :int (win window))

(defcfun ("clrtobot"  %clrtobot)  :int)
(defcfun ("wclrtobot" %wclrtobot) :int (win window))
(defcfun ("clrtoeol"  %clrtoeol)  :int)
(defcfun ("wclrtoeol" %wclrtoeol) :int (win window))
