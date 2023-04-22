// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    
    // public variables here
        string public name = "JULIA";
        string public abbrv = "JL";
        uint public supply = 0;

    // mapping variable here
        mapping(address => uint) public blnc;

    // mint function
        function mint(address add, uint val) public{
            supply += val;
            blnc[add] += val;
        }
        
    // burn function
        function burn(address add, uint val) public{
            if(blnc[add] >= val){
                supply -= val;
                blnc[add] -= val;
            }
        }
}