// decorator '@returns' - verification of returned value of the function
function @returns(func, return_type)
{
    return function(params..)
    {
        var rv = func.apply(this,params);
        if( typeof rv != return_type )
            throw String.printf("expected to return %s but got %s\n", return_type, typeof rv);
        return rv;
    }
}

@returns #integer
function add(a, b)
{
    return a + b;
}

console << add(10, 20) << "\n";
// output: 30

console << add(10, "20") << "\n";
// output (exception): expected to return integer but got string