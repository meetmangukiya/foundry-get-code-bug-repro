```
$ forge test -vvv --mc SomeTest
[⠊] Compiling...
No files changed, compilation skipped

Ran 1 test for test/SomeTest.t.sol:SomeTest
[FAIL. Reason: setup failed: vm.getCode: no matching artifact found] setUp() (gas: 0)
Suite result: FAILED. 0 passed; 1 failed; 0 skipped; finished in 7.70ms (0.00ns CPU time)

Ran 1 test suite in 254.34ms (7.70ms CPU time): 0 tests passed, 1 failed, 0 skipped (1 total tests)

Failing tests:
Encountered 1 failing test in test/SomeTest.t.sol:SomeTest
[FAIL. Reason: setup failed: vm.getCode: no matching artifact found] setUp() (gas: 0)

Encountered a total of 1 failing tests, 0 tests succeeded
```

```
$ forge inspect ERC20 bytecode
0x6080604052348015600f57600080fd5b5060928061001e6000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c806340c10f1914602d575b600080fd5b605660048036036040811015604157600080fd5b506001600160a01b0381351690602001356058565b005b505056fea26469706673582212205b1f8d4c1bf36f85402158dddebb30b8f506f9d59f780eb441b9bc749bc7c2f364736f6c63430007060033
```

```
$ forge --version               
forge 0.2.0 (be451fb 2024-09-11T00:20:08.082212000Z)
```
