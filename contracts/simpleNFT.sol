// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract simpleNFT is ERC721 {

    uint256 public totalSupply;

    constructor(string memory name_, string memory symbol_) ERC721(name_, symbol_) {}

    function mint(uint256 _times) public {
        for(uint i=0; i<_times; i++){
            _mint(msg.sender, ++totalSupply);
        }
    }
}