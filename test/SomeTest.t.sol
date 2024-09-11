import {Test} from "forge-std/Test.sol";

contract SomeTest is Test {
    function setUp() external {
        bytes memory code = vm.getCode("test/tokens/ERC20.sol:ERC20");
    }

    function testSomething() external {
    }
}
