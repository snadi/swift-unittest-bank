import XCTest
@testable import BankAccount

final class BankAccountTests: XCTestCase {
    var account: BankAccount!

    override func setUp() {
        account = try! BankAccount(initialBalance: 100)
    }

    func testDeposit() throws {
        try account.deposit(amount: 50)
        XCTAssertEqual(account.balance, 150)
    }

}
