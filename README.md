# SOLIDITY FINAL ASSESSTMENT

This Solidity is the final project to show off code that creates a basic token contract. This will provide Solidity beginners with a brief introduction to the procedures used to create tokens, burn them, and check the balances. 

## Description

The functions in this contract can be used to create tokens and burn them. Once the code is deployed, how the user entered data will determine how the code is executed. The purpose of this program is to impart a little bit of Solidity knowledge to beginners.  

This Solidity is an programming language designed for developing smart contracts that run on the Ethereum Virtual Machine. This project requires to make contract that can be used to create a tokens with two varibles; public variables that store details about coins and mapping variables to mapping addresses to balances. Then two functions; mint function that increases the total supply by that number and increases the balance of the address by that amount and burn function which works the opposite of the mint function, as it will destroy tokens. However, burn function have conditionals to make sure that the balance greater than or equal to the amount that is supposed to be burned.  
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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button. Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "salinas.sol" contract from the dropdown menu, and then click on the "Deploy" button. Once the contract is deployed, you can interact with it by expanding the area below the address which is the Deployed Contracts area. Expand your deployed contract by clicking the arrow button at the left side of it. You may now interact with your created contruct. Just input the needed data such as address(just copy the Account address), and the value of your token, as well as how many token you want to mint and burn then transact, in order for you to deploy the changes. You may check it by clicking the "balances". 

 
## Authors

Salinas, Julianne A.


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
