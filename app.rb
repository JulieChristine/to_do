require("sinatra")
  require("sinatra/reloader")
  also_reload("lib/**/*.rb")
  require("./lib/task")
  require('pg')

  DB = PG.connect({:dbname => "to_do"})

  #PG -> Postgres (ex Oracle would have different name)

  # get("/") do
  #   @tasks = Task.all()   #We created a new instance variable @tasks to hold our list of tasks returned from the class method, Task.all().
  #   erb(:index)
  # end
  #
  # post("/tasks") do       #post() request, because we will be changing something on the server.
  #   description = params.fetch("description")
  #   task = Task.new(description)
  #   task.save()
  #   erb(:success)
  # end
