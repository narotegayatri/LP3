pragma solidity >=0.4.0 <0.6.0;
contract bank
{
    int bal;
    constructor()public 
    {
        bal =100;
    }
    function showBalance()view public returns(int)
    {
        return bal;
    }
    function withdrawMoney(int amt)public
    {
        bal = bal - amt;
    }
    function depositMoney(int amt)public
    {
        bal = bal + amt;
    }
}
