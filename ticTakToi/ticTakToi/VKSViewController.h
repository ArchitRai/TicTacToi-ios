//
//  VKSViewController.h
//  ticTakToi
//
//  Created by archit rai saxena on 22/05/2014.
//  Copyright (c) 2014 vksoft. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface VKSViewController : UIViewController

// the X (cross) or O(xero) images

{
    IBOutlet UIImage * oImg;
    IBOutlet UIImage * xImg;
   NSInteger playerToken;
   //UIImageView *s1,*s2,*s3,*s4,*s5,*s6,*s7,*s8,*s9;
    
    
}


    //wire the board to “board” and the label to “whoseTurn.” Also wire the button to a “resetButton” property.


    @property( weak,nonatomic)IBOutlet UIImageView *board;
    
    @property( weak,nonatomic )IBOutlet UIButton *resetButton;
      @property(weak,nonatomic) IBOutlet UILabel *whoseTurn;
    //wire all 8 buttons to UIImageView IBOutlets labeled s1-s9
    @property(  nonatomic,weak) IBOutlet UIImageView *s1;
    @property( weak, nonatomic) IBOutlet UIImageView *s2;
    @property( weak, nonatomic) IBOutlet UIImageView *s3;
    @property( weak, nonatomic) IBOutlet UIImageView *s4;
    @property( weak, nonatomic) IBOutlet UIImageView *s5;
    @property( weak, nonatomic) IBOutlet UIImageView *s6;
    @property( weak, nonatomic) IBOutlet UIImageView *s7;
    @property( weak, nonatomic) IBOutlet UIImageView *s8;
    @property( weak, nonatomic) IBOutlet UIImageView *s9;
@property(weak,nonatomic) IBOutlet UILabel *xl;
@property(weak,nonatomic) IBOutlet UILabel *ol;
      
    //IBAction to trigger when the touch downevent on the UIButton occurs. Call the event “buttonReset.”

- (IBAction)buttonReset:(UIButton *)sender;

// create three method prototypes to be used for the game logic


-(void) updatePlayerInfo;
-( void) resetBoard;
-(BOOL)checkForWin;
@end
