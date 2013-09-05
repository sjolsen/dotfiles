export TIMEFMT="
(\"$(echo-as-color nil nil t %J)\"
  (time
    (real \"%*E s\")
    (user \"%*U s\")
    (kern \"%*S s\"))
  (memory
    (total \"%M KiB\")
    (text  \"%X KiB\")
    (data  \"%D KiB\")))"
