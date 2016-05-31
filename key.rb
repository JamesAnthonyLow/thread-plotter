require_relative "tasks"

printf("-"*106+"\n")
printf("|%-20s|%-20s|%-20s|%-20s|%-20s|\n", "Task Number", "Task Name", "Period", "Compute Time", "Priority")
printf("-"*106+"\n")
TASKS.each_with_index do |t, i|
  printf("|%-20s|%-20s|%-20s|%-20s|%-20s|\n", "\033\[0;36m"+i.to_s+"\x1b[0m", t.name, t.period, t.compute_time, t.priority)
  printf("-"*106+"\n")
end
