pragma solidity ^0.4.21;

contract GuessTheRandomNumberSolution {
    
    bytes32 previousBlockHash = 0x7800da1ca1b387c3602044b9f76e12bda76e0ad551d28892ed7fc2cc20bd4607;
    uint contactCreationTimestamp = 1655634696; 

    function guess() public view returns (uint8)  {
        return uint8(keccak256(previousBlockHash, contactCreationTimestamp));
    }
}