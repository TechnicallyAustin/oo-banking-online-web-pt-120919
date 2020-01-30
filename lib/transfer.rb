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
   
 if sender.valid?
   true 
 else
   false 
 end
   
  end
   
   
   
 def execute_transaction (sender,receiver,amount)
     if sender.balance > amount && status == "pending"
     sender.balance -= amount
     receiver.balance += amount
     @status = "complete"
     
   elsif sender.balance < amount
        @status = "rejected"
     p "Transaction rejected. Please check your account balance."
     binding.pry 
   end
 end
 
 def reverse_transfer(sender,receiver,amount)
   if  @status = "complete"
     sender.balance -= amount
     receiver.balance += amount
     @status = reveresed
   end
 end

 
end
