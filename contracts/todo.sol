// 4cb8f5e0-6075-4cc3-859e-734c49405af7

pragma solidity >=0.8.17;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));
    }

    function get(uint256 _index)
        public
        view
        returns (string memory text, bool complted)
    {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function update(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleComplete(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

    function getAll() public view returns (Todo[] memory) {
        return todos;
    }
}
