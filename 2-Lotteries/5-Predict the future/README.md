# Predict the future
https://capturetheether.com/challenges/lotteries/predict-the-future/

1. Change variable "contractAddress" and deploy contract "PredictTheFutureSolution" from PredictTheFutureSolution.sol.
2. Call the function "lock", msg.value should be == 1 ether.*
3. Call the function "settle" until the transaction is confirmed.*
4. Call the function "destroy" to get ethers back.

*You may need to call the function "settle" several times until the balance of the challenge contract becomes 0. To complete this challenge the contract balance should be == 0.