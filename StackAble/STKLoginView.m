//
//  STKLoginView.m
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import "STKLoginView.h"
#import "STKAppDelegate.h"
#import "STKMainWindowController.h"
#import <ExchangeKit/ExchangeKit.h>

@interface STKLoginView ()

@property (nonatomic, strong) NSProgressIndicator *spinner;

@end

@implementation STKLoginView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    
	WebView *webView = [[WebView alloc]initWithFrame:NSInsetRect(frame, 20, 20) frameName:nil groupName:nil];
	webView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
	webView.frameLoadDelegate = self;
    [self addSubview:webView];
	EXKAuthScope scope = (EXKAuthScopeReadInbox | EXKAuthScopeNoExpiry | EXKAuthScopeWriteAccess | EXKAuthScopePrivateInfo);
	[[webView mainFrame]loadRequest:[EXKClient.sharedClient webAuthRequestForClientID:@"1683" authScopes:scope state:nil]];
	[webView setHidden:YES];
	
	_spinner = [[NSProgressIndicator alloc]initWithFrame:CGRectMake(NSMidX(frame) - 22, NSMidY(frame) - 22, 44, 44)];
	_spinner.style = NSProgressIndicatorSpinningStyle;
	_spinner.autoresizingMask = NSViewMinXMargin | NSViewMinYMargin | NSViewMaxXMargin | NSViewMaxYMargin;
	_spinner.controlTint = NSGraphiteControlTint;
	[_spinner setIndeterminate:YES];
	[self addSubview:_spinner];
	[_spinner startAnimation:NSApp];
	
    return self;
}

- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame {
	if ([sender.mainFrameURL hasPrefix:@"https://stackexchange.com/oauth/login_success#access_token="]) {
		[EXKClient.sharedClient authenticateUserWithAccessToken:[sender.mainFrameURL componentsSeparatedByString:@"="][1] ClientID:@"1683" key:@"f1FS4dD28U7iCbPLq)n*Ng(("];
		[self.window close];
		[[[NSApp delegate]mainWindowController]showWindow:NSApp];
	}
	[_spinner stopAnimation:NSApp];
	[_spinner setHidden:YES];
	
	[sender setHidden:NO];
}

- (void)webView:(WebView *)sender willPerformClientRedirectToURL:(NSURL *)URL delay:(NSTimeInterval)seconds fireDate:(NSDate *)date forFrame:(WebFrame *)frame {
	if ([URL.absoluteString isEqualToString:@"https://stackexchange.com/oauth/submit"]) {
		[sender setHidden:YES];
		
		[self.window setFrame:NSMakeRect(NSMinX(self.window.frame), NSMinY(self.window.frame), 280, 310) display:YES animate:YES];
		[_spinner startAnimation:NSApp];
		[_spinner setHidden:NO];
	}
}

- (void)drawRect:(NSRect)dirtyRect
{
	[[NSColor colorWithCalibratedWhite:0.946 alpha:1.000]set];
	NSRectFill(dirtyRect);
}

- (BOOL)mouseDownCanMoveWindow {
	return YES;
}

@end
