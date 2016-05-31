require_relative "colors"
TASKS = []
class Task
  attr_accessor :number
  attr_accessor :queue
  attr_reader :name, :period, :compute_time, :priority
  def initialize(args={})
    @name = args[:name]
    @period = args[:period]
    @compute_time = args[:compute_time]
    @priority = args[:priority]
    @queue = 0
    @print = false
  end
  def enqueue
    @queue += @compute_time
  end
  def dequeue
    @queue -= 1
  end
  def stamp(justify=(95/TASKS.length).floor) 
    colorize("#{@number}#{" "*justify}", @number)
  end
  def print!
    @print = !@print 
  end
  def print?
    @print
  end
end
TASKS << Task.new(:name => "Weapon Release", :period => 10, :compute_time => 1, :priority => 7)
TASKS << Task.new(:name => "Target Tracking", :period => 40, :compute_time => 2, :priority => 6)
TASKS << Task.new(:name => "Aircraft Flight Data", :period => 55, :compute_time => 8, :priority => 5)
TASKS << Task.new(:name => "Aircraft Steering", :period => 80, :compute_time => 6, :priority => 4)
TASKS << Task.new(:name => "Radar Search", :period => 80, :compute_time => 2, :priority => 4)
TASKS << Task.new(:name => "Weapon Trajectory", :period => 100, :compute_time => 7, :priority => 3)
SLEEP = 0.1
