package;

import kha.Framebuffer;

import haxe.ui.Toolkit;
import haxe.ui.core.Screen;
import view.FooView;

class Main {
	public static function main() {
		kha.System.start({}, function ( _ ) {
			kha.Assets.loadEverything(function() {
				Toolkit.init();

				final screen = Screen.instance;
				final foo = new FooView();

				screen.addComponent(foo);

				kha.System.notifyOnFrames(function( framebuffers: Array<kha.Framebuffer> ) {
					final fb = framebuffers[0];
					final g2 = fb.g2;
					g2.begin(true, kha.Color.White);
						screen.renderTo(g2);
					g2.end();
				});
			});
		});
	}
}
