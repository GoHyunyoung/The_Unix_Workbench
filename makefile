DATE=`date`
LINE_CNT=`wc -l < guessinggame.sh`

all:
	touch README.md
	echo "title : The Unix Workbench - guessinggame.sh" > README.md
	echo "date, time : " ${DATE} >> README.md
	echo "line count : ${LINE_CNT}" >> README.md
clean:
	rm README.md
