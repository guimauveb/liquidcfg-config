#! /bin/sh
### BEGIN INIT INFO
# Provides:          liquidcfg.sh
# Required-Start:
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:
# Short-Description: Starts and configures the AIO and MB lights.
# Description: Starts and configures the AIO and MB lights.
### END INIT INFO
 
PATH=/sbin:/usr/sbin:/bin:/usr/bin
 
. /lib/lsb/init-functions
 
case "$1" in
  start)
        liquidctl initialize --match gigabyte 
        liquidctl initialize --match corsair --pump-mode balanced
        liquidctl --match gigabyte set sync color fixed 282828
        liquidctl --match corsair set led color fixed 282828
        liquidctl --match corsair set fan speed 20 20 40 70 50 100
        ;;
  stop)
        # It should never stop
        ;;
  restart|reload|force-reload)
        liquidctl initialize --match gigabyte 
        liquidctl initialize --match corsair --pump-mode balanced
        liquidctl --match gigabyte set sync color fixed 282828
        liquidctl --match corsair set led color fixed 282828
        liquidctl --match corsair set fan speed 20 20 40 70 50 100
        ;;
  *)
        # echo "Usage: $0 start|stop" >&2
        # exit 3
        ;;
esac

exit 0
