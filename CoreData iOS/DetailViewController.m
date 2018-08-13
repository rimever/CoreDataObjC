//
//  DetailViewController.m
//  CoreData iOS
//
//  Created by Ryohei Miura on 2014/04/06.
//  Copyright (c) 2014年 Ryohei Miura. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *telephoneField;
@property (weak, nonatomic) IBOutlet UISlider *ageSlider;
- (void)configureView;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@end

@implementation DetailViewController
#pragma mark - 値の変更アクション
- (IBAction)changeName:(id)sender {
    [self.detailItem setValue:self.nameField.text forKey:@"name"];
    [self saveContext];
}
- (IBAction)changeTelephone:(id)sender {
    [self.detailItem setValue:self.telephoneField.text forKey:@"telephone"];
    [self saveContext];
}
- (IBAction)changeAge:(id)sender {
    int age = self.ageSlider.value;
    self.ageLabel.text = @(age).stringValue;
    
    [self.detailItem setValue:@(age) forKey:@"age"];
    [self saveContext];
}

-(void)saveContext
{
    NSManagedObjectContext * context = [self.detailItem managedObjectContext];
    NSError *error = nil;
    if (![context save:&error]) {
        NSLog(@"Save error: %@",error);
    }
}
#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.nameField.text = [self.detailItem valueForKey:@"name"];
        self.telephoneField.text = [self.detailItem valueForKey:@"telephone"];
        self.ageSlider.value = [[self.detailItem valueForKey:@"age"] intValue];
        self.ageLabel.text = [[self.detailItem valueForKey:@"age"] description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
