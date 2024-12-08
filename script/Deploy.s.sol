// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Books.sol";

contract Deploy is Script {
    Midterm public midterm;
    Midterm.Book public book;

    function setUp() public {
        vm.broadcast();

        midterm = new Midterm("Programming Foundry", "Ellan", 100);
    }

    function run() public {
        log_book();
    }

    function log_book() internal{
        book = midterm.get_book();
        console.log("Author :", book.author);
    }
}