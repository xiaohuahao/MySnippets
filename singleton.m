// Singleton
// Creat a singleton with a property
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 5262C8EF-F76B-4C54-8194-2484CDB3C9D9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
+(instancetype)<#sharedManager#>
{
    static <#Manager* manager#> = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        <#manager#> = [[<#Manager#> alloc] init];
    });
    return <#manager#>;
}


- (id)init {
    if (self = [super init]) {
        
        NSString* <#currentSkinBundle#> = [[NSUserDefaults standardUserDefaults] objectForKey:<#@"currentSkinBundle"#>];
        if (<#currentSkinBundle#>) {
            self.<#currentSkinBundle#> = <#currentSkinBundle#>;
        }
    }
    
    return self;
}
