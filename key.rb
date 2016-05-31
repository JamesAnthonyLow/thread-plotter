require_relative "tasks"

printf("-"*106+"\n")
printf("|%-20s|%-20s|%-20s|%-20s|%-20s|\n", "Task Number", "Task Name", "Period", "Compute Time", "Priority")
printf("-"*106+"\n")
TASKS.each_with_index do |t, i|
  t.number = i+1
  printf("|%s%-19s|%-20s|%-20s|%-20s|%-20s|\n", t.to_s, "", t.name, t.period, t.compute_time, t.priority.to_s)
  printf("-"*106+"\n")
end
count = 0
while true
  printf("#{count}\n")
  sleep(0.4)
  count+=1
end
