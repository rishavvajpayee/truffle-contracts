const todo = artifacts.require("Todos");

module.exports = function (deployer) {
  deployer.deploy(todo);
};
