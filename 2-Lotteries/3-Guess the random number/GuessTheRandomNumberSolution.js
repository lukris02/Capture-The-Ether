//https://web3playground.io/
async function main() {
  var contractAddress = '0x5A7780B24d71831aeAcc57E5D17A74A9ee122ED7';
  // get storage at slot 0
  var storageAt0;
  var a;
  web3.eth.getStorageAt(contractAddress, 0, (err, res) => { 
  // convert to uint
  console.log(`0: uint8: ${web3.utils.toDecimal(res)}`);
  });
}
