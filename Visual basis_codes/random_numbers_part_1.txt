Private Sub CommandButton1_Click()
totalRowsInSheet = 25644
fColumnCounter = 1
For i = 0 To totalRowsInSheet
If i < totalRowsInSheet Then
i = i + 260
Cells(fColumnCounter, 6).Value = Cells(i, 7).Value
fColumnCounter = fColumnCounter + 1
End If
Next i
End Sub

