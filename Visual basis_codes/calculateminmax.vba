Private Sub CommandButton1_Click()
Dim i As Integer
Dim j As Integer
totalRows = 2381
ColumnToColor = 9

Dim FrequencyArray(1 To 2381) As Integer

For i = 1 To totalRows
    For j = 1 To totalRows
        If Cells(i, ColumnToColor).Value = Cells(j, ColumnToColor) Then FrequencyArray(i) = FrequencyArray(i) + 1
    Next j
Next i
        
Dim frequency As Integer

For i = 1 To totalRows
    frequency = FrequencyArray(i)
    If frequency = 1 Then Cells(i, ColumnToColor).Interior.Color = RGB(255, 255, 255)
    If frequency = 2 Then Cells(i, ColumnToColor).Interior.Color = RGB(255, 0, 0)
    If frequency = 3 Then Cells(i, ColumnToColor).Interior.Color = RGB(0, 255, 0)
    If frequency = 4 Then Cells(i, ColumnToColor).Interior.Color = RGB(50, 50, 255)
    If frequency = 5 Then Cells(i, ColumnToColor).Interior.Color = RGB(255, 255, 0)
    If frequency = 6 Then Cells(i, ColumnToColor).Interior.Color = RGB(0, 255, 255)
    If frequency = 7 Then Cells(i, ColumnToColor).Interior.Color = RGB(255, 50, 255)
Next i

prevVal = -1
minVal = 999999999
maxVal = 0

For i = 1 To totalRows
    currentVal = Cells(i, 9).Value
    If prevVal = currentVal Then
        Cells(i, 5) = minVal
        Cells(i, 6) = maxVal
    Else
        prevVal = currentVal
        minVal = 999999999
        maxVal = 0
        For j = i To (FrequencyArray(i) + i - 1)
            If Cells(j, 3) > Cells(j, 4) Then
                tempMax = Cells(j, 3).Value
                tempMin = Cells(j, 4).Value
            Else
                tempMax = Cells(j, 4).Value
                tempMin = Cells(j, 3).Value
            End If
            If minVal > tempMin Then minVal = tempMin
            If maxVal < tempMax Then maxVal = tempMax
        Next j
        Cells(i, 5).Value = minVal
        Cells(i, 6).Value = maxVal
    End If
Next i

End Sub