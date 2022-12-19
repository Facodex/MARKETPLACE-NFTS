// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Migrations {

    address public owner = msg.sender;
    uint public last_completed_migration;

    modifier restricted(){
        require(
            msg.sender == owner,
            "This function is restricted to the contract's owner"
        );
        _;
    }

    // funcion para completar las migraciones 
    function setCompleted(uint completed) public restricted {
        last_completed_migration = completed;
    }   

    // funcion para actualizar la nueva direccion 
    function upgrade( address new_address ) public restricted {
        Migrations upgraded = Migrations( new_address );
        upgraded.setCompleted(last_completed_migration);
    }
}