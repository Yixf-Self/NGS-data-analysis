totalRows = 35590
k = 2
l = 2

For i = 2 To 20
    found = 0
    For j = i + 1 To 20
        If i = j Then
        Else
            If Cells(i, 1).Value = Cells(j, 2).Value Then
                If Cells(i, 2).Value = Cells(j, 1).Value Then
                    found = 1
                End If
            End If
        End If
    Next j
    
    If found = 0 Then
        Cells(k, 3).Value = Cells(i, 1).Value
        Cells(k, 4).Value = Cells(i, 2).Value
        k = k + 1
    Else
        Cells(l, 5).Value = Cells(i, 1).Value
        Cells(l, 6).Value = Cells(i, 2).Value
        l = l + 1
    End If
Next i