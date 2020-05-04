pragma solidity >=0.4.22 <0.7.0;
pragma experimental ABIEncoderV2;

/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract GCSmartContract {

    uint256 balance;
    string code;
    string[] transactions;
   
    /**
     * constructor to issue a new Gift Card
     */
      constructor(uint256 _balance,string memory _code) public {
      balance = _balance;
      code=_code;
   }
   
     /**
     * function to redeem Gift Card with amount and transaction date
     */
    function redeeem(uint256 amount,string memory description) public {
        assert(balance >= amount); //throw error if the balance is not endough
        balance=balance-amount;
        transactions.push(description);
        
        
    }

     /**
     * function to return current balance on the Gift Card
     */
    function getBalance() public view returns (uint256){
        return balance;
    }
    
     /**
     * function to return current balance on the Gift Card
     */
    function gettransactions() public view returns (string[] memory){
        return transactions;
    }
    
}
