//
//  PDFDocument.m
//  HomeDepotDisplayTestbench
//
//  Created by Hong Zhang on 5/24/14.
//  Copyright (c) 2014 Foxit. All rights reserved.
//

#import "PDFDocument.h"

@implementation PDFDocument

-(BOOL) openPDFDocument: (const char*) file
{
    if(m_fpdfdoc != NULL)
    {
        FPDF_Doc_Close(m_fpdfdoc);
        m_fpdfdoc = NULL;
        m_pfilepath = NULL;
    }
    m_pfilepath = file;
    FILE* fp = fopen(m_pfilepath, "rb");
    if(fp == NULL)
    {
        NSLog(@"File %s is not exist!", file);
        return FALSE;
    }
    
    m_fileread.GetSize = FileGetSize;
    m_fileread.ReadBlock = FileReadBlock;
    m_fileread.Release = FileReadRelease;
    m_fileread.clientData = fp;
    
    FS_RESULT ret = FPDF_Doc_Load(&m_fileread, NULL, &m_fpdfdoc);
    ret = FPDF_Doc_GetPageCount(m_fpdfdoc, &m_pageCount);
	if(ret != FS_ERR_SUCCESS)
		return FALSE;
	
	FPDF_FormFill_InitEnvironment(m_fpdfdoc, &m_formfillinfo, &m_formhandle);
	m_pPageArray = new FPDF_PAGE[m_pageCount];
	memset(m_pPageArray, 0, sizeof(FPDF_PAGE)*(m_pageCount));
	m_current_page = [self getPDFPage:0];
	m_pPageArray[0] = m_current_page;
	return TRUE;
}


-(int)countFormField
{
    FPDF_FormFill_Draw(m_formhandle, dib, page,-nstartx,-nstarty,sizex,sizey, 0,0);

}

-(int)countPages
{
    
}

-(PDFPage*) getPageByIndex: (int)index
{
    
}


@end
