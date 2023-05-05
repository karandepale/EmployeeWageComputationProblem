wagePerHr=20;
fullDayHr=8;
partTimeHr=4;
dailyWage=$((wagePerHr*fullDayHr))
partTimeWage=$((wagePerHr*partTimeHr))

echo "Daily Employee Wage : " $dailyWage;
echo "Part Time Employee Wage :" $partTimeWage;
