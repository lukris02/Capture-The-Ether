# Token whale
https://capturetheether.com/challenges/math/token-whale/

0. Let's assume that the account connected to Capture the Ether is account №1.
1. Using account №1 (msg.sender == account №1 address) call the function "transfer" with the arguments ("account №2 address", 1000).
2. Using account №2 (msg.sender == account №2 address) call the function "approve" with the arguments ("account №1 address", 1000).
3. Using account №1 (msg.sender == account №1 address) call the function "transferFrom" with the arguments ("account №2 address", "account №2 address", 1).  
(Function "transferFrom" calls the internal function "_transfer" which sends tokens from msg.sender. It allows us to cause an overflow.)
