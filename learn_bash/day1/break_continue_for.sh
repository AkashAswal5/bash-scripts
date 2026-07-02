for i in {1..10}; do
 if [ $i -eq 3 ]; then
	 continue
 fi 
	echo "Number $i"
 if [ $i -eq 4 ]; then
  break;
 fi
done
