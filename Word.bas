Attribute VB_Name = "NewMacros"
Sub SelectAllTables()
    Dim tempTable As Table
    Application.ScreenUpdating = False
    '�ж��ĵ��Ƿ񱻱���
    If ActiveDocument.ProtectionType = wdAllowOnlyFormFields Then
        MsgBox "�ĵ��ѱ�������ʱ����ѡ�ж�����"
        Exit Sub
    End If
    'ɾ�����пɱ༭������
    ActiveDocument.DeleteAllEditableRanges wdEditorEveryone
    '��ӿɱ༭����
    For Each tempTable In ActiveDocument.Tables
        tempTable.Range.Editors.Add wdEditorEveryone
    Next
    'ѡ�����пɱ༭����
    ActiveDocument.SelectAllEditableRanges wdEditorEveryone
    'ɾ�����пɱ༭������
    ActiveDocument.DeleteAllEditableRanges wdEditorEveryone
    Application.ScreenUpdating = True
End Sub
