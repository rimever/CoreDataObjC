//
//  Document.m
//  CoreData Mac
//
//  Created by Ryohei Miura on 2014/04/06.
//  Copyright (c) 2014年 Ryohei Miura. All rights reserved.
//

#import "Document.h"

@implementation Document

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
    
    [self.arrayController fetch:self];
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end
