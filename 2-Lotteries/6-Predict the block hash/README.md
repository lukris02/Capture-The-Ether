# Predict the block hash
https://capturetheether.com/challenges/lotteries/predict-the-block-hash/

1. Call the function "lockInGuess" with the argument ("0x0000000000000000000000000000000000000000000000000000000000000000"), msg.value should be == 1 ether.
2. Wait 256+ blocks after completing the previous step.
3. Call the function "settle".*

*You may need to call the function "settle" several times if there were attempts to call the function "lockInGuess" with the wrong argument. To complete this challenge the contract balance should be == 0.