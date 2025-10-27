// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Testfunctions {

    address[] private direcciones;

    function agregarDireccion() public {
        direcciones.push(msg.sender);
    }

    function obtenerDireccion(uint _index) public view returns(address) {
        return direcciones[_index];
    }

    function obtenerLongitud() public view returns(uint) {
        return direcciones.length;
    }
}