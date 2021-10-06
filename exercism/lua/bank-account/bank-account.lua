local BankAccount = {}

function BankAccount:new()
  local obj = { account_balance = 0, closed = false }
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function BankAccount:deposit(amount)
  if self.closed then
    error("account is closed")
  end
  if amount <= 0 then
    error("amount should be positive")
  end
  self.account_balance = self.account_balance + amount
end

function BankAccount:withdraw(amount)
  if self.closed then
    error("account is closed")
  end

  if amount <= 0 or amount > self.account_balance then
    error("amount must be positive and must be less than your current balance")
  end
  self.account_balance = self.account_balance - amount
end

function BankAccount:balance()
  return self.account_balance
end

function BankAccount:close()
  self.closed = true
end

return BankAccount
