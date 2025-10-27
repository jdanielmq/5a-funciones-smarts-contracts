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

    //functions two
    bytes32 public hash;
    function calcularHash(string memory _cadena) public {
        hash = keccak256(abi.encodePacked(_cadena));
    }

    //fucntion three: hacer uso de un tipo complejo llamado "comida" con nombre. precio e ingredientes

    struct Comida {
        string nombre;
        uint precio;
        string ingredientes;
    }

    Comida public paella;

    function prepararPaella(string memory _nombre, uint _precio, string memory _ingredientes) public {
        paella = Comida(_nombre, _precio, _ingredientes);

    }

    //function flour: trabajar con funciones privadas

    struct Futbolista {
        string nombre;
        uint dorsal;
        address direccion;
    }

    bytes32 public hashFutbolista;

    //calcular el hash de un futbolista
    function cacularHashFutbolista(string memory _nombre, uint _dorsal, address) private {
        hashFutbolista = keccak256(abi.encodePacked(_nombre, _dorsal, msg.sender));
    }

    Futbolista[] public futbolistas;
    mapping (string => bytes32) public futbolistasGuardados;
    function agregarFutbolista(string memory _nombre, uint _dorsal) public {
        cacularHashFutbolista(_nombre, _dorsal, msg.sender);
        futbolistas.push(Futbolista(_nombre, _dorsal, msg.sender));
        futbolistasGuardados[_nombre] = hashFutbolista;
    }

}