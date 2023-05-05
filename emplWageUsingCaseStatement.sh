wagePerHr=20;
fullDayHr=8;
partTimeHr=4;

echo "Enter Employee type (1: for Fulltime , 2: for part Time):"
read  emplType

case $emplType in
1)
dailyWage=$((wagePerHr*fullDayHr))
echo "Daily full time employee wage: $dailyWage";;

2)
dailyWage=$((wagePerHr*partTimeHr))
echo "Daily Part time employee wage : $dailyWage";;

*)
echo "Invalid employee type Entered...";;

esac
