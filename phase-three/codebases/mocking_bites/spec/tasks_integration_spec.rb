require_relative "../lib/task_list.rb"
require_relative "../lib/task.rb"
require_relative "../lib/task_formatter.rb"

RSpec.describe "tasks integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq true
  end

  it "returns formatted task" do
    task_1 = Task.new("Walk the dog")
    to_format  = TaskFormatter.new(task_1)
    expect(to_format.format).to eq "- [ ] Walk the dog"
  end

  it "returns formatted task" do
    task_1 = Task.new("Walk the dog")
    to_format  = TaskFormatter.new(task_1)
    task_1.mark_complete
    expect(to_format.format).to eq "- [x] Walk the dog"
  end
end
