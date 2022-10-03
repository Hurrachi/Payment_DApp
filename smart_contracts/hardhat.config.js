//https://eth-goerli.g.alchemy.com/v2/wL3SlXZzqgqBUftRE60pZwmQTAnk75jv

require('@nomicfoundation/hardhat-chai-matchers');
require('@nomiclabs/hardhat-ethers');

module.exports = {
  solidity: '0.8.0',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/wL3SlXZzqgqBUftRE60pZwmQTAnk75jv',
      accounts: [ '6323242ad97e75a7090bb0319e17ae44229223d299fb6003b129ef9373429d06' ]
    }
  }
}