require 'pry'
require 'sqlite3'
require 'rake'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'

DB = {:conn =>SQLite3::Database.new("../db/tracking.sqlite")}
DB[:conn].execute("DROP TABLE IF EXISTS tracking")
DB[:conn].execute("DROP TABLE IF EXISTS task")
DB[:conn].execute("DROP TABLE IF EXISTS site")
DB[:conn].execute("DROP TABLE IF EXISTS frequency")
DB[:conn].execute("DROP TABLE IF EXISTS reporting")
DB[:conn].execute("DROP TABLE IF EXISTS comments")

sql = <<-SQL
	CREATE TABLE tracking (
	id INTEGER PRIMARY KEY,
	task_id INTEGER,
	site_id INTEGER,
	frequency_id INTEGER,
	reporting_id INTEGER,
	comments_id INTEGER,
	FOREIGN KEY(task_id) REFERENCES task(id),
	FOREIGN KEY(site_id) REFERENCES site(id),
	FOREIGN KEY(frequency_id) REFERENCES frequency(id),
	FOREIGN KEY(reporting_id) REFERENCES reporting(id),
	FOREIGN KEY(comments_id) REFERENCES comments(id)
	)
	SQL
	
	DB[:conn].execute(sql)
	DB[:conn].results_as_hash = true

sql = <<-SQL
	CREATE TABLE task (
	id INTEGER PRIMARY KEY,
	task TEXT
	)
	SQL
	DB[:conn].execute(sql)
	DB[:conn].results_as_hash = true
sql = <<-SQL
	CREATE TABLE site (
	id INTEGER PRIMARY KEY,
	site TEXT
	)
	SQL
	DB[:conn].execute(sql)
	DB[:conn].results_as_hash = true
sql = <<-SQL
	CREATE TABLE frequency (
	id INTEGER PRIMARY KEY,
	frequency TEXT
	)
	SQL
	DB[:conn].execute(sql)
	DB[:conn].results_as_hash = true
sql = <<-SQL
	CREATE TABLE reporting (
	id INTEGER PRIMARY KEY,
	reporting TEXT
	)
	SQL
	DB[:conn].execute(sql)
	DB[:conn].results_as_hash = true
sql = <<-SQL
	CREATE TABLE comments (
	id INTEGER PRIMARY KEY,
	comments TEXT
	)
	SQL
	DB[:conn].execute(sql)
	DB[:conn].results_as_hash = true
	