//
//  GameModel.h
//  2PlayerMath
//
//  Created by Kyla  on 2018-08-06.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameModel : NSObject

@property (nonatomic, assign)  NSString *question;
@property (nonatomic, assign)  NSInteger answer;
@property (nonatomic) int rightValue;
@property (nonatomic) int leftValue;

-(NSString *)generateQuestion;

-(BOOL)evaluate:(NSInteger)inputAns; 







@end
