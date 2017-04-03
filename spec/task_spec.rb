require('spec_helper')

# require('rspec')
# require('task')
# require('pg')

# DB = PG.connect({:dbname => 'to_do_test'})  # DB is called a constant. Used only for application-wide configuration settings like the name of your database.
# # connecting to the right database (to_do_test) in this case.
#
# RSpec.configure do |config|         #same as clear loop
#     config.after(:each) do
#       DB.exec("DELETE FROM tasks *;")
#     end
  # end

describe(Task) do

  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1})
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1})
      expect(test_task.description()).to(eq("learn SQL"))
    end
  end

  describe("#list_id") do
      it("lets you read the list ID out") do
        test_task = Task.new({:description => "learn SQL", :list_id => 1})
        expect(test_task.list_id()).to(eq(1))
      end
    end

  describe("#==") do
    it("is the same task if it has the same description and list ID") do
      task1 = Task.new({:description => "learn SQL", :list_id => 1})
      task2 = Task.new({:description => "learn SQL", :list_id => 1})
      expect(task1).to(eq(task2))
    end
  end
end
