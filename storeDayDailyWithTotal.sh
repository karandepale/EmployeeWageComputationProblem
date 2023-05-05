# Set variables for full-time employee
full_time_wage=20
full_time_hours=8

# Set variables for part-time employee
part_time_wage=20
part_time_hours=4

# Set variables for number of working days in a month
working_days=20

# Calculate daily wage for full-time employee
full_time_daily_wage=$(($full_time_wage * $full_time_hours))

# Calculate daily wage for part-time employee
part_time_daily_wage=$(($part_time_wage * $part_time_hours))

# Calculate total wage for full-time employee
full_time_total_wage=$(($full_time_daily_wage * $working_days))

# Calculate total wage for part-time employee
part_time_total_wage=$(($part_time_daily_wage * $working_days))

# Create an array to store day-wise wages
declare -a daily_wages

# Loop through each day of the month and calculate wages
for (( day=1; day<=$working_days; day++ ))
do
  if (( $day % 5 == 0 ))  # Every 5th day is a part-time day
  then
    daily_wages[$day]=$part_time_daily_wage
  else
    daily_wages[$day]=$full_time_daily_wage
  fi
done

# Calculate total wage for each employee
full_time_total_wage=$((${daily_wages[@]} * $working_days))
part_time_total_wage=$((${daily_wages[@]/$part_time_daily_wage/$full_time_daily_wage} * $working_days))

# Print the day-wise wages and total wages for both employees
echo "Day-wise wages for full-time employee:"
for (( day=1; day<=$working_days; day++ ))
do
  echo "Day $day: ${daily_wages[$day]}"
done

echo "Total wage for full-time employee: $full_time_total_wage"

echo "Day-wise wages for part-time employee:"
for (( day=1; day<=$working_days; day++ ))
do
  if (( $day % 5 == 0 ))
  then
    echo "Day $day: ${daily_wages[$day]}"
  fi
done

echo "Total wage for part-time employee: $part_time_total_wage"
