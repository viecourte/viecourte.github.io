Attribute VB_Name = "NewMacros"
Sub SelectAllTables()
    Dim tempTable As Table
    Application.ScreenUpdating = False
    '判断文档是否被保护
    If ActiveDocument.ProtectionType = wdAllowOnlyFormFields Then
        MsgBox "文档已保护，此时不能选中多个表格！"
        Exit Sub
    End If
    '删除所有可编辑的区域
    ActiveDocument.DeleteAllEditableRanges wdEditorEveryone
    '添加可编辑区域
    For Each tempTable In ActiveDocument.Tables
        tempTable.Range.Editors.Add wdEditorEveryone
    Next
    '选中所有可编辑区域
    ActiveDocument.SelectAllEditableRanges wdEditorEveryone
    '删除所有可编辑的区域
    ActiveDocument.DeleteAllEditableRanges wdEditorEveryone
    Application.ScreenUpdating = True
End Sub
