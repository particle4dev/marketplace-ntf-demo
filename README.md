## I. Compile and deploy smart contract 

- STEP 1: Copy the source code to [remix.ethereum.org](https://remix.ethereum.org/). It will looks like this:

![](./pictures/screen-shot-2021-10-28-12-59-48.png "")

- STEP 2: Check "Auto compile" checkbox in compiler configuration section:

![](./pictures/screen-shot-2021-10-28-at-12-59-58.png "")

- STEP 3: Deploy these contracts:

![](./pictures/screen-shot-2021-10-28-at-13.11.19.png "")

![](./pictures/screen-shot-2021-10-28-at-13.13.27.png "")

![](./pictures/screen-shot-2021-10-28-at-13.12.04.png "")

After successful deployment, you will see a screen like this

![](./pictures/screen-shot-2021-10-28-at-13.14.58.png "")

## II. Set values

- User address:

USER A: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 (Token owner and deployer)

USER B: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2

USER C: 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c

- Contract address:

TOKEN ADDRESS: 0xd9145CCE52D386f254917e481eB44e9943F39138

NFT ADDRESS: 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8

MARKETPLACE ADDRESS: 0xf8e81D47203A594245E36C48e151709F0C19fBe8

- STEP 1: USER A transfer 1000000 token to USER B

![](./pictures/screen-shot-2021-10-28-at-13.31.18.png "")

![](./pictures/screen-shot-2021-10-28-at-13.31.47.png "")

- STEP 2: USER A transfer NFT ID 100 to USER C

![](./pictures/screen-shot-2021-10-28-at-13.38.42.png "")

![](./pictures/screen-shot-2021-10-28-at-13.39.png "")

## III. Make a transaction

Let's say USER B wants to buy USER C's NFT ID 100 for 10000 TOKEN and MARKETPLACE will take 20% of the transaction fee. 
Here are the steps you do it:

- STEP 1: Allow MARKETPLACE ADDRESS to transfer any NFT owned by USER C:

(NOTE: call function from address C)

![](./pictures/screen-shot-2021-10-28-at-13.52.33.png "")

![](./pictures/screen-shot-2021-10-28-at-13.52.55.png "")

![](./pictures/screen-shot-2021-10-28-at-13.53.10.png "")

- STEP 2: Allow MARKETPLACE ADDRESS to transfer 20000 TOKEN from USER B to any address

(NOTE: call function from address B)

![](./pictures/screen-shot-2021-10-28-at-14.06.14.png "")

![](./pictures/screen-shot-2021-10-28-at-14.07.01.png "")

![](./pictures/screen-shot-2021-10-28-at-14.07.39.png "")

- STEP 3: Make a swap from USER B

![](./pictures/screen-shot-2021-10-28-at-14.13.35.png "")

USER B is now the owner of NFT ID 100

![](./pictures/screen-shot-2021-10-28-at-14.14.37.png "")

Balance of USER C

![](./pictures/screen-shot-2021-10-28-at-14.15.11.png "")

Balance of USER B

![](./pictures/screen-shot-2021-10-28-at-14.15.31.png "")

Balance of USER A

![](./pictures/screen-shot-2021-10-28-at-14.15.57.png "")

## Reference

- https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol

- https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
