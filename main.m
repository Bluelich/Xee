#import <Cocoa/Cocoa.h>

extern BOOL finderlaunch;

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool=[[NSAutoreleasePool alloc] init];
	[[NSUserDefaults standardUserDefaults] registerDefaults:[NSDictionary dictionaryWithObjectsAndKeys:
		@"1",@"windowOpening",
		@"1",@"windowResizing",
		@"1",@"jpegYUV",
		@"1",@"shrinkToFit",
		@"0",@"enlargeToFit",
		@"0",@"useMipMapping",
		@"NO",@"ilbmUseTransparentColor",
		@"NO",@"ilbmUseMask",
		@"YES",@"pngStrip16Bit",
		@"NO",@"force2D",
		@"2",@"antialiasQuality",
		@"NO",@"useOrientation",
		@"NO",@"rememberZoom",
		@"1",@"savedZoom",
		@"0",@"scrollWheelFunction",
		@"NO",@"wrapImageBrowsing",
		@"NO",@"autoFullscreen",
		@"NO",@"randomizeSlideshow",
		@"5",@"slideshowDelay",
		@"0",@"slideshowCustomDelay",
		@"0",@"defaultSortingOrder",
		@"YES",@"openFilePanelOnLaunch",
		@"NO",@"upsampleImage",
		[NSArchiver archivedDataWithRootObject:[NSColor whiteColor]],@"defaultImageBackground",
		[NSArchiver archivedDataWithRootObject:[NSColor blackColor]],@"windowBackground",
		[NSArchiver archivedDataWithRootObject:[NSColor blackColor]],@"fullScreenBackground",
	nil]];
    [pool release];

	finderlaunch=argc!=1;

    return NSApplicationMain(argc,(const char **)argv);
}
