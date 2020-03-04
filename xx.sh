source xx2.sh
while true 

do

yad --title="caracteristiques hardware" \
--button="liste des processus":1 \
--button="top":2 \
--button="stats":3 \
--button="help":4 \
--button="courbe":5 \
--button="quitter":6
ret=$?
if [ $ret -eq 1 ]; then
ps -eo pmem,pid,args | sort -rnk 1 | head -5
elif [ $ret -eq 2 ]; then
while true

do

yad --title="top" \
--button="utiliser top":1 \
--button="afficher les processus de lutilisateur uniquement":2 \
--button="retour":3
ret2=$?
if [ $ret2 -eq 1 ];then
top
elif [ $ret2 -eq 2 ];then
top -u achraf 
elif [ $ret2 -eq 3 ];then
break
fi 
done

elif [ $ret -eq 3 ]; then
ps -aux
elif [ $ret -eq 4 ]; then
top --help
ps --help
elif [ $ret -eq 5 ];then
gp
gnuplot file.sh
elif [ $ret -eq 6 ]; then
rm file.dat
break
fi

done
exit 0 
