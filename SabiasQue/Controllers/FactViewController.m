//
//  FactViewController.m
//  SabiasQue
//
//  Created by Francisco Jean on 04/09/25.
//

#import "FactViewController.h"

@interface FactViewController ()

@end

@implementation FactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    switch (self.category) {
        case 0: [self.categoryLabel setTitle:@"Ciencia" forState:UIControlStateNormal]; break;
        case 1: [self.categoryLabel setTitle:@"Cultura" forState:UIControlStateNormal]; break;
        case 2: [self.categoryLabel setTitle:@"Historia" forState:UIControlStateNormal]; break;
        default: [self.categoryLabel setTitle:@"" forState:UIControlStateNormal];
    }
    
    self.factLabel.text = @"¿Sabías que el corazón de una ballena azul puede pesar más de 180 kg?";
}

@end
