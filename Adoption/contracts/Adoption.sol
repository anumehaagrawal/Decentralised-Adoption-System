pragma solidity ^0.4.17;

contract Adoption{
    // Storing addresses of accounts and public means only one element can be returned
    address[16] public adopters;

    //Mapping pets to address of accounts
    function adopt(uint petID) public returns (uint){
        require(petID>=0 && petID <= 15);
        // msg.sender is address of person or smart contract which called this function
        adopters[petID]= msg.sender;
        return petID;

    }
    // Since we used public for address we need to write function to return entire array
    function getAdopters() public view returns (address[16]){
        return adopters;
    }
}