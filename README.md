# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


**SAMPLE WRITEUP**

Title:​ ticketX  
Team Members:​ Ken Chen, Nhi Quach, Ethan Lee  
Demo Link:​ railsdecal.com  
Idea: ​An application where administrators can create and post new lectures and other users (being
students) can comment on the lectures and post questions for admins to answer.
Models and Description:
User
● has name, email, and many comments and questions
● certain Users are Administrators and have lectures
Lecture
● has title, topic, and summary text
Comment
● has text and belongs to a User
Question
● has text, flag to say if it has been answered or not, and belongs to a User

Features:
● Users can log in
● Admins can make lectures
● Users can comment on lectures
● Users can ask questions
● Admins can answer questions
Division of Labor:
● Ken: Made users
● Nhi: Made lectures and questions
● Ethan: Made views and controllers
