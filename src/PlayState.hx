import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class PlayState extends FlxState {
  static inline var TILE_SIZE:Int = 16;

  var mapSprite:FlxSprite;

  var mapWidth:Int;
  var mapHeight:Int;

  override public function create() {
    super.create();

    mapWidth = Std.int(FlxG.width / TILE_SIZE);
    mapHeight = Std.int(FlxG.height / TILE_SIZE);

    // Create sprite to display map, will be scaled to fill screen
    mapSprite = new FlxSprite(0, 0);
    mapSprite.makeGraphic(mapWidth, mapHeight, FlxColor.RED);
    mapSprite.scale.set(TILE_SIZE, TILE_SIZE);
    mapSprite.screenCenter();
    add(mapSprite);

    var text = new flixel.text.FlxText(0, 0, 0, "Hello World", 64);
    text.screenCenter();
    add(text);
  }

  override public function update(elapsed:Float) {
    super.update(elapsed);
  }
}
