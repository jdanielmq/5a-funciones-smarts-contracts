// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;


contract ModificadoresVPP {
    // modificador view

    string[] public nombres;
    uint  x = 10;

    function agregarNombre(string memory _nombre) public {
        nombres.push(_nombre);
    }
    function obtenerNombre(uint _index) public view returns (string memory) {
        return nombres[_index];
    }

    function sumarAyX(uint _a) public view returns (uint) {
        return _a + x;
    }

    // modificador pure
    function multiplcar(uint _a, uint _b) public pure returns (uint) {
        return _a * _b;
    }

    // modificador Payable
    mapping(address => Cartera) public saldoCartera;
    struct Cartera {
        string nombre;
        address direccion;
        uint saldo;
    }
    function agregarSaldo(string memory _nombre) public payable {
        Cartera memory cartera = Cartera(_nombre, msg.sender, msg.value);
        saldoCartera[msg.sender] = cartera;
    }

    function obtenerSaldo() public view returns (Cartera memory) {
        return saldoCartera[msg.sender];
    }

}