package states;

import flixel.FlxState;
import flixel.FlxG;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();
		#if (desktop && !debug)
		AutoUpdater.checkForUpdates();
		#end
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.SPACE)
		{
			trace(AutoUpdater.CURRENT_VERSION);
		}
		super.update(elapsed);
	}
}
