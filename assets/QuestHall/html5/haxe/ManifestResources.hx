package;

import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txty4:sizezy4:typey4:TEXTy2:idR1y7:preloadtgoR0y56:assets%2Fimages%2FFinalAnimation%2Fchang_spritesheet.pngR2i2884R3y5:IMAGER5R7R6tgoR0y64:assets%2Fimages%2FFinalAnimation%2Fghost_normal_spritesheet.jsonR2i6255R3R4R5R9R6tgoR0y63:assets%2Fimages%2FFinalAnimation%2Fghost_normal_spritesheet.pngR2i20305R3R8R5R10R6tgoR0y63:assets%2Fimages%2FFinalAnimation%2Fghost_nurse_spritesheet.jsonR2i6231R3R4R5R11R6tgoR0y62:assets%2Fimages%2FFinalAnimation%2Fghost_nurse_spritesheet.pngR2i26431R3R8R5R12R6tgoR0y67:assets%2Fimages%2FFinalAnimation%2Fopeningcinematic_spritesheet.pngR2i107287R3R8R5R13R6tgoR0y58:assets%2Fimages%2FFinalAnimation%2Fplayer_spritesheet.jsonR2i14282R3R4R5R14R6tgoR0y57:assets%2Fimages%2FFinalAnimation%2Fplayer_spritesheet.pngR2i38057R3R8R5R15R6tgoR0y71:assets%2Fimages%2FFinalAnimation%2Fsecurity_stationary_spritesheet.jsonR2i6350R3R4R5R16R6tgoR0y70:assets%2Fimages%2FFinalAnimation%2Fsecurity_stationary_spritesheet.pngR2i19995R3R8R5R17R6tgoR0y30:assets%2Fimages%2Fgameover.pngR2i7054R3R8R5R18R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R4R5R19R6tgoR0y29:assets%2Fimages%2Ftextbox.pngR2i3024R3R8R5R20R6tgoR0y30:assets%2Fimages%2Ftextbox2.pngR2i3128R3R8R5R21R6tgoR0y32:assets%2Fimages%2Ftextbox900.pngR2i3063R3R8R5R22R6tgoR2i544962R3y5:SOUNDR5y30:assets%2Fmusic%2FMainMusic.oggy9:pathGroupaR24hR6tgoR0y36:assets%2Fmusic%2Fmusic-goes-here.txtR2zR3R4R5R26R6tgoR2i1274912R3y5:MUSICR5y33:assets%2Fmusic%2FOpeningMusic.oggR25aR28hR6tgoR2i91436R3R23R5y32:assets%2Fsounds%2FDoor_Close.wavR25aR29hR6tgoR2i91436R3R23R5y31:assets%2Fsounds%2FDoor_Open.wavR25aR30hR6tgoR2i638448R3R23R5y57:assets%2Fsounds%2FIm_Professor_Chang_and_im_terrified.wavR25aR31hR6tgoR2i662448R3R23R5y61:assets%2Fsounds%2FIm_Professor_Chang_and_im_terrified_old.wavR25aR32hR6tgoR2i35324R3R23R5y30:assets%2Fsounds%2FInteract.wavR25aR33hR6tgoR2i363260R3R23R5y27:assets%2Fsounds%2FPhone.wavR25aR34hR6tgoR2i1046016R3R23R5y26:assets%2Fsounds%2Fring.wavR25aR35hR6tgoR2i158804R3R23R5y25:assets%2Fsounds%2Frip.wavR25aR36hR6tgoR2i1163660R3R23R5y29:assets%2Fsounds%2FThunder.wavR25aR37hR6tgoR0y29:assets%2Ftiled%2FBasement.tsxR2i199R3R4R5R38R6tgoR0y27:assets%2Ftiled%2FLevel1.tmxR2i11780R3R4R5R39R6tgoR0y27:assets%2Ftiled%2FLevel2.tmxR2i12365R3R4R5R40R6tgoR0y27:assets%2Ftiled%2FLevel3.tmxR2i7964R3R4R5R41R6tgoR0y28:assets%2Ftiled%2FOutside.tsxR2i197R3R4R5R42R6tgoR0y35:assets%2Ftiled%2FTiles_Basement.pngR2i27180R3R8R5R43R6tgoR0y33:assets%2Ftiled%2FTiles_Inside.pngR2i21406R3R8R5R44R6tgoR0y34:assets%2Ftiled%2FTiles_Outside.pngR2i28306R3R8R5R45R6tgoR2i8220R3R27R5y26:flixel%2Fsounds%2Fbeep.mp3R25aR46y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R27R5y28:flixel%2Fsounds%2Fflixel.mp3R25aR48y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i6840R3R23R5R47R25aR46R47hgoR2i33629R3R23R5R49R25aR48R49hgoR2i15744R3y4:FONTy9:classNamey35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R50R51y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i248R3R8R5R56R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i505R3R8R5R57R6tgoR0y42:flixel%2Fimages%2Ftransitions%2Fcircle.pngR2i824R3R8R5R58R6tgoR0y53:flixel%2Fimages%2Ftransitions%2Fdiagonal_gradient.pngR2i3812R3R8R5R59R6tgoR0y43:flixel%2Fimages%2Ftransitions%2Fdiamond.pngR2i788R3R8R5R60R6tgoR0y42:flixel%2Fimages%2Ftransitions%2Fsquare.pngR2i383R3R8R5R61R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_chang_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_ghost_normal_spritesheet_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_ghost_normal_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_ghost_nurse_spritesheet_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_ghost_nurse_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_openingcinematic_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_player_spritesheet_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_player_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_security_stationary_spritesheet_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_security_stationary_spritesheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gameover_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_textbox2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_textbox900_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_mainmusic_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_openingmusic_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_door_close_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_door_open_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_im_professor_chang_and_im_terrified_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_im_professor_chang_and_im_terrified_old_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_interact_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_phone_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_ring_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_rip_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_thunder_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiled_basement_tsx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiled_level1_tmx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiled_level2_tmx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiled_level3_tmx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiled_outside_tsx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiled_tiles_basement_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiled_tiles_inside_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tiled_tiles_outside_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/FinalAnimation/chang_spritesheet.png") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_chang_spritesheet_png extends lime.graphics.Image {}
@:keep @:file("assets/images/FinalAnimation/ghost_normal_spritesheet.json") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_ghost_normal_spritesheet_json extends haxe.io.Bytes {}
@:keep @:image("assets/images/FinalAnimation/ghost_normal_spritesheet.png") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_ghost_normal_spritesheet_png extends lime.graphics.Image {}
@:keep @:file("assets/images/FinalAnimation/ghost_nurse_spritesheet.json") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_ghost_nurse_spritesheet_json extends haxe.io.Bytes {}
@:keep @:image("assets/images/FinalAnimation/ghost_nurse_spritesheet.png") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_ghost_nurse_spritesheet_png extends lime.graphics.Image {}
@:keep @:image("assets/images/FinalAnimation/openingcinematic_spritesheet.png") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_openingcinematic_spritesheet_png extends lime.graphics.Image {}
@:keep @:file("assets/images/FinalAnimation/player_spritesheet.json") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_player_spritesheet_json extends haxe.io.Bytes {}
@:keep @:image("assets/images/FinalAnimation/player_spritesheet.png") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_player_spritesheet_png extends lime.graphics.Image {}
@:keep @:file("assets/images/FinalAnimation/security_stationary_spritesheet.json") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_security_stationary_spritesheet_json extends haxe.io.Bytes {}
@:keep @:image("assets/images/FinalAnimation/security_stationary_spritesheet.png") @:noCompletion #if display private #end class __ASSET__assets_images_finalanimation_security_stationary_spritesheet_png extends lime.graphics.Image {}
@:keep @:image("assets/images/gameover.png") @:noCompletion #if display private #end class __ASSET__assets_images_gameover_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/textbox.png") @:noCompletion #if display private #end class __ASSET__assets_images_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/images/textbox2.png") @:noCompletion #if display private #end class __ASSET__assets_images_textbox2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/textbox900.png") @:noCompletion #if display private #end class __ASSET__assets_images_textbox900_png extends lime.graphics.Image {}
@:keep @:file("assets/music/MainMusic.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_mainmusic_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/music/OpeningMusic.ogg") @:noCompletion #if display private #end class __ASSET__assets_music_openingmusic_ogg extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Door_Close.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_door_close_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Door_Open.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_door_open_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Im_Professor_Chang_and_im_terrified.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_im_professor_chang_and_im_terrified_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Im_Professor_Chang_and_im_terrified_old.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_im_professor_chang_and_im_terrified_old_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Interact.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_interact_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Phone.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_phone_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/ring.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_ring_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/rip.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_rip_wav extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Thunder.wav") @:noCompletion #if display private #end class __ASSET__assets_sounds_thunder_wav extends haxe.io.Bytes {}
@:keep @:file("assets/tiled/Basement.tsx") @:noCompletion #if display private #end class __ASSET__assets_tiled_basement_tsx extends haxe.io.Bytes {}
@:keep @:file("assets/tiled/Level1.tmx") @:noCompletion #if display private #end class __ASSET__assets_tiled_level1_tmx extends haxe.io.Bytes {}
@:keep @:file("assets/tiled/Level2.tmx") @:noCompletion #if display private #end class __ASSET__assets_tiled_level2_tmx extends haxe.io.Bytes {}
@:keep @:file("assets/tiled/Level3.tmx") @:noCompletion #if display private #end class __ASSET__assets_tiled_level3_tmx extends haxe.io.Bytes {}
@:keep @:file("assets/tiled/Outside.tsx") @:noCompletion #if display private #end class __ASSET__assets_tiled_outside_tsx extends haxe.io.Bytes {}
@:keep @:image("assets/tiled/Tiles_Basement.png") @:noCompletion #if display private #end class __ASSET__assets_tiled_tiles_basement_png extends lime.graphics.Image {}
@:keep @:image("assets/tiled/Tiles_Inside.png") @:noCompletion #if display private #end class __ASSET__assets_tiled_tiles_inside_png extends lime.graphics.Image {}
@:keep @:image("assets/tiled/Tiles_Outside.png") @:noCompletion #if display private #end class __ASSET__assets_tiled_tiles_outside_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,4,1/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,4,1/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,4,1/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,4,1/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/5,4,1/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/5,4,1/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-addons/3,2,1/assets/images/transitions/circle.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-addons/3,2,1/assets/images/transitions/diagonal_gradient.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-addons/3,2,1/assets/images/transitions/diamond.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-addons/3,2,1/assets/images/transitions/square.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end

#end