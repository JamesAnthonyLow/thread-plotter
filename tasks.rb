require_relative "colors"
class Task
  attr_accessor :number
  attr_reader :name, :period, :compute_time, :priority
  def initialize(args={})
    @name = args[:name]
    @period = args[:period]
    @compute_time = args[:compute_time]
    @priority = args[:priority]
  end
  def to_s
    colorize(@number.to_s, @number)
  end
end
TASKS = []
TASKS << Task.new(:name => "Weapon Release", :period => 10, :compute_time => 1, :priority => 7)
TASKS << Task.new(:name => "Target Tracking", :period => 40, :compute_time => 2, :priority => 6)
TASKS << Task.new(:name => "Aircraft Flight Data", :period => 55, :compute_time => 8, :priority => 5)
TASKS << Task.new(:name => "Aircraft Steering", :period => 80, :compute_time => 6, :priority => 4)
TASKS << Task.new(:name => "Radar Search", :period => 80, :compute_time => 2, :priority => 4)
TASKS << Task.new(:name => "Weapon Trajectory", :period => 100, :compute_time => 7, :priority => 3)
