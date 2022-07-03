# Retirement fund
https://capturetheether.com/challenges/math/retirement-fund/

1. Use RetirementFundSolution.sol to force-send 1 wei to the Capture-The-Ether contract. Change variable "contractAddress" and deploy the contract "RetirementFundSolution", msg.value should be ==  1 wei.
2. Call the function "collectPenalty" (RetirementFundChallenge contract). address(this).balance > startBalance => uint256 withdrawn will overflow.