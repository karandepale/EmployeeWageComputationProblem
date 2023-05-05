full_time_wage=20
full_time_hours=8

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

# Print the daily wage and total wage for both employees
echo "Full-time employee daily wage: $full_time_daily_wage"
echo "Full-time employee total wage for the month: $full_time_total_wage"
echo "Part-time employee daily wage: $part_time_daily_wage"
echo "Part-time employee total wage for the month: $part_time_total_wage"
