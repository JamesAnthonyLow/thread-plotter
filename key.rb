require_relative "tasks"

printf("-"*106+"\n")
printf("|%-20s|%-20s|%-20s|%-20s|%-20s|\n", "Task Number", "Task Name", "Period", "Compute Time", "Priority")
printf("-"*106+"\n")
TASKS.each_with_index do |t, i|
  printf("|%-20s|%-20s|%-20s|%-20s|%-20s|\n", i, t.name, t.period, t.compute_time, t.priority)
  printf("-"*106+"\n")
end


