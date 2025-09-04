//
//  CategoryViewController.m
//  SabiasQue
//
//  Created by Francisco Jean on 04/09/25.
//

#import "CategoryViewController.h"
#import "FactViewController.h"

@interface CategoryViewController ()

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Actions

- (IBAction)categoryTapped:(UIButton *)sender {
    NSLog(@"Category tapped with tag: %ld", (long)sender.tag);
    [self performSegueWithIdentifier:@"showFact" sender:sender];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showFact"]) {
        if ([segue.destinationViewController isKindOfClass:[FactViewController class]]) {
            FactViewController *factVC = (FactViewController *)segue.destinationViewController;
            UIButton *button = (UIButton *)sender;
            factVC.category = button.tag;
        }
    }
}

@end
