//
//  PDFPage.h
//  HomeDepotDisplayTestbench
//
//  Created by Hong Zhang on 5/24/14.
//  Copyright (c) 2014 Foxit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PDFPage : NSObject


-(void)setSize:(CGSize)pageSize;
-(void)setCurrentRect:(CGRect)viewingRect;
-(UIImage*)generateScreenImage;
-(void)formTouchBegin:(UITouch*)touch;
-(void)formTouchMove:(UITouch*)touch;
-(void)formTouchEnd:(UITouch*)touch;
-(void)closePage;

@end
