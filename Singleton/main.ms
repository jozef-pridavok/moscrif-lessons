class Singleton
{
    // static (class) member
    var _instance = null;

    function this()
    {
        assert Singleton._instance == null;
        Singleton._instance = this;
    }

    //
    property instance(v)
    {
        get {
            // this is static!
            assert this === Singleton;
            if (Singleton._instance == null)
                new Singleton();
            return Singleton._instance;
        }
    }
}

// access to singleton using "instance" property
var ins = Singleton.instance;
console << (ins === Singleton.instance) << "\n";