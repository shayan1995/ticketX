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
● User Login (multiple types of users)  
● Organizer login  
● Customer login  
● Organizer held events and see the all the events that he/she ordered and held  
● User order tickets  
● Use stripe gem to do the transaction  
● User see all the events that he/she ordered  
  
Division of Labor:  
● Shayan: multiple models, devise, and stripe implementation  
● Mike: CSS styling and views  
● Kyra: Event Order model, all views+controllers, DB associations  
● Kendal: CSS styling and views   

