//
//  GPCMLPAutoCompleteDemoViewController.m
//  MLPAutoCompleteDemoStoryboard
//
//  Created by Giorgio Piacentini on 05/07/14.
//
//

#import "GPCMLPAutoCompleteDemoViewController.h"

@interface GPCMLPAutoCompleteDemoViewController ()

@end

@implementation GPCMLPAutoCompleteDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - MLPAutoCompleteTextFieldDelegate
- (void)autoCompleteTextField:(MLPAutoCompleteTextField *)textField
  didSelectAutoCompleteString:(NSString *)selectedString
       withAutoCompleteObject:(id<MLPAutoCompletionObject>)selectedObject
            forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(selectedObject){
        NSLog(@"selected object from autocomplete menu %@ with string %@", selectedObject, [selectedObject autocompleteString]);
    } else {
        NSLog(@"selected string '%@' from autocomplete menu", selectedString);
    }
}

@end
