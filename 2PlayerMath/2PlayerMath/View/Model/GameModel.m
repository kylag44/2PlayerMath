//
//  GameModel.m
//  2PlayerMath
//
//  Created by Kyla  on 2018-08-06.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightValue = (arc4random_uniform(19) + 1);
        _leftValue = (arc4random_uniform(19) +1);
        _question = [NSString stringWithFormat:@"%@ + %@ = ?", @(_rightValue),@(_leftValue)];
        NSLog(@"%@", _question);
        _answer = _rightValue + _leftValue;
    }
    return self;
}




-(NSString *)generateQuestion {
    self.answer = self.leftValue + self.rightValue;
    self.question = [NSString stringWithFormat:@"%i + %i", self.leftValue, self.rightValue];
    return self.question;
}


-(BOOL)evaluate:(NSInteger)inputAns {
    if (inputAns == self.answer) {
        return YES;
    } else {
        return NO;
    }
    
}


@end
