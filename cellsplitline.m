// CellSplitLine
// cell的分割线
//
// IDECodeSnippetCompletionPrefix: csl
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 5FF40BE3-EA1C-469A-90A5-48D5C9A93AA3
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark  cell分割线方法
-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext(); CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor); CGContextFillRect(context, rect);
    //上分割线
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithWhite:0.9 alpha:0.7].CGColor);
    CGContextStrokeRect(context, CGRectMake(0, 1, rect.size.width , 1));
    //    //下分割线
    //    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    //    CGContextStrokeRect(context, CGRectMake(0, rect.size.height, rect.size.width, 1));
}
