// PickerViewSize
// show the pickerView size
//
// IDECodeSnippetCompletionPrefix: ps
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 9325344F-0AE5-4B88-8B5E-FCA5297082FC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
CGFloat color[4] = {1,1,1,1};
    
    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
    CGColorRef layerBounderColor = CGColorCreate(rgb, color);
    CGColorSpaceRelease(rgb);
    
    
    self.pickerView = [[UIPickerView alloc] initWithFrame:CGRectZero];
    
    CALayer *viewLayer = self.pickerView.layer;
    [viewLayer setBounds:CGRectMake(0, 0, 100, 100)];
    [viewLayer setBackgroundColor:layerBounderColor];
    [viewLayer setContentsRect:CGRectMake(0, 0, 10, 10)];
    [viewLayer setBorderWidth:20];
    [viewLayer setBorderColor:layerBounderColor];
    CGColorRelease(layerBounderColor);
