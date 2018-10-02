cmus()
{
 artist=$( cmus-remote -Q | grep 'tag artist' | sed s/'tag artist'/''/g )
 title=$( cmus-remote -Q | grep 'tag title' | sed s/'tag title'/''/g )
 # MAGIC NUMBER: I'm sure 1:32 is fine lol
 push=$( echo -e "${artist:1:32} - $title")
 test=$( echo -e '$push' )
 echo "$push"
}

current_time()
{
 echo $(date +"%R")
}

while true; do
 xsetroot -name "`cmus` | `current_time` "
done
