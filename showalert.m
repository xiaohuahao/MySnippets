// ShowAlert
// alert with a massege
//
// IDECodeSnippetCompletionPrefix: sa
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 3738B067-AD95-4BCB-8001-FF7688FA62BD
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#define SHOWALERT(errMsg) UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:errMsg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];[alert show];

#define GETTOKEN  [[NSUserDefaults standardUserDefaults] objectForKey:@"token"]
