include "lib://core/log.ms"
include "lib://game2d/game.ms"

// custom script class
class FrameworkSprite
{
    // Bitmap is native class
    var box = Bitmap.fromFile("app://gfx/sprite.png");
    function this(x, y)
    {
        this._x = x;
        this._y = y;
    }
    function draw(canvas)
    {
        canvas.drawBitmap(box, this._x, this._y);
    }
}

class TestGame : Game
{

    function start()
    {
        super.start();
        this._sprite = new FrameworkSprite(100, 100);
    }

    function draw(canvas)
    {
        super.draw(canvas);
        this._sprite.draw(canvas);
    }
}

// create instace and run the game
new TestGame().run();
