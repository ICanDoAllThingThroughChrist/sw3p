require 'pry'
require 'sqlite3'
require 'rake'

DB = {:conn =>SQLite3::Database.new("db/tracking.sqlite")}
DB[:conn].executre("DROP TABLE IF EXISTS tracking")

sql = <<-SQL
	CREATE TABLE IF NOT EXISTS tracking (
	id INTEGER PRIMARY KEY,
	task_id INTEGER, #INNER JOIN
	site_id INTEGER,#INNER JOIN
	frequency_id INTEGER,#INNER JOIN
	reporting_id INTEGER,#INNER JOIN
	comments_id INTEGER,#INNER JOIN
	FOREIGN KEY(task_id) REFERENCES task(id),
	FOREIGN KEY(site_id) REFERENCES site(id),
	FOREIGN KEY(frequency_id) REFERENCES frequency(id),
	FOREIGN KEY(reporting_id) REFERENCES reporting(id),
	FOREIGN KEY(comments_id) REFERENCES comments(id)
	)
#http://alvinalexander.com/android/sqlite-foreign-keys-example
	CREATE TABLE IF NOT EXISTS task (
	id INTEGER PRIMARY KEY,
	task TEXT#INNER JOIN
	)

	CREATE TABLE IF NOT EXISTS site (
	id INTEGER PRIMARY KEY,
	site TEXT#INNER JOIN
	)

	CREATE TABLE IF NOT EXISTS frequency (
	id INTEGER PRIMARY KEY,
	frequency TEXT#INNER JOIN
	)

	CREATE TABLE IF NOT EXISTS reporting (
	id INTEGER PRIMARY KEY,
	reporting TEXT#INNER JOIN
	)

	CREATE TABLE IF NOT EXISTS comments (
	id INTEGER PRIMARY KEY,
	comments TEXT#INNER JOIN
	)
SQL
	
	DB[:conn].execute(sql)
	DB[:conn].results_as_hash = true