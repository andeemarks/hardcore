#!/bin/bash
mv ~/.lein/profiles.clj ~/.lein/profiles.clj.old
sed -i 's/[org\.clojure\/clojure "[1-9]\.[0-9]\.[0-9]"\]/1.3.0\"\]/g' project.clj
echo '(dir clojure.core)' | lein repl > dist/clojure.core.public.vars.1_3_0
sed -i 's/[org\.clojure\/clojure "[1-9]\.[0-9]\.[0-9]"\]/1.4.0\"\]/g' project.clj
echo '(dir clojure.core)' | lein repl > dist/clojure.core.public.vars.1_4_0
sed -i 's/[org\.clojure\/clojure "[1-9]\.[0-9]\.[0-9]"\]/1.5.0\"\]/g' project.clj
echo '(dir clojure.core)' | lein repl > dist/clojure.core.public.vars.1_5_0
sed -i 's/[org\.clojure\/clojure "[1-9]\.[0-9]\.[0-9]"\]/1.6.0\"\]/g' project.clj
echo '(dir clojure.core)' | lein repl > dist/clojure.core.public.vars.1_6_0
sed -i 's/[org\.clojure\/clojure "[1-9]\.[0-9]\.[0-9]"\]/1.7.0\"\]/g' project.clj
echo '(dir clojure.core)' | lein repl > dist/clojure.core.public.vars.1_7_0
sed -i 's/[org\.clojure\/clojure "[1-9]\.[0-9]\.[0-9]"\]/1.8.0\"\]/g' project.clj
echo '(dir clojure.core)' | lein repl > dist/clojure.core.public.vars.1_8_0
mv ~/.lein/profiles.clj.old ~/.lein/profiles.clj
