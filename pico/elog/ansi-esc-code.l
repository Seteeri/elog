(symbols 'pico)

#{

  https://en.wikipedia.org/wiki/ANSI_escape_code#ESC

  FG  BG
  30 	40 	  Black
  31 	41 	  Red
  32 	42 	  Green
  33 	43 	  Yellow
  34 	44 	  Blue
  35 	45 	  Magenta
  36 	46 	  Cyan
  37 	47 	  White
  90 	100 	Bright Black (Gray)
  91 	101 	Bright Red
  92 	102 	Bright Green
  93 	103 	Bright Yellow
  94 	104 	Bright Blue
  95 	105 	Bright Magenta
  96 	106 	Bright Cyan
  97 	107 	Bright White

  Examples:
  * black fg / white bg: ESC[30;47m
  * red: ESC[31m
  * bright red: ESC[1;31m
  * to reset colors to their defaults: ESC[39;49m (not always supported)
  * reset all attributes with ESC[0m

  Later terminals added the ability to directly specify the "bright" colors with 90–97 and 100–107.

  See also:
  https://misc.flogisoft.com/bash/tip_colors_and_formatting

  ESC char:
    \e
    \033
    \x1B

}#

(def 'ESC-FG-BLACK   "^[[0;30m")
(def 'ESC-FG-RED     "^[[0;31m")
(def 'ESC-FG-GREEN   "^[[0;32m")
(def 'ESC-FG-YELLOW  "^[[0;33m")
(def 'ESC-FG-BLUE    "^[[0;34m")
(def 'ESC-FG-MAGENTA "^[[0;35m")
(def 'ESC-FG-CYAN    "^[[0;36m")
(def 'ESC-FG-WHITE   "^[[0;37m")

(def 'ESC-FG-BLACK-B   "^[[0;90m")
(def 'ESC-FG-RED-B     "^[[0;91m")
(def 'ESC-FG-GREEN-B   "^[[0;92m")
(def 'ESC-FG-YELLOW-B  "^[[0;93m")
(def 'ESC-FG-BLUE-B    "^[[0;94m")
(def 'ESC-FG-MAGENTA-B "^[[0;95m")
(def 'ESC-FG-CYAN-B    "^[[0;96m")
(def 'ESC-FG-WHITE-B   "^[[0;97m")

(def 'ESC-BG-BLACK   "^[[0;40m")
(def 'ESC-BG-RED     "^[[0;41m")
(def 'ESC-BG-GREEN   "^[[0;42m")
(def 'ESC-BG-YELLOW  "^[[0;43m")
(def 'ESC-BG-BLUE    "^[[0;44m")
(def 'ESC-BG-MAGENTA "^[[0;45m")
(def 'ESC-BG-CYAN    "^[[0;46m")
(def 'ESC-BG-WHITE   "^[[0;47m")

(def 'ESC-BG-BLACK-B   "^[[0;100m")
(def 'ESC-BG-RED-B     "^[[0;101m")
(def 'ESC-BG-GREEN-B   "^[[0;102m")
(def 'ESC-BG-YELLOW-B  "^[[0;103m")
(def 'ESC-BG-BLUE-B    "^[[0;104m")
(def 'ESC-BG-MAGENTA-B "^[[0;105m")
(def 'ESC-BG-CYAN-B    "^[[0;106m")
(def 'ESC-BG-WHITE-B   "^[[0;107m")

(def 'ESC-RESET-DEF "^[[39;49m")
(def 'ESC-RESET-ALL "^[[0m")
