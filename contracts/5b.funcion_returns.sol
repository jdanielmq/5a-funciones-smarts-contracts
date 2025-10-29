// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract TestReturn {

    //funcion 1: función que devuelve un saludo
    function saludo() public pure returns (string memory) {
        return "Hola mundo";
    }

    //funcion 2: funcion que devuelve una multiplicacion.
    function multiplicacion(uint _a, uint _b) public pure returns (uint) {
        return _a * _b;
    }

    //funcion 3: funcion que devuelve una resta.
    function resta(uint8 _a, uint8 _b) public pure returns (uint8) {
        return _a - _b;
    }

    //funcion 4: funcion que nos devuelve si es un par o impar 
    function parImpar(uint _a) public pure returns (string memory) {
        if (_a % 2 == 0) {
            return "par";
        } else {
            return "impar";
        }
    }

    //funcion 5: funcion que devuelve varios valores
    function variosValores() public pure returns (uint, string memory, bool) {
        return (5, "hola", true);
    }

    //funcion 6: funcion que devuelve el valor mas grande entre 2 numeros
    function valorMasGrande(uint _a, uint _b) public pure returns (uint) {
        if (_a > _b) {
            return _a;
        } else {
            return _b;
        }
    }

    //funcion 7: funcion que devuelve el valor mas pequeño entre 2 numeros
    function valorMasPequeno(uint _a, uint _b) public pure returns (uint) {
        if (_a < _b) {
            return _a;
        } else {
            return _b;
        }
    }

    //funcion 8: asigancion multiples valores
    function todosLosValores() public pure returns (uint _a, uint _b, string memory _c, bool _d) {
        uint a;
        uint b;
        string memory c;
        bool d;
        (a, b, c, d) = (5, 10, "hola", true);
        return (a, b, c, d);     //devuelve los valores
    }

    //funcion 9: asigancion de subconjunto de valores
    function subconjuntoValores() public pure returns (uint _a, string memory _c) {
        uint a;
        uint b;
        string memory c;
        bool d;
        (a, b, c, d) = (5, 10, "hola", true);
        return (a, c);     //devuelve los valores
    }
}