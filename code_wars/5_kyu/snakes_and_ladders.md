**Snakes and Ladders**
===

_Problem:_
---

Your task is to make a simple class called SnakesLadders. The test cases will call the method play(die1, die2) independantly of the state of the game or the player turn. The variables die1 and die2 are the die thrown in a turn and are both integers between 1 and 6. The player will move the sum of die1 and die2.

inputs: integers (sum of two dice with values 1-6)
outputs: integer (the space on the board that the player has landed)
  - string ( the player has landed on a snake and fallen back to space x)
  - string (the player has laned on a ladder and has moved ahead to space y)

**Returns:**

- Return Player n Wins!. Where n is winning player that has landed on square 100 without any remainding moves left.

- Return Game over! if a player has won and another player tries to play.

- Otherwise return Player n is on square x. Where n is the current player and x is the sqaure they are currently on.


Rules of the Game:

1.  There are two players and both start off the board on square 0.

2.  Player 1 starts and alternates with player 2.

3.  You follow the numbers up the board in order 1=>100

4.  If the value of both die are the same then that player will have another go.

5.  Climb up ladders. The ladders on the game board allow you to move upwards and get ahead faster. If you land exactly on a square that shows an image of the bottom of a ladder, then you may move the player all the way up to the square at the top of the ladder. (even if you roll a double).

6.  Slide down snakes. Snakes move you back on the board because you have to slide down them. If you land exactly at the top of a snake, slide move the player all the way to the square at the bottom of the snake or chute. (even if you roll a double).

7.  Land exactly on the last square to win. The first person to reach the highest square on the board wins. But there's a twist! If you roll too high, your player "bounces" off the last square and moves back. You can only win by rolling the exact number needed to land on the last square. For example, if you are on square 98 and roll a five, move your game piece to 100 (two moves), then "bounce" back to 99, 98, 97 (three, four then five moves.)

**Methods Needed**
---

Player turns
Board Initialization
Player Rolls Again
Climbs Ladder
Snake Slide
Winner
Game Over
Play Again?

Board Initialization:
- Array of integers 0..100
or 
- MAX = 100
  - this way you can just add your die totals, and if your total equals 100 exactly, then you win.

Player Turns:
- PLAYER_SQUARE = sum total of dice
  - move to square x
    - if Ladder or snake include square x
      - move accordingly
    - if dice1 == dice2
      - roll again
    NEXT PLAYERS TURN

Climbs Ladder:
- Hash of key value pairs
  - keys will reference the bottom of the ladders
  - values will represent the tops of ladders
  - if the hash inlcudes a key that matches the integer that the player has landed on, then the PLAYER_SQUARE will now equal the value that key referenced

Snake Slides:
- Same idea as ladder

Winner:
- If PLAYER SQUARE == MAX
  - then player wins
  - GAME OVER
  - PLAY AGAIN?








