case $1 in
  start)
    echo "sleep-walking start"
    /tmp/sleep-walking-server &
  ;;
  stop)
    echo "sleep-walking stop"
    TARGET=$(pgrep -f "sleep-walking")
    echo ${TARGET}
    kill -9 ${TARGET}
  ;;
  *)
    echo "--- invalid option ---"
    exit 1
  ;;
esac
