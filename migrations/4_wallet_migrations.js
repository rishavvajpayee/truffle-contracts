const newwallet = artifacts.require("EtherWallet");

module.exports = function (deployer) {
  deployer.deploy(newwallet);
};
