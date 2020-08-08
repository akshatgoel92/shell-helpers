valid_alpha_num()
{

  # Validate arguments: return 1 if all characters upper + lower + digits, 0 o/w

  # First remove all unneeded characters
  validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

  if [ "$validchars" = "$1" ]; then 
    return 0
  else
	return 1
fi

}

#----------------------------------------------------------------------------------------# 
# Main script begins here
#----------------------------------------------------------------------------------------# 
/bin/echo -n "Enter input:"
read input 

if ! valid_alpha_num "$input" ; then 
  echo "Please input only letters and numbers, you idiot." >&2
  exit 1
	
else
  echo "Input is valid."
fi
exit 0
 
	



