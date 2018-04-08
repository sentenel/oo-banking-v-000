class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    self.status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if status == "pending" && sender.balance >= amount
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    end
    "Transaction rejected. Please check your account balance." if sender.balance < amount
  end
end
