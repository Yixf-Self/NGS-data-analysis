Private Sub CommandButton1_Click()
totalRowsInColumn = 32726
ColumnNumber = 9
outputColumn = 5
totalNumberOfRandomValuesRequired = 371

j = 1
For i = 1 To totalNumberOfRandomValuesRequired
    randomNumber = Int((totalRowsInColumn - 1 + 1) * Rnd + 1)
    Cells(j, outputColumn).Value = Cells(randomNumber, ColumnNumber).Value
    
    j = j + 1
    Next i

    End Sub
    
