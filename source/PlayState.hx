package;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxState;
import flixel.addons.ui.FlxButtonPlus;
import flixel.system.FlxAssets;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();



		FlxG.cameras.bgColor = FlxColor.fromRGB(36, 36, 163);
        
		FlxG.sound.playMusic("assets/music/lets_do_OK.mp3", 1, true);



		var text = new FlxText(-700, 143, 800, "THIS IS JUST A TEST.");
        text.setFormat("assets/fonts/OCRAEXT.TTF", 55, FlxColor.fromRGB(255, 0, 0));
		FlxTween.tween(text, {x: 310, y: 142}, 5.0, {ease: FlxEase.expoOut});
		add(text);

		var text2 = new FlxText(-750, 498, 800, "I AM IN THE (above) BEGINNERS STUFF.");
		text2.setFormat("assets/fonts/OCRAEXT.TTF", 55, FlxColor.fromRGB(255, 0, 0));
		FlxTween.tween(text2, {x: 328, y: 498}, 5.0, {ease: FlxEase.expoOut});
		add(text2);

		var myWeb:FlxButtonPlus;
		myWeb = new FlxButtonPlus(0, 0, goToWeb, "GO TO MY WEBSITE", 154, 19);
		myWeb.screenCenter();
		add(myWeb);

		var creditText = new FlxText(-1111, 669, 1111, "(JUST A HEADS-UP) Credits to Beardy for making the music. It's not mine.");
		FlxTween.tween(creditText, {x: 90, y: 669}, 5.0, {ease: FlxEase.expoOut});
		creditText.setFormat("assets/fonts/OCRAEXT.TTF", 24, FlxColor.fromRGB(255, 0, 0));
		/*LEAVING THIS UNUSED SINCE MUSIC ISN'T WORKING */
	}

	function goToWeb()
	{
		FlxG.openURL("https://spartavr.neocities.org");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
