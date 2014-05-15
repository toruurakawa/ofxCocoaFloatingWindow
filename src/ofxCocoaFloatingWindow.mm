//
//  ofxCocoaFloatingWindow.mm
//
//  Created by TORU URAKAWA on 2014/05/15.
//
//

#include "ofxCocoaFloatingWindow.h"

void ofxCocoaFloatingWindow::setupWithIgnoringMouseEvents(bool bIgnoreMouseEvents) {
	NSOpenGLContext *context = [NSOpenGLContext currentContext];
	NSView *view = [context view];
	NSWindow *window = [view window];
		
    BOOL b = bIgnoreMouseEvents ? YES : NO;
    [window setIgnoresMouseEvents:b];
    [window setLevel:kCGFloatingWindowLevel];
}