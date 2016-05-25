Private Sub CommandButton1_Click()
noRows = 594

For i = 2 To noRows
    Sum = 0
    Count = 0
    
    For j = 5 To 1000
        If IsEmpty(Cells(i, j)) Then Exit For
        
        Sum = Sum + Cells(i, j).Value
        Count = Count + 1
    Next j
    
    Cells(i, 1).Value = Sum / Count
Next i
        
End Sub
