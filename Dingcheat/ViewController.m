//
//  ViewController.m
//  Dingcheat
//
//  Created by 齐飞薄 on 2019/4/29.
//  Copyright © 2019 BF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //获取路径对象
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    //获取完整路径
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSString *plistPath = [documentsDirectory stringByAppendingPathComponent:@"Location.gpx"];
    
    NSMutableDictionary *dictplist = [[NSMutableDictionary alloc] init];
    
    NSError *error;
    NSString *textFieldContents=[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Locationx" ofType:@"gpx"] encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"--textFieldContents---%@-----",textFieldContents);
    if (textFieldContents==nil) {
        NSLog(@"---error--%@",[error localizedDescription]);
    }
    NSArray *lines=[textFieldContents componentsSeparatedByString:@"\n"];
    NSLog(@"number of lines in the file:%ld",[lines count]);
}



@end
