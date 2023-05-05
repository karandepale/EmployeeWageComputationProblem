wagePerHour=20
fullDayHour=8
partTimeHour=4
workingDaysPerMonth=20

echo "Enter employee type (1 for full-time, 2 for part-time):"
read employeeType

case $employeeType in
  1)
    dailyWage=$((wagePerHour * fullDayHour))
    monthlyWage=$((dailyWage * workingDaysPerMonth))
    echo "Monthly Full Time Employee Wage: $monthlyWage"
    ;;
  2)
    dailyWage=$((wagePerHour * partTimeHour))
    monthlyWage=$((dailyWage * workingDaysPerMonth))
    echo "Monthly Part Time Employee Wage: $monthlyWage"
    ;;
  *)
    echo "Invalid employee type entered."
    ;;
esac
