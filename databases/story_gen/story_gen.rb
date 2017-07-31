# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("tropes.db")

# # add string delimiter
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS story(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    setting VARCHAR(255),
    conflict VARCHAR(255)
  )
SQL

# create table
db.execute(create_table_cmd)

# add a test story
# db.execute("INSERT INTO story (name, setting, conflict) VALUES ('Boris', 'A Long Time Ago, in a Galaxy Far Far Away...', 'Government Conspiracy' )")

# create arrays of settings and conflicts

settings = ["Just Before the End", "Raygun Gothic", "Small Town Rivalry", "Ghost Town", "Company Town", "Boarding School of Horrors", "Planet of Hats", "The Shangri-La", "Feudal Future", "City Noir", "City of Adventure", "City of Spies", "Close-Knit Community", "Mirror Universe"]

conflicts = ["Shapeshifter Identity Crisis", "Split-Personality Takeover", "Hope Is Scary", "What You Are in the Dark", "Double Think", "Race Against the Clock", "Rage Against the Heavens", "Random Events Plot", "No Plot? No Problem!", "Never Learned to Read"]

def create_story(db, name, setting, conflict)
  db.execute("INSERT INTO story (name, setting, conflict) VALUES (?, ?, ?)", [name, setting, conflict])
end

60.times do
  create_story(db, Faker::Name.name, settings.sample, conflicts.sample)
end

# explore ORM by retrieving data
stories = db.execute("SELECT * FROM story;")
stories.each do |story|
 puts "#{story[1]} is in the world of #{story[2]}. The plot involves #{story[3]}. For reference log onto TV Tropes"
end