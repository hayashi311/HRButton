//
//  HRButton.m
//  Pods
//
//  Created by hayashi311 on 9/23/14.
//
//

#import "HRButton.h"

@interface HRButton ()
@property (nonatomic, retain) UILabel *label;
@end

@implementation HRButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.label = [[UILabel alloc] init];
        self.label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.label];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.label.frame = (CGRect){.origin = CGPointZero, .size = self.frame.size};
}

- (NSString *)title {
    return self.label.text;
}

- (void)setTitle:(NSString *)title {
    self.label.text = title;
}

- (UIColor *)titleColor {
    return self.label.textColor;
}

- (void)setTitleColor:(UIColor *)titleColor {
    self.label.textColor = titleColor ? titleColor : [UIColor blackColor];
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    UIBezierPath *rectanglePath;
    rectanglePath = [UIBezierPath bezierPathWithRoundedRect:rect
                                               cornerRadius:self.cornerRadius];
    if (self.selected) {
        [self.selectedTintColor setFill];
    } else {
        [self.tintColor setFill];
    }
    [rectanglePath fill];
}

@end
