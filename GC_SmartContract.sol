pragma solidity >=0.4.22 <0.7.0;

/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract GCSmartContract {

    uint256 balance;
    bytes32 code;
    bytes32[] transactions;
   
    /**
     * constructor to issue a new Gift Card
     */
      constructor(uint256 _balance, bytes32 _code) public {
      balance = _balance;
      code=_code;
   }
   
     /**
     * function to redeem Gift Card with amount and transaction date
     */
    function redeeem(uint256 amount,bytes32 date) public {
        balance=balance-amount;
        transactions.push(date);
        
        
    }

     /**
     * function to return current balance on the Gift Card
     */
    function balance() public view returns (uint256){
        return balance;
    }
}
