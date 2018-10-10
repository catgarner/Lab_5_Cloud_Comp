awk '
  BEGIN { longest = 0 }
        {
          if (length($0) > longest) {
            longest = length($0)
          }
        } 
  END   { print longest }
' $1
