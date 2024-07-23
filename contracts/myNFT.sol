// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage, Ownable {
    uint256 private _currentTokenId;  // Internal counter for token IDs

    constructor() ERC721("Code Eater", "CER") Ownable(msg.sender) {
        _currentTokenId = 0;  // Initialize counter to 0
    }

    function mintNFT(address recipient, string memory tokenURI)
        public
        onlyOwner
        returns (uint256) 
    {
        _currentTokenId++;  // Increment counter before minting

        uint256 newItemId = _currentTokenId;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}