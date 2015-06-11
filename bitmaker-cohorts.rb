# Author: Kevin McLoughlin
#
# Exercise 7: Fun with hashes

# Let's show how many students are in each cohort

def show_cohorts(cohorts)

  cohorts.map do |key, value|
    puts "#{key} => #{value}"
    puts "\n"
  end
end

cohorts = {
  :cohort_1 => 34,
  :cohort_2 => 42,
  :cohort_3 => 22,
}

show_cohorts(cohorts)

# Let's add a cohort

cohorts[:cohort_4] = 43

puts "\n"
puts "Cohort 4 just arrived on the scene with #{cohorts[:cohort_4]} students."
puts "Here's our new list of cohorts:"

show_cohorts(cohorts)

# You picked up the "chance" card in Monopoly. Increase the size of your classrooms by 5%.

def expand_cohorts_by_5_percent(cohorts)

  cohorts.map do |key, value|
    (value * 1.05).to_f.round(1)
  end

  return cohorts
end

puts "\n"
puts "You picked up the \"chance\" card in Monopoly. Increase the size of your classrooms by 5%."

show_cohorts(
  expand_cohorts_by_5_percent(cohorts)
  )

puts "\n"
puts "Well, that didn't do much eh?"

# You picked up another "chance" card, but this time it wasn't so nice. Cohort #2 got lost over the Bermuda Triangle.

cohorts.delete(:cohort_2)
puts "\n"
puts "\nYour next \"chance\" card wasn't so nice. Cohort #2 got lost over the Bermuda Triangle."

show_cohorts(cohorts)

# How many students you got now eh?

total_students = cohorts.values.reduce(:+)
puts "\n"
puts "You now have #{total_students} students remaining."
