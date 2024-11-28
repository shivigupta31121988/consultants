Created a simple contract using truffle config.

Followed the steps:

terminal 
* mkdir consultants <foldername>
* cd consultants
* truffle init

the init will create folders - contracts, migrations,test and create a truffle-config.js file

We have to create a Contract.sol file, which is a contract written in solidity. Make sure the version is 0.8.13

Also verify the truffle-config.js file is also pointing to the same version.
uncomment the section containing development section of module.exports in the config file.

Post creating the contract file, run the command 
* truffle compile

This will compile the contract and create a new file Contract.json in build/contracts folder which contains the meta data about the compiled contract.

Next we have to deploy the contract to a blockchain. I used the tool ganache (https://sourceforge.net/projects/ganache.mirror/) to setup a local blockchain network, with the same development properties in network section of the truffle-config file.

To setup ganache, we add a workspace and provide the path of the truffle-config.js file for it to pick up details and show in the local blockchain

Next we create a migrations file named "1_initial_migration.js" to migrate or deploy the contract onto the blockchain.
Then we run the command 
* truffle migrate

This will deploy the contract into ganache.

To verify the contract 

we perform the following commands within the terminal:

* truffle console
* let instance = await StoreValue.deployed()
* instance.set(42)
* instance.get()

This will provide details of the transaction which can be viewed on ganache too. Thhe gasUsed and transaction hash are to be noted.

This complete codebase gives a basic functioning of a smart contract in a  blockchain.
            