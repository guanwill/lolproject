#WEEK 6 LEAGUE OF LEGENDS WEB APP

##Task
Build a web application that can CRUD a SQL database and also interacts with an external api. Full details of the project can be found [here](https://github.com/aussieyang/WDI7-Warmups/blob/master/Project2.md)

##My Proposal
A webapp that interacts with League of Legends's API. The website name will be **LOLward** and will include the following features:
* Allow consumers to be able to sign up, sign in, edit and delete their LOLward account/profile
* A community page showing all members of LOLward and lets a member check out another member's profile
* Allows a member of LOLward to interact with another member via private messaging/inbox system.
* Allows consumers to check out a player's online league of Legends profile and statistics

##Accomplishments
* Built crud around authentication - let users sign up, sign in, edit their account, and delete their account
* Integrated external API - let users to search for a person's league of legends online profile and statistics
* Integrated a mailbox system so that members of LOLward can message another member by following [this tutorial](https://medium.com/@danamulder/tutorial-create-a-simple-messaging-system-on-rails-d9b94b0fbca1#.rjs6cdozd)
* Allow members to get a notification in their inbox when a member has sent them a message
* Applied pagination to the community page by following [this tutorial](https://gorails.com/episodes/pagination-with-will-paginate).

##Challenges
* Getting the external api call to display the correct contents
* Integrating mailbox system using gems but eventually following a tutorial instead.
* Making the inbox notification counter to calculate properly
* Understanding relational databases and accessing it correctly to grab the correct data

##Problems
* Allow users to search for a specific member in the community page _-completed 30th May_
* Integrate improved validations to the sign-up form _-completed 30th May_
* Members should not be able to edit and delete other member's profiles except his or her own _-fixed on 31st May_
* When users click on their name displayed on the nav bar, it will direct the user to their profile page _-completed 31st May_
* Members cannot message themselves _-completed 3rd June_
* If user hits search with no input to grab online player profile, an error will be returned. _-fixed 1st June_
* In the online profile card, the api call for a the player's item only returns an id number. League of legends have another database that matches the item id to the item name. I have to replace the item id number with the item name by downloading the latter database and integrating it into mine via seeds.rb. This same problem exists for champion id, masteries id, map id, etc. _-completed 1st June_

##Future Considerations and Reflection
* Allow users to use the live League of Legends profile card in their forum signatures
* Allow users to delete specific messages in a conversation
* Let members favourite other members
* Let members favourite a League of legends online profile
* Link a member's profile with their online League of legends profile
* Let members upload a profile picture
* Security code to prove that the consumer is not a robot
* Send consumer an email verification when they sign up
* Check if the player is online or offline in the game
* Check if game server is online or offline
* Get/calculate the win rate of a player
* Get/calculate most used champion of a player
* Use Devise for authentication
* Use CSS libraries during the initial stage of project
* In the sign up form, if the user skips a field, it will display the title and blank next to it in their profile. It should be completely gone.

##Rails Flow Chart
