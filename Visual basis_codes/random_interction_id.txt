Private Sub CommandButton1_Click()
totalRowsInColumn = 9
ColumnNumber = 7
outputColumn = 5
outputColumn2 = 6
totalNumberOfRandomValuesRequired = 5

j = 1
For i = 1 To totalNumberOfRandomValuesRequired
    randomNumber = Int((totalRowsInColumn - 1 + 1) * Rnd + 1)
    Cells(j, outputColumn).Value = Cells(randomNumber, ColumnNumber).Value
    randomNumber2 = Int((totalRowsInColumn - 1 + 1) * Rnd + 1)
    Cells(j, outputColumn2).Value = Cells(randomNumber2, ColumnNumber).Value
	
	j=j+1
	Next i

	End sub
	