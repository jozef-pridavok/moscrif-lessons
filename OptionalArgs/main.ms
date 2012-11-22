function func(arg, arg2 = "abc", arg3 = 123)
{
    console << arg << ", " << arg2 << ", " << arg3 << "\n";
}

//func();
// output: Error: Wrong number of arguments

func("param1");
// output: param1, abc, 123

func("param1", "def");
// output: param1, def, 123

func("param1", "def", 456);
// output: param1, def, 456