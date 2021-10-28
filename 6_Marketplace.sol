// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.3.2/contracts/token/ERC20/IERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.3.2/contracts/token/ERC721/IERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.3.2/contracts/utils/math/SafeMath.sol";

contract Marketplace {
    using SafeMath for uint256;
    address public immutable adminAddress;
    
    constructor() {
        adminAddress = msg.sender;
    }
    
    function transferFromToken(address tokenAddress, address userC, uint256 amount) external {
        require(IERC20(tokenAddress).transferFrom(msg.sender, userC, amount));
    }
    
    function transferFromNFT(address nftAddress, address from, address to, uint256 tokenId) external {
        IERC721(nftAddress).transferFrom(from, to, tokenId);
    }
    
    function buyNew(address tokenAddress, address nftAddress, address userC, uint256 tokenId, uint256 amount) external {
        require(IERC20(tokenAddress).transferFrom(msg.sender, userC, amount));
        require(IERC20(tokenAddress).transferFrom(msg.sender, adminAddress, amount.div(5))); // take 20% fee

        IERC721(nftAddress).transferFrom(userC, msg.sender, tokenId);
    }
}