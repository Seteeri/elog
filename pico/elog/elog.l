(symbols 'elog 'pico)

#{

  * *elog-eve = filter any
    * default/NIL = show all
  * *log-out = list of output fds, default to stdout
  * Note these are per process
  * type is symbol or list of symbols: '(level fn)
    * level: error, warning, status
      * error = wrong value or bug will occur if exec continues
      * warning = possilbe repercussions
      * env = info about state/env/binds

}#

(def '*pid)

(local) elog
(de elog @
  # (Type Txt-Args ...)
  (let (Type (next)
        Txt (pass text))

    # if any members of Type is in *elog-eve, ignore
    # or if it is T, ignore all
    (unless
      (or
        (=T *elog-eve)
        (if (pair Type)
            (sect Type *elog-eve)
            (member Type *elog-eve)))
      (if *elog-out
          (for F *elog-out
            (out F
              (elog-out Type Txt)))
          (elog-out Type Txt)))))


(local) elog-out
(de elog-out (Type Txt)
  (prin ESC-FG-GREEN  (pack (usec) " "))
  (prin ESC-FG-YELLOW (if *pid (pack @ " ") @))
  (prin ESC-FG-CYAN   (pack (name Type)))
  (prin ESC-RESET-ALL " ")
  (prinl Txt))
