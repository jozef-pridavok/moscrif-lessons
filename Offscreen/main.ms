include "lib://core/log.ms"
include "lib://game2d/game.ms"
include "app://gfx.ms"

// custom game class
class Offscreen : Game
{
    function start()
    {
        super.start();

        // load graphical resources
        GFX.load();

        // offscreen drawing
        this._offscreen = Bitmap.fromRect(200, 200);        // created offscreen bitmap
        var canvas = Canvas.fromBitmap(this._offscreen);    // get canvas to paint to
        var paint = new Paint();
        paint.imageFilter = ImageFilter.blur(5, 5);         // apply blur filter to a bitmap
        canvas.drawBitmap(GFX.box, (this._offscreen.width - GFX.box.width)/2, (this._offscreen.height - GFX.box.height)/2, paint);

        // prepare game with two sprites, the first on has "normal" bitmap, the second one has bitmap altered by "advance" method
        this._initSprites(GFX.box, this._offscreen);
    }

    function draw(canvas)
    {
        // custom drawings - background
        canvas.drawBitmap(GFX.background, 0, 0);
        // default drawings
        super.draw(canvas);
    }

    function process()
    {
        // just rotate all sprites
        for (var sprite in this._sprites)
            sprite.angle += 0.1;
    }

    function _initSprites(normal, offscreen)
    {
        // create the first sprite
        this.add(new Sprite({image:normal, x:System.width/3, y:System.height/2}));
        // create the second sprite
        this.add(new Sprite({image:offscreen, x:System.width/3*2, y:System.height/2}));
    }

}

// create instace and run the game
new Offscreen().run();
