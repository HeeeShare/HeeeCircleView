//
//  ViewController.m
//  HeeeCircleView-demo
//
//  Created by hgy on 2018/10/21.
//  Copyright © 2018年 hgy. All rights reserved.
//

#import "ViewController.h"
#import "HeeeCircleView.h"

@interface ViewController ()
@property (nonatomic,strong) HeeeCircleView *circleView;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _circleView = [[HeeeCircleView alloc] initWithFrame:CGRectMake(40, 80, 160, 160)];
    [self.view addSubview:_circleView];
    _circleView.circleColor = [UIColor purpleColor];
    _circleView.lineWidth = 15;
    _circleView.progress = 0.6;
    _circleView.duration = 2;
    [_circleView createCircleAnimate:YES];
    
    
    NSLog(@"");
}

- (IBAction)sliderValueDidChange:(UISlider *)sender {
    {
        _circleView.progress = sender.value;
        [_circleView createCircleAnimate:NO];
    }
}

@end
