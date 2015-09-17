// block
// block传值
//
// IDECodeSnippetCompletionPrefix: block
// IDECodeSnippetCompletionScopes: [ClassInterfaceMethods]
// IDECodeSnippetIdentifier: D94C3D74-BB87-45A6-90AD-2B003B25DD66
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
typedef void (^ReturnTextBlock)(NSString *showText);

@property (nonatomic, copy) ReturnTextBlock returnTextBlock;

- (void)returnText:(ReturnTextBlock)block;

- (void)returnText:(ReturnTextBlock)block {
    self.returnTextBlock = block;
}
- (void)viewWillDisappear:(BOOL)animated {
    
    if (self.returnTextBlock != nil) {
        self.returnTextBlock(self.inputTF.text);
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    TextFieldViewController *tfVC = segue.destinationViewController;
    
    [tfVC returnText:^(NSString *showText) {
        self.showLabel.text = showText;
    }];
}
