#WEEK 6 PERSONAL PROJECT INTEGRATING CRUD AND EXTERNAL API

##Task
* Build a web application that can CRUD in a SQL database and also interacts with an external api
* https://github.com/aussieyang/WDI7-Warmups/blob/master/Project2.md

##My Proposal
A webapp that interacts with League of Legends's API. The name will be **LOLward**.

###Features
* Allow consumers to be able to sign up, sign in, edit and delete their LOLward account/profile
* A community page showing all members of LOLward and lets a member check out another member's profile
* Allows a member of LOLward to interact with another member via private messaging/inbox system.
* Allows consumers to check out a player's online league of Legends profile and statistics

##Accomplishments
* Build basic crud around authentication - let users sign up, sign in, edit their account, and delete their account _-completed 26th May_
* Integrated external API - allows users to search for a league of legends player by username and displays that player's online profile _-completed 27th May_
* Allow users to search for a specific member in the community page _-completed 30th May_
* Members should not be able to edit and delete other member's profiles except his or her own _-fixed on 31st May_
* Replace the search text with a search symbol and use CSS to place it in the correct position _-completed 31st May_
* Create an About Us page _-completed 31st May_
* When users click on their name displayed on the nav bar, it will direct the user to their profile page _-completed 31st May_
* If user hits search with no input to grab online player profile, an error will be returned. _-fixed 1st June_
* When user searches for a player's item via the api that returns player details, the result for the weapon will be an id number instead of an item name. League of legends have another database that matches the item ID to the item Name. I have to replace the item id number with the item name by downloading League of legends item database and integrating into mine via seeds.rb. This same problem exists for champion id, masteries id, map id, etc. _-completed 1st June_
* Integrate mailbox system so that members of LOLward can message another member by following this tutorial https://medium.com/@danamulder/tutorial-create-a-simple-messaging-system-on-rails-d9b94b0fbca1#.rjs6cdozd _-completed 2nd June_
* Allow members to get a notification in their inbox when a member has sent them a message _-completed 3rd June_
* Applied pagination to the community page. As more users sign up, new pages will be created. Tutorial can be found here: https://gorails.com/episodes/pagination-with-will-paginate _-completed 5th June_

##Challenges
* Getting the checkWinner function to work by comparing jQuery objects -  checks if an object has an image
* Missed opportunity to learn about 9- bit magic numbers to check winning condition
* Figuring out the conditions for the Computer to move
* Merging Single Player and Multiplayer together
* Making all the buttons and headings all linked and functioning properly together

##Immediate Attention
* Game sometimes breaks if you multi- click same cell very quickly
* Game sometimes breaks if you start new single player game or multiplayer game and it prompts for your name twice
* Game sometimes breaks if you switch from single player to multiplayer and vice versa
* Make only the 'Play SP Again' button appear while playing single player mode, and disappear while not. Instead, it shows both 'Play SP Again' and 'Play MP Again' regardless of which mode you're in. Unable to map a specific 'Play Again' button to the specific 'Mode'.

##Future Considerations
* Code is not dry -  could use more for loops
* AI -  Hard Mode instead of using math.random to generate moves
* Let users choose token/character and determine who goes first
* Add additional rows and columns which makes the game more interesting as you have to remember your positions more

##How to Cheat
* If Player One name is the same as Player Two's name, all the points won gets allocated to player one, even if player two wins.

##Project Thought Process
1. For each click, it will switch players and does a bunch of stuff
2. Figure out how to check for winner
3. Add new game, reset, win count buttons and functions
4. Add AI

##Design Thought Process
1. I changed the cells' shape from square to circle immediately and see what will happen from there.
2. Thought of possible sceneries where there are 3x3 circles.
3. Circles reminded me of targets so I created a ninja-star-throwing tic tac toe game. Instead of appending X and O, it throws a star image to the cell.
4. Then I wanted animation and remembered FadeTo. First thing that came into mind was a disappearing ghost.
5. I wanted to build on that idea so I thought of creating an RPG-themed tic tac toe game and thus, giving players a character, changing their cursor to reflect their weapons, and added sound effects.

##My JS Sections Summarised
* Creating Game Heading
* Creating Board/Grid
* Creating New Game Button for SP - New Game for MP Function - Click Function for MP
* Creating Play Again Button for SP - Play SP Again Function - Click Function for SP
* Creating New Game Button for MP - New Game for MP Function - Click Function for MP
* Creating Play Again Button for MP - Play MP again Function - Click Function for MP
* Creating Reset Score Button - Reset Score Function
* Display Current Player’s Turn
* Creating Win Counts
* Creating Characters for each player
* Show the Rules
* Adding Click Sound Effects
* Default Player Names
* Grab Names for SP
* Grab Names for MP
* Check if P1 Wins
* Check if P2 Wins
* Check if Tie
