echo selectati modul de functionare a programului
echo 1.Friendly 2.Killmode
read a
if(( $a == 1 ))
then
./limitareM.sh
fi
if(( $a == 2 ))
then
./dog3.sh
fi

