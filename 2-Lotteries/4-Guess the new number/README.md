# Guess the new number
https://capturetheether.com/challenges/lotteries/guess-the-new-number/

1. Change variable "contractAddress" and deploy the contract "GuessTheNewNumberSolution" from GuessTheNewNumberSolution.sol.
2. Call the function "guess", msg.value should be == 1 ether.*
3. Call the function "destroy" to get ethers back.

*You may need to call the function "guess" several times until the balance of the challenge contract becomes 0. To complete this challenge the contract balance should be == 0.