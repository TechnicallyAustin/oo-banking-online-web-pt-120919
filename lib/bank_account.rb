class BankAccount
  @@all = []
attr_accessor :balance, :transer, :status, :display_balance
attr_reader :name
def initialize(name, balance = 1000, status = "open")
  @name = name
  @balance = balance 
  @status = status
  @@all << self 
end

def deposit(amount)
  @balance += amount
end

def display_balance
  "Your balance is $#{@balance}."
end

def valid?
  if balance > 0 && status == "open"
    true
  else
    false 
  end
end

def close_account
  self.status = "closed"
  @balance = 0 
end

end
