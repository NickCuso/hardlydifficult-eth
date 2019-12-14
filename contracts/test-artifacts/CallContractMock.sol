pragma solidity ^0.5.0;

import '../proxies/CallContract.sol';


/**
 * @title For testing only.
 */
contract CallContractMock
{
  using CallContract for address;

  function readUint(
    address _contract,
    bytes memory _callData
  ) public view
    returns (uint)
  {
    return _contract._readUint(_callData);
  }

  function call(
    address _contract,
    bytes memory _callData
  ) public payable
  {
    _contract._call(_callData, msg.value);
  }
}