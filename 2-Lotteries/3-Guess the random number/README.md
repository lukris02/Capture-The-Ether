# Guess the random number
https://capturetheether.com/challenges/lotteries/guess-the-random-number/

1. Use GuessTheRandomNumberSolution.sol or GuessTheRandomNumberSolution.js get "random" number.
2. Call the function "guess" with the argument (found number at step 1), msg.value should be == 1 ether.*

*You may need to call the function "guess" with the correctly guessed number several times if there were attempts to call the function with the wrong answer. To complete this challenge the contract balance should be == 0.