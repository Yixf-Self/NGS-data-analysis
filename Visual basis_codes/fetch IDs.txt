For i = 2 To 35056
    For j = 2 To 36463
        If Cells(i, 7).Value = Cells(j, 2).Value Then
            Cells(i, 6).Value = Cells(j, 1).Value
        End If
    Next j
Next i


For i = 2 To 35056
    For j = 2 To 36463
        If Cells(i, 8).Value = Cells(j, 3).Value Then
            Cells(i, 9).Value = Cells(j, 4).Value
        End If
    Next j
Next i


For i = 2 To 1408
    For j = 2 To 36463
        If Cells(i, 11).Value = Cells(j, 2).Value Then
            Cells(i, 10).Value = Cells(j, 1).Value
        End If
    Next j
Next i

For i = 2 To 1408
    For j = 2 To 36463
        If Cells(i, 12).Value = Cells(j, 3).Value Then
            Cells(i, 13).Value = Cells(j, 4).Value
        End If
    Next j
Next i
