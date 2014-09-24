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
        [self setUp];
    }
    return self;
}


- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp {
    self.label = [[UILabel alloc] init];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.label];
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

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    UIBezierPath *rectanglePath;
    rectanglePath = [UIBezierPath bezierPathWithRoundedRect:rect
                                               cornerRadius:self.cornerRadius];
    if (self.highlighted) {
        [self.highlightedTintColor setFill];
    } else {
        [self.tintColor setFill];
    }
    [rectanglePath fill];
}

@end
