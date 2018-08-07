//
//  ViewController.m
//  2PlayerMath
//
//  Created by Kyla  on 2018-08-06.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionView;

@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;

@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;


@property (nonatomic) GameModel *gameModel;
@property (nonatomic) Player *player;
@property (nonatomic) NSString *userInput;
@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
 @end

@implementation ViewController

//////instead of this put _gameModel = [[GameModel alloc] init]; inside of viewDidLoad
//-(instancetype)initWithCoder:(NSCoder *)coder {
//    if (self = [super initWithCoder:coder]) { _gameModel = [[GameModel alloc] init];
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
   _gameModel = [[GameModel alloc] init];
    ///call self with uilabel and setting the text to the gameModel and generate question
    [self.questionView setText:[self.gameModel generateQuestion]];
    
    /////for players
    _player = [[Player alloc] init];
    [self.player1ScoreLabel setText:@"Player1 score: 0 lives: 3"];
    [self.player2ScoreLabel setText:@"Player2 score: 0 lives: 3"];
//    [self.player1ScoreLabel setText:[self.player1 loseLives]];
//    [self.player2ScoreLabel setText:[self.player2 loseLives]];
   /////for user input
    _userInput = [[NSString alloc] init];
}

- (IBAction)button1:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"1"];
}

- (IBAction)button2:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"2"];
}

- (IBAction)button3:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"3"];
}

- (IBAction)button4:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"4"];
}

- (IBAction)button5:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"5"];
}


- (IBAction)button6:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"6"];
}

- (IBAction)button7:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"7"];
}

- (IBAction)button8:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"8"];
}

- (IBAction)button9:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"9"];
}

- (IBAction)button0:(id)sender {
    self.userInput = [self.userInput stringByAppendingString:@"0"];
}


- (IBAction)buttonEnter:(id)sender {
    if ([self.gameModel evaluate:[self.userInput integerValue]]) {
        
        [self.player2ScoreLabel setText:@"Right"];
    } else {
        [self.player2ScoreLabel setText:@"Wrong"];
    }
        
    [self.player1ScoreLabel setText:[self.player getScore:[self.gameModel evaluate:[self.userInput integerValue]]]];
}

    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
