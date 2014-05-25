//
//  PDFDocument.h
//  HomeDepotDisplayTestbench
//
//  Created by Hong Zhang on 5/24/14.
//  Copyright (c) 2014 Foxit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PDFPage.h"
#import "../include/fpdf_document.h"
#import "../include/fpdf_formfield.h"

@interface PDFDocument : NSObject
{
    //PDF document bandler.
    FPDF_DOCUMENT m_fpdfdoc;
    
    FPDF_FORMENV m_formhandle;
}

-(int)countFormField;
-(int)countPages;
-(PDFPage*) getPageByIndex: (int)index;


@end
