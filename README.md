# Create a Token

This Solidity program is a simple "Hello World" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description



## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., salinas.sol).Copy and paste the following code into the file:

```javascript
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

```

## Authors

Salinas, Julianne A.
[@oxxolaleliaa](https://instagram.com/oxxolaliaa)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
