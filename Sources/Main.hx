package;

import kha.Framebuffer;

import haxe.ui.Toolkit;
import haxe.ui.core.Screen;

class Main {
	public static function main() {
		kha.System.start({}, function ( _ ) {
			kha.Assets.loadEverything(function() {
				Toolkit.init();

				final screen = Screen.instance;
				final bar = new BarView();
				final foo = bar.foo;
				trace(foo == null);

				screen.addComponent(bar);

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
