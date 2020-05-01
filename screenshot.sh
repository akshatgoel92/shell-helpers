capture="$(which screencapture) -x -m -C"
freq=60
maxshots=30
animate=0

while getopts "af:m" opt; do
	case $opt in
	a ) animate=1			;;
	f ) freq=$OPTARG		;;
	m ) maxshots=$OPTARG	;;  
	? ) echo "Usage: $0 [-a] [-f frequency] [-m maxcaps]" >&2
	    exit 1
      esac
done
  
counter=0
while [$counter -lt $maxshots ]; do 
  $capture capture${counter}.jpg # Counter keeps incrementing
  $counter=$(( counter + 1 ))
  sleep $freq # This specifies the number of seconds to sleep between each image 
done

 
