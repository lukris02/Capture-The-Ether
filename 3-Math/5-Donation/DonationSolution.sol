pragma solidity ^0.4.21;

contract DonationSolution {

     function convertToUint256(address msgSender) public pure returns (uint256) {
        return uint256(msgSender);
    }
    
}