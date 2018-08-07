//
//  Player.m
//  2PlayerMath
//
//  Created by Kyla  on 2018-08-06.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "Player.h"

@implementation Player


- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = [[NSString alloc] init];
        _score = 0;
        _lives = 3; 
    }
    return self;
}


-(NSString *)getScore:(BOOL)evaluateResult {
    if (evaluateResult) {
        self.score++;
    }else {
        self.score--;
    }
    NSString *scoreString = [[NSString alloc] init];
    scoreString = [NSString stringWithFormat:@"Player1 score: %ld", self.score];
    
    return scoreString;
}

-(NSString *)loseLives:(BOOL)evaluateLoss {
    if (evaluateLoss) {
        self.score++;
    } else {
        self.score--;
    }
    NSString *livesString = [[NSString alloc] init];
    livesString = [NSString stringWithFormat:@"Player1 score: %ld lives: %ld",self.score, self.lives];
    return livesString; 
}

//-(NSString *)yourScore:(NSString *)result {
//    if ([result isEqualTo:@"Right!"]) {
//        self.right = self.right +1;
//    } else {
//        self.wrong = self.wrong +1;
//    }
//    NSString *scoreString = [NSString stringWithFormat:@"score: right, %@ wrong", @(self.right), @(self.wrong)];
//        return scoreString;
//}






@end
