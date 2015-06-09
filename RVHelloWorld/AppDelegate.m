//
//  AppDelegate.m
//  RVHelloWorld
//
//  Created by Richard Salvatierra on 6/9/15.
//  Copyright (c) 2015 Renewed Vision. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong) NSString *feedback;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application

}

- (IBAction) talkToMe:(id)sender {
    
    NSAlert *anAlert = [NSAlert new];
    anAlert.alertStyle = NSInformationalAlertStyle;
    anAlert.messageText = @"Hello World";
    [anAlert addButtonWithTitle:@"Hello"];
    [anAlert addButtonWithTitle:@"Goodbye"];
    NSModalResponse response = anAlert.runModal;
    if(response == NSAlertFirstButtonReturn){
        self.feedback = @"Hello back";
    }else{
        self.feedback = @"See you later";
    }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
