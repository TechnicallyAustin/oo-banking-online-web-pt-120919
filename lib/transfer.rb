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
   
 if @sender.valid? && @receiver.valid? 
   true 
   end
 end
   
 def execute_transaction(sender, receiver, amount)
   if sender.balance > amount && @status = "pending"
     if sender.valid? && receiver.valid?
     sender.balance -= amount
     receiver.balance += amount
     @status = "complete"
   elsif sender.balance < amount
        @status = "rejected"
     p "Transaction rejected. Please check your account balance."
   end
 end
 end
 
 def reverse_transfer
   if sender.balance > amount && @status = "complete"
     if sender.valid? && receiver.valid?
     sender.balance -= amount
     receiver.balance += amount
   end
 end
 end
 
end
