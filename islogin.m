// isLogin
// 登录判断，判断过期时间和是否有token
//
// IDECodeSnippetCompletionPrefix: isLogin
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: CF1A70B5-84D1-4852-A551-5262B8D21B24
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (BOOL)isLogin
{
    NSString *token = [[NSUserDefaults standardUserDefaults] objectForKey:@"token"];
    if (token == nil || [token isEqualToString:@""])
    {
        return NO;
    }
    
    NSDate *expireDate = [[NSUserDefaults standardUserDefaults] objectForKey:@"date"];
    
    if ([[NSDate date] compare:expireDate] == NSOrderedDescending)
    {
        return NO;
    }
    
    return YES;
}
