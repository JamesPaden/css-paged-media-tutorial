for d in lesson-*
do
	echo $d
    cd $d 
    make
    git add index.pdf
    cd ..

done
