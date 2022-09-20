require_relative "../lib/task_formatter.rb"

RSpec.describe TaskFormatter do
  it "returns formatted task" do
    task = double(:task, title: "Task 1", complete?: true)
    to_format  = TaskFormatter.new(task)
    expect(to_format.format).to eq "- [x] Task 1"
  end

  it "returns formatted task" do
    task = double(:task, title: "Task 1", complete?: false)
    to_format  = TaskFormatter.new(task)
    expect(to_format.format).to eq "- [ ] Task 1"
  end
end