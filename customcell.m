// CustomCell
// 自定义cell
//
// IDECodeSnippetCompletionPrefix: cc
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 7CB1C80B-C86D-46DF-88C0-FF5884B8CB45
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark  tableView代理方法

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    return 100;
    
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    return 10;
    
    
}


- (UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString* cellIndentifer = @"cell3";
    
    MyOrderCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifer];
    if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"MyOrderCell" owner:nil options:nil];
        cell = array[0];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}
