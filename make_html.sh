echo "Script to create HTML pages from the body files"
for i in `ls *.body`
do
	chmod 644 $i
	fn=`echo $i | cut -d. -f1`
	echo "Transform $i into $fn.html"
	cat top.part $i bottom.part >$fn.html
	chmod 644 $fn.html
done
