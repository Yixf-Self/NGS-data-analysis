Private Sub CommandButton1_Click()
totalRows = 612
columnNumber = 1

For i = 2 To totalRows
    For j = 2 To 33208
        If Cells(i, columnNumber).Value = Cells(j, 11).Value Then
            Cells(i, columnNumber + 1).Value = Cells(j, 12).Value
        End If
    Next j
    For j = 2 To 33208
        If Cells(i, columnNumber).Value = Cells(j, 13).Value Then
            Cells(i, columnNumber + 2).Value = Cells(j, 14).Value
        End If
    Next j
    Cells(i, columnNumber + 3).Value = (Cells(i, columnNumber + 1).Value + Cells(i, columnNumber + 2).Value) / 2
Next i
      
End Sub