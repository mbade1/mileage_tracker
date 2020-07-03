# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
    - db is created, and is interacted through AR
- [x] Include more than one model class (e.g. User, Post, Category)
    - Two classes: User and Shoe
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    - A User has_many shoes.
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    - A Shoe belongs_to a User.
- [x] Include user accounts with unique login attribute (username or email)
    - Username is associated with password
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    - The ShoesController Creates ('/shoes/new'), Reads ('/shoes/:id'), Updates ('/shoes/:id/edit'), and Destroys ('/shoes/:id/delete')
- [x] Ensure that users can't modify content created by other users
    - Through the use of sessions, users can't interact with content that is not theirs.
- [x] Include user input validations
    - Shoe class validates all params
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
    - Login/Sign up pages will include this.
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
