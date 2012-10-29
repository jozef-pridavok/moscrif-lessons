class FrameworkPoint
{

    function this(x, y)
    {
        this._x = x;
        this._y = y;
    }

    property x(v) {
        get return this._x;
        set this._y = v;
    }

    property y(v) {
        get return this._y;
        set this._y = v;
    }

    function setPos(x, y)
    {
        this.x = x;
        this.y = x;
    }

    function print()
    {
        console << "[" << this._x << ", " << this._y << "]\n";
    }

}

var p1 = new FrameworkPoint(10, 20);
p1.print();
