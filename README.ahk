# mypro
我的项目




;;xxx==1

Loop{

    Sleep, 1000
    outX1 := ComVar()
    outY1 := ComVar()
    dm_ret := dm.Capture(1580,320,1650,370,"E:\\桌面文件\\flask\\tlbb\\pic\\zuobiaoxxxx.bmp")
    dm_ret := dm.FindStr(1580,320,1650,370,"镖车位置","fff263-101010",1.0,outX1.ref, outY1.ref)
    if (dm_ret = 0) {
    
	intX1 := outX1[]
	intY1 := outY1[]
     click_ret := dm.MoveTo(intX1+120, intY1)
     dm.LeftDoubleClick()
     Sleep, 20
     dm.LeftDoubleClick()
     Sleep, 200

     s := dm.Ocr(1690,320,1745,370,"00ccff-101010",1.0)
     trimmed := SubStr(s, 2, StrLen(s) - 2)
  
     parts := StrSplit(trimmed, ",")
     x1:=parts.1
     y1:=parts.2

     s1 := dm.Ocr(1690,370,1745,410,"00ccff-101010",1.0)
     trimmed2 := SubStr(s1, 2, StrLen(s1) - 2)
     
 
     parts2 := StrSplit(trimmed2, ",")
     x2:=parts2.1
     y2:=parts2.2
     if(Abs(x1 - x2) <= 10 && Abs(y1 - y2) <= 10) {
        click_ret := dm.MoveTo(intX1+120, intY1+50)
        dm.LeftDoubleClick()
        Sleep, 20
        dm.LeftDoubleClick()

        Sleep, 2000
        dm_ret :=dm.FindStr(1785,15,1832,35,"苏州|玉溪","ccc406-444444|fcf200-333333|6f4e0a-333333|bd9004-333333|937f07-333333,|",1.0,intX,intY)
        if(dm_ret=0){
            click_ret := dm.MoveTo(75, 245)
            dm.LeftDoubleClick()
            Sleep, 20
            dm.LeftDoubleClick() 
            
        }Else{
            click_ret := dm.MoveTo(75, 300)
            dm.LeftDoubleClick()
            Sleep, 20
            dm.LeftDoubleClick()
        }

     }
       }Else{
 
       }

sendKeyshisan(dm,str,keyCode1,keyCode2){
	dm.keydown(keyCode1)  ; 按下数字键盘上的键
	Sleep, 50
	dm.keyup(keyCode1)    ; 松开数字键盘上的键
    Sleep, 220
    dm_ret := dm.FindStr(300, 05, 381, 50, str, "ffc0cb-010101",1.0,intXx,intYy)
    if(dm_ret=0){
    Sleep, 50
	dm.keydown(keyCode2)  ; 按下数字键盘上的键
	Sleep, 50
	dm.keyup(keyCode2)    ; 松开数字键盘上的键
	Sleep, 50
    }


}

sendKeynoattack(dm,str,keyCode1,keyCode2){
	dm.keydown(keyCode1)  ; 按下数字键盘上的键
	Sleep, 50
	dm.keyup(keyCode1)    ; 松开数字键盘上的键
    Sleep, 220
    dm_ret := dm.FindStr(300, 05, 381, 50, str, "ffc0cb-010101",1.0,intXx,intYy)
    if(dm_ret!=0){
    Sleep, 50
	dm.keydown(keyCode2)  ; 按下数字键盘上的键
	Sleep, 50
	dm.keyup(keyCode2)    ; 松开数字键盘上的键
	Sleep, 50
    }



       
}
return 
