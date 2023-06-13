// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract WoasNFTERC1155 is ERC1155
{
    uint256 tokenCount;
    constructor (string memory uri_) ERC1155 (uri_)
    {}
     
     function mint (uint256 amount) public 
     {
        tokenCount ++;
        _mint (_msgSender(),tokenCount, amount,"");

     }

     function mintBatch (uint256 [] memory ids, uint256 [] memory amounts, bytes memory data ) public
     {
        _mintBatch(_msgSender(), ids, amounts, data);
     }

}