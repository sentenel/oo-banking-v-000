require 'pry'
class BankAccount
  attr_accessor :balance, :status
  attr_reader :name


  def initialize(name)
    @name = name
    self.balance = 1000
    self.status = "open"
  end

  def deposit(amount)
    binding.pry
    balance += amount
  end

end
