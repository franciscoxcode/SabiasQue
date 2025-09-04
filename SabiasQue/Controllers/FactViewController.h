//
//  FactViewController.h
//  SabiasQue
//
//  Created by Francisco Jean on 04/09/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FactViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *factLabel;
@property (nonatomic, assign) NSInteger category;
@property (weak, nonatomic) IBOutlet UIButton *categoryLabel;

@end

NS_ASSUME_NONNULL_END
