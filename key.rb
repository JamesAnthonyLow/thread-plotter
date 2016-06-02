require_relative "tasks"

def line; printf("-"*68+"\n"); end

trap "SIGINT" do
  puts "Exiting"
  exit 130
end

line
printf("|%-14s|%-20s|%-7s|%-12s|%-8s|\n", "Task Stamp", "Task Name", "Period", "Compute Time", "Priority")
line
TASKS.each_with_index do |t, i|
  t.number = i+1
  printf("|%-15s|%-20s|%7s|%12s|%8d|\n", t.stamp(13), t.name, t.period, t.compute_time, t.priority)
  line
end
printf("\n")
count = 1
line
printf("|%-5s|", "t")
TASKS.each do |t|
  printf("%s|", t.stamp)
end
printf("\n")
line
while count < 3000
  printf("|%-5d|", count)
  TASKS.each do |t| 
    if (count % t.period) == 0 
      abort("overun: #{t.name}") if t.queue > 0
      t.enqueue
    end
  end
  TASKS.sort_by(&:period).each do |t|
    if t.queue > 0
      t.print!
      t.dequeue
      break;
    end
  end
  TASKS.each do |t|
    printf("%s|", t.print? ? t.stamp : " "*((50/TASKS.length).floor + (t.number.to_f/10).ceil))
    t.print! if t.print?
  end
  printf("\n")
  line
  sleep(SLEEP)
  count+=1
end
