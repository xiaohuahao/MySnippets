// DevelopmentProcess
// development process and header
//
// IDECodeSnippetCompletionPrefix: dp
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: CFA6ED47-862A-44E6-A4DA-E4F34160DFEE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2



// other
typedef NS_ENUM(NSInteger,<#ButtonTypeName#>) {
    
    <#ADDBUTTONTYPE#> = 1001,
    <#CHOOSEBUTTONTYPE#>,
    <#BACKNUTTONTYPE#>,
    <#LISTBUTTONTYPE#>,
};

#define buttonTypeName tag

#define SCREENSIZE [[UIScreen mainScreen] bounds].size
// URL
#define DALING_PAGE_URL @"http://m.api.zhe800.com/v4/deals?page=1&per_page=80&user_type=1&user_role=1"

@class MyNavButtonClickDelegate,SKYTabBarController;
// sharesdk


// TOOL
#import "HttpManager.h"
#import "AFNetworking.h"
#import "SKYTabBarController.h"

// CLASS

#import "DaLingViewController.h"
#import "ClassifyViewController.h"
