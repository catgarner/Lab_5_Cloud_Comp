awk '
  BEGIN { shortest = 9999 }
        {
          if (length($0) < shortest) {
            shortest = length($0)
          }
        } 
  END   { print shortest }
' $1
