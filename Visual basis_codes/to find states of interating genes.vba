Sub ProcessFiles()
    Dim Filename, Pathname As String
    Dim wb As Workbook

    Pathname = ActiveWorkbook.Path & "\Files\"
    Filename = Dir(Pathname & "*.xls")
    Do While Filename <> ""
        Set wb = Workbooks.Open(Pathname & Filename)
        DoWork wb
        wb.Close SaveChanges:=True
        Filename = Dir()
    Loop
End Sub


Sub DoWork(wb As Workbook)
    With wb
        Dim ws                  As Worksheet
        For Each ws In wb.Worksheets
            Call execute(ws)
        Next
    End With
End Sub



Sub execute(ws As Worksheet)

With ws
rowsInA = 4000000
rowsInF = 4000000
startRow = 2
For i = 2 To rowsInF
    If IsEmpty(ws.Cells(i, 7).Value) Then
        Exit For
    End If
    
    inRange = -1
    
    For j = startRow To rowsInA
        If IsEmpty(ws.Cells(j, 1).Value) Or ws.Cells(j, 1).Value >= ws.Cells(i, 7).Value Then
            startRow = j
            Exit For
        End If
    Next j
    
    For j = startRow To rowsInA
        If IsEmpty(ws.Cells(j, 1).Value) Or ws.Cells(j, 1).Value > ws.Cells(i, 7).Value Then
            Exit For
        End If
        
        If ws.Cells(i, 7).Value = ws.Cells(j, 1).Value Then
            If ws.Cells(j, 2).Value >= ws.Cells(i, 8).Value And ws.Cells(j, 2).Value <= ws.Cells(i, 9).Value Then
                inRange = j
                Exit For
            End If
            If ws.Cells(j, 3).Value >= ws.Cells(i, 8).Value And ws.Cells(j, 3).Value <= ws.Cells(i, 9).Value Then
                inRange = j
                Exit For
            End If
            If ws.Cells(j, 2).Value <= ws.Cells(i, 8).Value And ws.Cells(j, 3).Value >= ws.Cells(i, 9).Value Then
                inRange = j
                Exit For
            End If
        End If
    Next j
    
    If inRange > -1 Then
        ws.Cells(i, 10).Value = ws.Cells(inRange, 1).Value
        ws.Cells(i, 11).Value = ws.Cells(inRange, 2).Value
        ws.Cells(i, 12).Value = ws.Cells(inRange, 3).Value
    End If
    
Next i

End With
End Sub



Private Sub CommandButton1_Click()
    Call execute(ws)
End Sub