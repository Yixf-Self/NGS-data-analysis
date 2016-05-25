Private Sub CommandButton1_Click()
numberOfRowsInSA1 = 9760
numberOfRowsInWT1 = 10172
common = 2
onlyInSA1 = 2
onlyInWT1 = 2

For i = 2 To numberOfRowsInSA1
    MatchFound = 0
    For j = 2 To numberOfRowsInWT1
        If Cells(i, 2).Value = Cells(j, 12).Value And Cells(i, 3).Value = Cells(j, 13).Value And Cells(i, 4).Value = Cells(j, 14).Value And Cells(i, 5).Value = Cells(j, 16).Value And Cells(i, 6).Value = Cells(j, 17).Value And Cells(i, 7).Value = Cells(j, 18).Value Then
            MatchFound = 1
        End If
        
        If Cells(i, 5).Value = Cells(j, 12).Value And Cells(i, 6).Value = Cells(j, 13).Value And Cells(i, 7).Value = Cells(j, 14).Value And Cells(i, 2).Value = Cells(j, 16).Value And Cells(i, 3).Value = Cells(j, 17).Value And Cells(i, 4).Value = Cells(j, 18).Value Then
            MatchFound = 1
        End If
    Next j
    
    If MatchFound = 1 Then
        Cells(common, 22).Value = Cells(i, 1).Value
        Cells(common, 23).Value = Cells(i, 2).Value
        Cells(common, 24).Value = Cells(i, 3).Value
        Cells(common, 25).Value = Cells(i, 4).Value
        Cells(common, 26).Value = Cells(i, 5).Value
        Cells(common, 27).Value = Cells(i, 6).Value
        Cells(common, 28).Value = Cells(i, 7).Value
        Cells(common, 29).Value = Cells(i, 11).Value
        common = common + 1
    End If
       
    If MatchFound = 0 Then
        Cells(onlyInSA1, 33).Value = Cells(i, 1).Value
        Cells(onlyInSA1, 34).Value = Cells(i, 2).Value
        Cells(onlyInSA1, 35).Value = Cells(i, 3).Value
        Cells(onlyInSA1, 36).Value = Cells(i, 4).Value
        Cells(onlyInSA1, 37).Value = Cells(i, 5).Value
        Cells(onlyInSA1, 38).Value = Cells(i, 6).Value
        Cells(onlyInSA1, 39).Value = Cells(i, 7).Value
        onlyInSA1 = onlyInSA1 + 1
    End If
       
Next i
        
        
        
For i = 1 To numberOfRowsInWT1
    MatchFound = 0
    For j = 1 To numberOfRowsInSA1
        If Cells(i, 2).Value = Cells(j, 12).Value And Cells(i, 3).Value = Cells(j, 13).Value And Cells(i, 4).Value = Cells(j, 14).Value And Cells(i, 5).Value = Cells(j, 16).Value And Cells(i, 6).Value = Cells(j, 17).Value And Cells(i, 7).Value = Cells(j, 18).Value Then
            MatchFound = 1
        End If
        
        If Cells(i, 5).Value = Cells(j, 12).Value And Cells(i, 6).Value = Cells(j, 13).Value And Cells(i, 7).Value = Cells(j, 14).Value And Cells(i, 2).Value = Cells(j, 16).Value And Cells(i, 3).Value = Cells(j, 17).Value And Cells(i, 4).Value = Cells(j, 18).Value Then
            MatchFound = 1
        End If
    Next j
          
    If MatchFound = 0 Then
        Cells(onlyInWT1, 43).Value = Cells(i, 11).Value
        Cells(onlyInWT1, 44).Value = Cells(i, 12).Value
        Cells(onlyInWT1, 45).Value = Cells(i, 13).Value
        Cells(onlyInWT1, 46).Value = Cells(i, 14).Value
        Cells(onlyInWT1, 47).Value = Cells(i, 16).Value
        Cells(onlyInWT1, 48).Value = Cells(i, 17).Value
        Cells(onlyInWT1, 49).Value = Cells(i, 18).Value