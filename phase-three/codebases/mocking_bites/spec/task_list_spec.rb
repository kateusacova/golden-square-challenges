require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns a list of tasks" do
    list = TaskList.new
    task_1 = double(:task)
    task_2 = double(:task)
    list.add(task_1)
    list.add(task_2)
    expect(list.all).to eq [task_1, task_2]
  end

  it "returns false if at least one of the tasks is not completed" do
    list = TaskList.new
    task_1 = double(:task, complete?: true)
    task_2 = double(:task, complete?: true)
    task_3 = double(:task, complete?: false)
    list.add(task_1)
    list.add(task_2)
    list.add(task_3)
    expect(list.all_complete?).to eq false
  end

  it "returns true if all tasks completed" do
    list = TaskList.new
    task_1 = double(:task, complete?: true)
    task_2 = double(:task, complete?: true)
    task_3 = double(:task, complete?: true)
    list.add(task_1)
    list.add(task_2)
    list.add(task_3)
    expect(list.all_complete?).to eq true
  end
end
