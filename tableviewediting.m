// TableViewEditing
// 表的移动和删除
//
// IDECodeSnippetCompletionPrefix: te
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 72E2EE5E-183F-4824-BD6F-E9CD3C9443C9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
//设置表的编辑样式
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}
//点击添加按钮或者删除的时候会调用次方法
//如果说你想实现删除，那么只要仅仅实现下面这个commit方法即可
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //注意（重点）：执行删除操作的步骤
    //找到该分区的小数组
    NSMutableArray* array = [_detailArray objectAtIndex:indexPath.section];
    //删除这个元素
    [array removeObjectAtIndex:indexPath.row];
    //刷新表
    //[_tableView reloadData];
    
    [_tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
}
//如果说你想实现移动，那么需要实现下面这个move方法即可
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    NSLog(@"---> 从第%d个区的第%d行，移动到了从第%d个区的第%d行",sourceIndexPath.section,sourceIndexPath.row,destinationIndexPath.section,destinationIndexPath.row);
    //注意（重点）：执行移动操作的步骤
    //1.先找到要删除的元素
    NSMutableArray* sourceArray = [_detailArray objectAtIndex:sourceIndexPath.section];
    NSString* sourceString = [[sourceArray objectAtIndex:sourceIndexPath.row] retain];//加retain的原因，后面要删除这个元素
    //2.删除该元素
    [sourceArray removeObject:sourceString];
    //3.插入到相应位置
    NSMutableArray* destinArray = [_detailArray objectAtIndex:destinationIndexPath.section];
    [destinArray insertObject:sourceString atIndex:destinationIndexPath.row];
    //4.刷新表
    [tableView reloadData];
    NSLog(@"sourceString = %@",sourceString);
    
    
}
