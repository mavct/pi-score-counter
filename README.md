# pi-score-counter
Raspberry Pi score counter for games.

## How it works?
- A Python script records every button action with the GPIO implementation from the Raspberry Pi.
- Every action is saved in a SQLite database
- A web interface will connect to that database to offer a UI to the program

## GPIO Inputs
- Player 1 - Button A (#18)
- Player 1 - Button B (#24)
- Player 2 - Button A (#22)
- Player 2 - Button B (#17)
- Reset button (#25)

## Use of buttons
- Always
    - Reset button: Resets the system to the home page
- Before a game
    - Button A - Change player
    - Button B - Select player
- During a game
    - Button A - Increase score
    - Button B - Decrease score

## Game flow
- Each players selects his name from the list of available players by using the A and B buttons (data will be prefilled)
- When every players has selected his name, the game starts and the score is 0-0
- By using buttons A or B, the players can make increase/decrease their score
- When the game is over, the system returns to the home page when any button is pressed, and the flows restarts
- Any time that the Reset button is pressed, the system returns to the home page
- If the score is 0-0 and a decrease button is pressed, the system will return to main menu and cancel the current game

## Default config and rules
- The default config is  based on Table Tennis Canada rules
- Every games are 11 points
- If there is an equality at 10-10, the game will finish when the difference of points is 2

## Statistics
- Every game is saved in the database with the score
- An ELO based ranking algorithm is implemented to assign a rank to each player
- A leaderboard is also shown after 1 minute of inactivity while in the main menu

## Installation
- Simply run install.sh in the install directory
- Make sure ```pigpio``` is installed on your Pi (should already be install)
- Run ```whereis pigpiod``` and add it to your crontab at reboot
    - Example: ```@reboot   /usr/bin/pigpiod```

## Execution
- Run start.sh that was copied in /home/pi/Desktop

## Update
- Run update.sh in the install folder to update the code directly on your Raspberry Pi                                  
