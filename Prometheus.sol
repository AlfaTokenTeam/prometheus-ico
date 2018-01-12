pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Prometheus is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Prometheus(address _owner)  UpgradeableToken(_owner) {
    name = "Prometheus";
    symbol = "PRO";
    totalSupply = 10000000000000;
    decimals = 6;

    balances[_owner] = totalSupply;
  }
}