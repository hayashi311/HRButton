//
//  HRButton.h
//  Pods
//
//  Created by hayashi311 on 9/23/14.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface HRButton : UIControl

@property (nonatomic, strong) IBInspectable UIColor *selectedTintColor;
@property (nonatomic, strong) IBInspectable NSString *title;
@property (nonatomic, strong) IBInspectable UIColor *titleColor;
@property (nonatomic) IBInspectable NSUInteger cornerRadius;

@end
