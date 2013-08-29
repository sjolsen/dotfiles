if [ -n "$(lsb_release -i | grep CentOS -)" ]; then
   export BUGGY=true
fi
