//
//  VKSViewController.m
//  ticTakToi
//
//  Created by Archit Rai Saxena on 22/05/2014.
//  Copyright (c) 2014 vksoft. All rights reserved.
//


#import "VKSViewController.h"

@interface VKSViewController ()


@end

@implementation VKSViewController
static int x,o;
@synthesize s1,s2,s3,s4,s5,s6,s7,s8,s9;
//Add the method to update the player info as follows:
- (void)updatePlayerInfo
{
    if(playerToken==1)
     {
    playerToken= 2;
   _whoseTurn.text=@"It is O turn";
  NSLog(@"playerToken = %ld",(long)playerToken);
         if([self checkForWin])
         {
             UIAlertView *someonewon = [[UIAlertView alloc] initWithTitle:@"There's a winner!"
                                        message
                                                                         :
                                        @"X Won. You have to Reset"
                                                                 delegate:self cancelButtonTitle:@"ok"otherButtonTitles:nil];
             [someonewon show];
             x++;
             NSString *string = [NSString stringWithFormat:@"%d", x];
             _xl.text=string;
             
            // [self resetBoard];
         }

      }
  else if (playerToken == 2)
    {
      playerToken = 1;
        _whoseTurn.text = @"It is X turn";
                NSLog(@"playerToken = %ld",(long)playerToken);
        if([self checkForWin])
        {
            UIAlertView *someonewon = [[UIAlertView alloc] initWithTitle:@"There's a winner!"
                                       message
                                                                        :
                                       @"O Won. You have to Reset"
                                                                delegate:self cancelButtonTitle:@"ok"otherButtonTitles:nil];
            [someonewon show];
            o++;
            NSString *strng=[NSString stringWithFormat:@"%d",o];
            _ol.text=strng;
            //[self resetBoard];
        }

            }
  

}
//Add the action for the reset button:
- (IBAction)buttonReset:(UIButton*)sender
{
    [self resetBoard];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // add the images
    oImg= [UIImage imageNamed:@"o.png"];
    xImg=[UIImage imageNamed:@"x.png"];
    
    // set the player to 1
    playerToken= 1;
    
    // update the label
    _whoseTurn.text=@"X goes first";
    
}
//Add the implementation for the “resetBoard” method:
-(void)resetBoard
{
    // clear the images stored in the UIIMageView
    s1.image=NULL;
    s2.image=NULL;
    s3.image=NULL;
    s3.image=NULL;
    s4.image=NULL;
    s5.image=NULL;
    s6.image=NULL;
    s7.image=NULL;
    s8.image=NULL;
    s9.image=NULL;
   // reset the player and update the label text
    playerToken= 1;
    _whoseTurn.text=@"X goes first" ;
}
//implement the game logic for the touching of the spaces on the board.
// the touch event for the tic tac toe game
- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
   {
      UITouch *touch = [[event allTouches]anyObject];
      if(CGRectContainsPoint([s1 frame], [touch locationInView:self.view]))
       {
           if(playerToken==1)
           {
       s1.image=xImg;
           }
            if(playerToken==2)
  
            {
            s1.image=oImg;
   
            }
    }
   
    if(CGRectContainsPoint([s2 frame],[touch locationInView: self.view]))
    {
        if(playerToken==1){
            s2.image=xImg;
            }
        if(playerToken==2)
        {
                s2.image=oImg;
        }
    }
    if(CGRectContainsPoint([s3 frame], [touch locationInView:self. view]))
    {
            if(playerToken==1)
            {
                    s3.image=xImg; }
            if(playerToken==2)
            {
                s3.image = oImg;
            }
        }
    if(CGRectContainsPoint([s4 frame], [touch locationInView:self.view]))
    {
            if (playerToken==1)
            {
                    s4.image=xImg ;
            }
            if (playerToken ==2)
            {
                    s4.image=oImg;
            }
        }
    if(CGRectContainsPoint([s5 frame], [touch locationInView :self.view]))
    {
        if(playerToken==1)
      { s5.image =xImg;
       }
            if( playerToken  ==2)
            {
                    s5. image=oImg;
            }
        }
    if(CGRectContainsPoint([s6 frame], [touch locationInView:self.view]))
    {
            if(playerToken==1){
                    s6.image=xImg ;
                }
            if(playerToken==2)
            {
                    s6.image=oImg;
                }
        }
    if(CGRectContainsPoint([s7 frame],[touch locationInView:self.view]))
    {
            if(playerToken==1)
            {
                    s7.image=xImg;
                }
            if(playerToken==2){
                    s7.image =oImg;
                }
        }
    if(CGRectContainsPoint ([s8 frame ], [touch locationInView: self. view]))
    {
            if(playerToken==1)
            {
                    s8.image=xImg;
            }
            if(playerToken==2)
            {
                    s8 .image= oImg;
                }
        }
    if(CGRectContainsPoint([s9 frame], [touch locationInView:self. view]))
    {
            if(playerToken==1)
            {
                    s9.image=xImg;
                }
            if(playerToken==2)
            {
                s9. image= oImg;
            }
        }
      [self updatePlayerInfo];
        NSLog(@"in xn");
}
// Now run the game and see what happens. It should work but there is no check for a winner yet. Add the following method implementation to
// method that will check to see if someone has won
//returns TRUE if someone wins
-(BOOL)checkForWin
{
    // HORIZONTAL WINS
    if((s1 .image ==s2.image) & (s2.image== s3.image) & (s1.image !=NULL))
    {
        return YES;
    }
    if((s4.image==s5. image) & (s5. image== s6.image) & (s4.image!=NULL))
    {
        return YES;
    }
    if((s7 . image==s8 .image) & (s8.image ==s9.image ) & (s7.image!=NULL ))
    {
        return YES;
    }
    // VERTICAL WINS
    if((s1.image== s4.image) & (s4  . image == s7 .image ) & (s1 .image !=NULL ))
    {
        return YES ;
    }
    if(( s2 . image==s5.image) & (s5.image==s8.image) & ( s2 .image!= NULL))
    {
        return YES;
    }
    if(( s3.image ==s6 .image) & ( s6 .image== s9. image) & (s3.image!= NULL))
    {
        return YES;
    }
    // DIAGONAL WINS
    if((s1.image==s5.image) & (s5.image==s9.image) & (s1.image!=NULL))
    {
        return YES;
    }
    if((s3.image==s5.image) & (s5.image==s7.image) & (s3.image!=NULL))
    {
        return YES;
    }
    return NO;
    
    //u now hv to check fr d win someplace.u cud do it in updatePlayerInfo method.If so you could put something lik dis in dat method:
   }
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
