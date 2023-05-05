wagePerHour=20
fullDayHour=8
partTimeHour=4
totalWorkingDays=20
totalWorkingHours=100

echo "Enter employee type (1 for full-time, 2 for part-time):"
read employeeType

case $employeeType in
  1)
    dailyWage=$((wagePerHour * fullDayHour))
    totalWage=0
    totalWorkingHoursFullTime=0
    totalWorkingDaysFullTime=0

    while [[ $totalWorkingDaysFullTime -lt $totalWorkingDays && $totalWorkingHoursFullTime -lt $totalWorkingHours ]]
    do
        totalWorkingDaysFullTime=$((totalWorkingDaysFullTime+1))
        totalWorkingHoursFullTime=$((totalWorkingHoursFullTime+fullDayHour))
        if [[ $totalWorkingHoursFullTime -gt $totalWorkingHours ]]
        then
            extraHours=$((totalWorkingHoursFullTime-totalWorkingHours))
            dailyWageExtra=$((extraHours*wagePerHour))
            dailyWage=$((wagePerHour*fullDayHour))
            dailyWage=$((dailyWage+dailyWageExtra))
        fi
        totalWage=$((totalWage+dailyWage))
    done

    echo "Total wage for Full Time Employee: $totalWage"
    ;;
  2)
    dailyWage=$((wagePerHour * partTimeHour))
    totalWage=0
    totalWorkingHoursPartTime=0
    totalWorkingDaysPartTime=0

    while [[ $totalWorkingDaysPartTime -lt $totalWorkingDays && $totalWorkingHoursPartTime -lt $totalWorkingHours ]]
    do
        totalWorkingDaysPartTime=$((totalWorkingDaysPartTime+1))
        totalWorkingHoursPartTime=$((totalWorkingHoursPartTime+partTimeHour))
        if [[ $totalWorkingHoursPartTime -gt $totalWorkingHours ]]
        then
            extraHours=$((totalWorkingHoursPartTime-totalWorkingHours))
            dailyWageExtra=$((extraHours*wagePerHour))
            dailyWage=$((wagePerHour*partTimeHour))
            dailyWage=$((dailyWage+dailyWageExtra))
        fi
        totalWage=$((totalWage+dailyWage))
    done

    echo "Total wage for Part Time Employee: $totalWage"
    ;;
  *)
    echo "Invalid employee type entered."
    ;;
esac
