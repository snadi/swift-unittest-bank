# BankAccount Swift Example

This repository contains a simple implementation of a `BankAccount` class in Swift, demonstrating basic banking operations like depositing, withdrawing, and transferring funds. This repo is used for practicing simple unit testing.

This repo uses [XCTests](https://developer.apple.com/documentation/xctest/) for unit testing, and llvm-cov for tracking coverage.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- **Swift**: You can download the latest version of Swift from the [official Swift website](https://swift.org/download/).
- **Xcode**: You need to download and install Xcode as some of the testing frameworks don't come with the xcode command line tools. You can download it from the [Mac App Store](https://apps.apple.com/us/app/xcode/id497799835?mt=12).

## Building the code and Running the Unit tests

1. **Clone the Repository**: Clone the project to your local machine.
    ```bash
    git clone <repository-url>
    cd <your-project-directory>
    ```

2. **Build the Project**: 
    ```bash
    swift build
    ```

3. Run the unit tests

```bash
swift test --enable-code-coverage
```

4. Get a coverage report summary

```
xcrun llvm-cov report \
    --instr-profile=.build/debug/codecov/default.profdata  \
    --object .build/arm64-apple-macosx/debug/BankAccount.build/BankAccount.swift.o
```

This gives you a very ugly coverage summary on the terminal and for some reason doesn't detect the branches in the code. If you develop directly in xcode, there are probably better code coverage tools that have better visuals.

## Your Task

Add tests to `BankAccountTest.swift` to achieve 100% statement coverage for the BankAccount class. Ideally, we want to also test 100% branch coverage but the current coverage tool used isn't correctly tracking branches.

