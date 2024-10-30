public class BankAccount {
    public enum BankAccountError: Error {
        case negativeInitialBalance
        case nonPositiveDeposit
        case nonPositiveWithdraw
        case insufficientFunds
    }

    private(set) var balance: Double

    public init(initialBalance: Double) throws {
        if initialBalance < 0 {
            throw BankAccountError.negativeInitialBalance
        }
        self.balance = initialBalance
    }

    public func deposit(amount: Double) throws {
        if amount <= 0 {
            throw BankAccountError.nonPositiveDeposit
        }
        balance += amount
    }

    public func withdraw(amount: Double) throws {
        if amount <= 0 {
            throw BankAccountError.nonPositiveWithdraw
        }
        if amount > balance {
            throw BankAccountError.insufficientFunds
        }
        balance -= amount
    }

    public func transfer(to target: BankAccount, amount: Double) throws {
        try self.withdraw(amount: amount)
        try target.deposit(amount: amount)
    }
}
