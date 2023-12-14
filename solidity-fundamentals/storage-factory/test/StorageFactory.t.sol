// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Test, console2} from "forge-std/Test.sol";
import {StorageFactory} from "../src/StorageFactory.sol";


contract StorageFactoryTest is Test {
    StorageFactory public storageFactory;
    address public contractAddress;

    function setUp() public {
        storageFactory = new StorageFactory();
        contractAddress = storageFactory.createSimpleStorageContract();
    }

    function testGetContracts() public {
        assertEq(storageFactory.getContracts(0), contractAddress); 
    }
}
