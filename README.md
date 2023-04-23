# SOLIDITY FINAL ASSESSTMENT

This Solidity is the final project to show off code that creates a basic token contract. This will provide Solidity beginners with a brief introduction to the procedures used to create tokens, burn them, and check the balances. 

## Description

Solidity is a programming language designed for developing smart contracts that run on the Ethereum Virtual Machine. This project requires making a contract that can be used to create tokens with two variables: public variables that store details about coins and mapping variables to map addresses to balances. Then there are two functions: the mint function, which increases the total supply by that number and increases the balance of the address by that amount, and the burn function, which works the opposite of the mint function as it will destroy tokens. However, burn functions have conditionals to make sure that the balance is greater than or equal to the amount that is supposed to be burned. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., salinas.sol). Copy and paste the following code into the file:

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

To compile the code, click the "Solidity Compiler" tab in the left-hand sidebar. Next, click the "salinas.sol" button, then click compile code and wait for the green check to appear in the "Solidity Compiler" logo. After that, using the "Deploy & Run Transactions" tab in the left-hand sidebar, you can deploy the contract after the code has been compiled. From the drop-down menu, choose the "salinas.sol" contract, and then press the "Deploy" button. When the contract is ready for use, you can interact with it by expanding the Deployed Contracts area below the address. Simply clicking the arrow button on the left side of your deployed contract will expand it. You can now interact with the contract you generated. To set up the changes, simply enter the necessary information, such as the address (just copy the account address), the token's value, and the number of tokens you wish to mint, burn, and then transact. Just select "balances" to check it.


## Authors

Salinas, Julianne A.


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
