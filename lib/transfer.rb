class Transfer
   attr_accessor :amount, :sender, :receiver, :status
   
   def initialize(sender, receiver, amount)
     @amount = amount 
     @sender = sender 
     @receiver = receiver
     @status = "pending"
   end 
   
   def valid?
     sender.valid? && receiver.valid?
   end 
   
   def execute_transaction 
     if @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
   end 
  
end
