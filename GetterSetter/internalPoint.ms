class InternalPoint
{

    function this(x, y)
    {
        this.x = x;
        this.y = y;
    }

    function setPos(x, y)
    {
        this.x = x;
        this.y = x;
    }

    function print()
    {
        console << "[" << this.x << ", " << this.y << "]\n";
    }

}

var p2 = new InternalPoint(10, 20);
p2.print();