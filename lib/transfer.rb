require 'pry'
class Transfer
 @@all = []
 attr_accessor :sender, :receiver, :status, :amount
 attr_reader :bank_account
 def initialize(sender, receiver, amount, status = "pending")
   @sender = sender
   @receiver = receiver
   @status = status
   @amount = amount
   @@all << self 
   #binding.pry 
 end
 
 
 def valid?
   sender_bal = @sender.balance 
   receiver_bal = @receiver.balance
   send_stat = @sender.status
   receiver_stat = @receiver.status 
   
 if sender.valid? && receiver.valid?
   true 
 end
   
  end
   
   
   
 def execute_transaction
  if @sender.balance > @amount && @status == "pending"
    @sender.balance -= @amount
    @receiver.balance += @amount 
    @status == "complete"
  else
  @status = "rejected"
  "Transaction rejected. Please check your account balance."
  binding.pry
end
end




 
  def reverse_transfer
    if @status == "complete"
      sender.balance += @amount
      receiver.balance -= @amount
      @status = "reversed"
    end
  end
  
end
