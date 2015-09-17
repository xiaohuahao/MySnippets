// HttpRequest
// 网络请求
//
// IDECodeSnippetCompletionPrefix: httprequest
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 3B3646B7-5F25-492A-99AE-99D5BF698D84
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (void)sendMessageWithName:(NSString *)name chatInfo:(NSString *)chatInfo completionBlock:(void (^) (NSDictionary *dict))block
{
    __block ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:HOST]];
    
    [request addPostValue:@"ST_CS" forKey:@"command"];
    [request addPostValue:GETTOKEN forKey:@"access_token"];
    [request addPostValue:name forKey:@"friendname"];
    [request addPostValue:[chatInfo base64EncodedString] forKey:@"chatinfo"];
    
    [request setCompletionBlock:^
     {
         NSLog(@"string  %@",request.responseString);
         
         NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:request.responseData options:NSJSONReadingAllowFragments error:nil];
         
         block(dict);
     }];
    
    [request startAsynchronous];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"新闻中心";
    
    [ZYHttpManager getNewsListRequestWithCompletionBlock:^(NSMutableArray *array)
     {
         // 接受解析之后的数组
         self.array = array;
         [_tableView reloadData];
     }];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 480) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView release];
}
