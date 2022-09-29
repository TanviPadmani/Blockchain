// SPDX-License_Identifier; MIT

pragma solidity ^0.6.0;

import "./simple.sol";

contract storage_factory is simple{

        simple[] public simpleStorageArray;

    function createsimplestoragecontract() public {
        simple simpleStorage = new simple();
        simpleStorageArray.push(simpleStorage);
        }

    function sfstore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

        //Address
        //ABI(appliction binary interface)
        simple simpleStorage = simple(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        simple simpleStorage= simple(address(simpleStorageArray[_simpleStorageIndex]));
         return simpleStorage.retrieve();
    }

    
}

Output :

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: storage_factory.simpleStorageArray(uint256)
data: 0x645...00000
from	0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to	storage_factory.simpleStorageArray(uint256) 0xd9145CCE52D386f254917e481eB44e9943F39138
execution cost	25892 gas (Cost only applies when called by a contract)
input	0x645...00000
decoded input	{
	"uint256 ": "0"
}
decoded output	{
	"0": "address: 0x5C9eb5D6a6C2c1B3EFc52255C0b356f116f6f66D"
        }
        
