// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Saibloud{
    // definimos la moneda 
    string public name;
    string public symbol;

    constructor(){
        name = "Saibloud";
        symbol= "SAIB";
    }
}