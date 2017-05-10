BEGIN { FS=":"; print "Username" }
# $1 !~ /^[_#]/ { print $1 }
/^[#_]|root/{ print $1; count++ }
END { print "Shown=" count " of " NR " total"  }

