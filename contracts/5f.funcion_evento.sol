// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Eventos {
    event DpositoTest(string indexed nombre);
    event DpositoTest2(string indexed nombre, uint cantidad);
    event DpositoTest3(string nombre, uint, address indexed, bytes32);


    //funcion Evento 1
    function depositar(string memory _nombre) public {
        //code
        emit DpositoTest(_nombre);
    }

    //funcion Evento 2
    function depositar2(string memory _nombre, uint _cantidad) public {
        //code
        emit DpositoTest2(_nombre, _cantidad);
    }

    //funcion Evento 3
    function depositar3(string memory _nombre, uint _edad) public {
        bytes32 hashId = keccak256(abi.encodePacked(_nombre, _edad, msg.sender));
        //code
        emit DpositoTest3(_nombre, _edad, msg.sender, hashId);
    }
}