pragma solidity ^0.8.4;

import "erc721a/contracts/ERC721A.sol";

contract birthday is ERC721A {
    constructor(string memory name, string memory symbol) 
			ERC721A(name, symbol) {}

    function mint(uint256 quantity) external payable {
        // `_mint`'s second argument now takes in a `quantity`, not a `tokenId`.
        _mint(msg.sender, quantity);
    }
}