//
//  CategoryViewController.m
//  SabiasQue
//
//  Created by Francisco Jean on 04/09/25.
//

#import "CategoryViewController.h"

@interface CategoryViewController ()

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Actions

- (IBAction)categoryTapped:(UIButton *)sender {
    // Por ahora solo mostramos en consola cuál botón se presionó
    NSLog(@"Category tapped with tag: %ld", (long)sender.tag);
}

@end

