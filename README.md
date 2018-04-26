# Writeup

Title:​ ticketX  
Team Members:​ Shayan Askarian, Mike Lee, Kyra Chang, Kendal Asprec  

Idea: A web application similar to stubhub where we plan to allow for events to hold safe transactions without the current overhead and hassle that goes into planning and executing an event using the current stubhub and ticketmaster. The biggest difference between our proposal and the ones on the market already would be a more streamlined ui/ux and no transactional fees. 


Models and Description:  
Users  
● Name, email, ID (foreign key), payment info, and maybe history of events, type of user(normal or host)  
● For the host user, it’ll Has-many Events  

Events  
● Title, category(concert, sport, museum..etc), time, price, description, number of people that may attend  

Order/Ticket  
● Many-to-many: User + Event  
● Order time  
● Verification method -> potentially can use a randomly generated and hashed number  
● Payment method and verification can be done with the gem PAYMENT - https://rubygems.org/gems/payment/versions/1.0.1  



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
