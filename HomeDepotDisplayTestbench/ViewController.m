//
//  ViewController.m
//  HomeDepotDisplayTestbench
//
//  Created by Hong Zhang on 5/24/14.
//  Copyright (c) 2014 Foxit. All rights reserved.
//


#define FoxitForm @"/Users/hong_zhang/Desktop/test doc/FoxitForm.pdf"
#define FW4 @"/Users/hong_zhang/Desktop/test doc/fw4.pdf"

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  /*
    pdfDocument = [[PDFDocument alloc]initWithPath: FoxitForm];
    PDFPage* pdfPage = [pdfDocument getPageByIndex:3];
    

    [pdfPage setSize:CGSizeMake(2048, 2048)];
    [pdfPage setCurrentRect:CGRectMake(500, 1024, 768, 1044)];
    
    
    _imageView.image = [pdfPage generateScreenImage];*/
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
