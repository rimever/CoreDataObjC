//
//  Document.h
//  CoreData Mac
//
//  Created by Ryohei Miura on 2014/04/06.
//  Copyright (c) 2014年 Ryohei Miura. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSPersistentDocument
@property (strong) IBOutlet NSArrayController *arrayController;

@end
