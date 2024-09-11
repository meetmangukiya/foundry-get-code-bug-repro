It can find the artifact if it is imported(see `ERC21`) in some test file, but defeats the purpose
when you want to use this to avoid compiler incompat errors. It cannot find the artifact for `ERC20`.

```
$ forge test -vvv --mc SomeTest
[⠊] Compiling...
No files changed, compilation skipped

Ran 2 tests for test/SomeTest.t.sol:SomeTest
[PASS] testErc21() (gas: 3821)
[FAIL. Reason: vm.getCode: no matching artifact found] testSomething() (gas: 2943)
Traces:
  [2943] SomeTest::testSomething()
    ├─ [0] VM::getCode("test/tokens/ERC20.sol:ERC20") [staticcall]
    │   └─ ← [Revert] vm.getCode: no matching artifact found
    └─ ← [Revert] vm.getCode: no matching artifact found

Suite result: FAILED. 1 passed; 1 failed; 0 skipped; finished in 1.04ms (493.54µs CPU time)

Ran 1 test suite in 186.79ms (1.04ms CPU time): 1 tests passed, 1 failed, 0 skipped (2 total tests)

Failing tests:
Encountered 1 failing test in test/SomeTest.t.sol:SomeTest
[FAIL. Reason: vm.getCode: no matching artifact found] testSomething() (gas: 2943)

Encountered a total of 1 failing tests, 1 tests succeeded
```

```
$ forge inspect ERC20 bytecode
0x6080604052348015600f57600080fd5b5060928061001e6000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c806340c10f1914602d575b600080fd5b605660048036036040811015604157600080fd5b506001600160a01b0381351690602001356058565b005b505056fea26469706673582212205b1f8d4c1bf36f85402158dddebb30b8f506f9d59f780eb441b9bc749bc7c2f364736f6c63430007060033
```

```
$ forge --version               
forge 0.2.0 (be451fb 2024-09-11T00:20:08.082212000Z)
```
