# Donation
https://capturetheether.com/challenges/math/donation/

1. Use DonationSolution.sol to convert msg.sender address to uint256.
2. Call the function "donate" with the argument (found number at step 1), msg.value should be == (found number at step 1)/10^36 Wei.*
3. Call the function "withdraw".

*Explanation:
```
Donation donation;
donation.timestamp = now;
donation.etherAmount = etherAmount;
```
This creates an uninitialized storage pointer.  
"donation.timestamp" writes to the storage slot 0, and "donation.etherAmount" writes to the storage slot 1 (where the variable "owner" is stored).  
So, the function argument "etherAmount" changes the variable "owner".