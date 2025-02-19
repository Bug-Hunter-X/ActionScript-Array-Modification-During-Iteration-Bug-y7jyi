function myFunction():void{

        trace("before error");
        var myArray:Array = new Array();
        myArray[0] = 1;
        myArray[1] = 2;
        myArray[2] = 3;
        myArray[3] = 4;
        myArray[4] = 5;

        for(var i:int = myArray.length - 1; i >= 0; i--){
            trace(myArray[i]);
            if(myArray[i] == 3){
                myArray.splice(i,1);
            }
        }
        trace("after error");

    } 