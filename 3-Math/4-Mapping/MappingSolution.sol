pragma solidity ^0.4.21;

contract MappingSolution {

    uint256 constant storageSize = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
    uint256 slotP = 1;
    uint256 offset = 1;

    function getIndex() public view returns (uint256) {
        return storageSize + offset - uint256(keccak256(slotP));
    }
}