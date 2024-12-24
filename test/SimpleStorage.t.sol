//SPDX-License-Identifier:MIT
pragma solidity ^0.8.16;

import "forge-std/Test.sol"; 
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
        simpleStorage.store(0);
    }

    function test_store() public {
        simpleStorage.store(1);
        assertEq(simpleStorage.retrieve(), 1);
    }

    function test_addPeople() public {
        simpleStorage.addPeople("Oyindamola", 1);
        assertEq(simpleStorage.getNum("Oyindamola"), 1);
    }
}