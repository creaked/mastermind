## Mastermind

![Alt text](https://image.ibb.co/fsNLbk/Screen_Shot_2017_08_18_at_6_50_19_PM.png "Game Screen Shot")

If you've never played Mastermind, a game where you have to guess your opponent's secret code within a certain number of turns (like hangman with colored pegs), check it out on <a href="http://en.wikipedia.org/wiki/Mastermind_(board_game)">Wikipedia</a>.  Each turn you get some feedback about how good your guess was -- whether it was exactly correct or just the correct color but in the wrong space.

### How to play:
1. ``$ git clone https://github.com/creaked/mastermind.git``
2. ``$ cd mastermind``
3. ``$ bundle install``
4. ``$ ruby bin/mastermind.rb``

### TODO:
1. Implement codemaker
2. Add AI
3. Add rspec tests
4. Refactor

***

### Your Task

Build a Mastermind game from the command line where you have 12 turns to guess the secret code, starting with you guessing the computer's random code.

1. Think about how you would set this problem up!
2. Build the game assuming the computer randomly selects the secret colors and the human player must guess them.  Remember that you need to give the proper feedback on how good the guess was each turn!
3. Now refactor your code to allow the human player to choose whether she wants to be the creator of the secret code or the guesser.
4. Build it out so that the computer will guess if you decide to choose your own secret colors.  Start by having the computer guess randomly (but keeping the ones that match exactly).
5. Next, add a little bit more intelligence to the computer player so that, if the computer has guessed the right color but the wrong position, its next guess will need to include that color somewhere.  Feel free to make the AI even smarter.