//
//  ViewController.m
//  Kontr
//
//  Created by efimikvitaliy on 29.10.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

#import "ViewController.h"
#import "Jokes.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;
@property (weak, nonatomic) IBOutlet UIButton *leftOutlet;
@property (weak, nonatomic) IBOutlet UIButton *rightOutlet;

@end

@implementation ViewController{
    NSArray * jokes;
    int counter;
    Jokes * list;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    list = [[Jokes alloc] init];
    [list putJoke:@"Joke 1"];
    [list putJoke:@"Joke 2"];
    [list putJoke:@"Joke 3"];
    [list putJoke:@"Joke 4"];
    [list putJoke:@"Joke 5"];
    //jokes = [[NSArray alloc] initWithObjects:@"Joke 1", @"Joke 2", @"Joke 3", @"Joke 4", @"Joke 5", nil];
    counter = 0;
    [_labelOutlet setText:[list getJokeAtIndex:counter]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)leftTouch:(id)sender {
    if(counter > 0)
        --counter;
    [_labelOutlet setText:[list getJokeAtIndex:counter]];
}
- (IBAction)rightTouch:(id)sender {
    if(counter < [list getSize] - 1)
        ++counter;
    [_labelOutlet setText:[list getJokeAtIndex:counter]];
}

@end
