// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract TestVisibilidad {
    uint public publicVar;
    uint private privateVar;
    uint internal internalVar;

    function setPublicVarExternal(uint _value) external {
        publicVar = _value;
    }

    function setPrivateVar(uint _value) private  {
        privateVar = _value;
    }
    
    function setInternalVarInterno(uint _value) internal {
        internalVar = _value;
    }

    function actualizarNumero(uint _value) public {
        setPrivateVar(_value);
        setInternalVarInterno(_value);
    }

    function getTestExternal() external view returns (uint) {
        return publicVar;

    }
   
}

contract ContratoDerivado is TestVisibilidad {
    function actualizarNumeroDesdeDerivado(uint _nuevoNumero) public {
        setInternalVarInterno(_nuevoNumero);
    }
}