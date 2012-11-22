function doOperation(operation, arg1, arg2) {
    return operation(arg1, arg2);
}

// regular function
var add = function(a, b) {
    return a + b;
}
console << doOperation(add, 10, 20) << "\n";
// output: 30

// anonymous lamba
console << doOperation(function(a, b) { return a - b; }, 100, 10) << "\n";
// output: 90

// lamba function block
console << doOperation(:a, b { return a * b; }, 10, 10) << "\n";
// output: 100

// lamba statement function block
console << doOperation(: a, b : a / b, 33, 3) << "\n";
// output: 11
