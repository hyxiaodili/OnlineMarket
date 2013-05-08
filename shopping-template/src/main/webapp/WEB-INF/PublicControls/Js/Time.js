function createSelect(yearID,monthID,dayID,ActionFlag,minyear) {
    var selYear = document.getElementById(yearID); 
    var selMonth = document.getElementById(monthID); 
    var selDay = document.getElementById(dayID); 
    var dt = new Date(); 
    if(ActionFlag == 1) {
        MaxYear = dt.getFullYear();
        MinYear = minyear; 

        for(var i = MaxYear; i >= MinYear; i--) { 
            var op = document.createElement("OPTION"); 
            op.value = i; 
            op.innerHTML = i; 
            selYear.appendChild(op); 
        } 
        selYear.selectedIndex = 0; 

        for(var i = 1; i < 13; i++) { 
          var op = document.createElement("OPTION"); 
          op.value = i; 
          op.innerHTML = i; 
          selMonth.appendChild(op); 
        } 
    } 

    var date = new Date(selYear.value, selMonth.value, 0); 
    var daysInMonth = date.getDate(); 
    selDay.options.length = 1; 
    
    for(var i = 1; i <= daysInMonth ; i++) { 
        var op = document.createElement("OPTION"); 
        op.value = i; 
        op.innerHTML = i; 
        selDay.appendChild(op); 
    } 
   
} 
 