gp(){
touch file.dat
ps -eo pmem | sort -rnk 1 | head -5 > file.dat
}

