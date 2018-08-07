//
//  Player.h
//  2PlayerMath
//
//  Created by Kyla  on 2018-08-06.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Player : NSObject


@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger lives;
@property (nonatomic) NSInteger score; 



-(NSString *)getScore:(BOOL)evaluateResult;

-(NSString *)loseLives:(BOOL)evaluateLoss;
@end
