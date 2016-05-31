require_relative "colors"
require_relative "tasks"

printf("-"*106+"\n")
printf("|%-20s|%-20s|%-20s|%-20s|%-20s|\n", "Task Number", "Task Name", "Period", "Compute Time", "Priority")
printf("-"*106+"\n")
TASKS.each_with_index do |t, i|
  t.number = i+1
  printf("|%-20s|%-20s|%-20s|%-20s|%-20s|\n", colorize(i.to_s, i), t.name, t.period, t.compute_time, t.priority)
  printf("-"*106+"\n")
end
