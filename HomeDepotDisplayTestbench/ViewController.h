//
//  ViewController.h
//  HomeDepotDisplayTestbench
//
//  Created by Hong Zhang on 5/24/14.
//  Copyright (c) 2014 Foxit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDFDocument.h"

@interface ViewController : UIViewController
{
    PDFDocument* pdfDocument;
}


@property(strong, nonatomic) IBOutlet UIImageView* imageView;

@end
