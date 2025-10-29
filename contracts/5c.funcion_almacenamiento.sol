// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract TestStorage{
    uint256 public storeData;
    
    function setValue(uint _Num) external  {
        storeData = _Num;
    }
    
    function getValue() external view returns (uint256) {
        return storeData;
    }
    
    function addValue(uint _Num) external {
        storeData += _Num;
    }

}

contract TestMemory {
    //definimos una funcion externa que recibe una cadena de texto y devuelve su longitud
    function stringLength(string memory _str) external pure returns (uint) {
        //convertimos la cadena de calldata a memory
        bytes memory stringBytes = bytes(_str);
        //devolver la longitud de la cadena
        return stringBytes.length;
    }

 }


 contract TestCallData {
    //Definimos una funcion externa que reciba dos parametros
    function add(uint _a, uint _b) external pure returns (uint) {
         uint result = _a + _b;
        //devolvemos la suma de los dos parametros
        return result;
    }

 }