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
888CBC38A024B8B03AFA405BE98503800000105209421F8103E007E182505208470000002024248C9293924248492B232430800000022148AA17F4AB54A4A4BFA2984808800000011117D70004CA95525FD94CA9150220$流光云梦泽$0.0.224$11
3FE449895123FE100D0719202404FF00000088520A816E482B0220A6E4A0520A010000000400AFA55D6ACD52AA9567E881E000000000408FE808022A057EAABF52AA57EA8000000208510A2129213FFC90518648508810$的交易请求$0.0.232$11
5FE90520A4148290520FC140203C0000019456B35094A4B14648D9FD2314410800000343BF1522AA005FC882F786097D00100000080B424B89112167E49292524A49602$已经锁定$0.0.184$11
200480909713A646F8730C278718A19232424040080000000000000000000000000000000000000000004008014FA9FAAB556A0E9592947D8FA10480E018$交易$98.63.354$15
44290540B7241581105372502905008000000000000000000000008015F4ABAD59AA5552ACFD103C$交易$0.0.88$11
809FF2524A8FFF025F920C428F88008000002122FAE0000FFC547A81526A57F8000000006877E2A455400BF9105EF0C12FA0020000010168497122242CFC92524A49492C04$取消锁定$0.0.198$11
0040380764ED99B33666CCFF9FF3666CEDBDBFB7F40F01C038$玉$0.0.105$11
040189BBB3677C6B087BFD7FA9FFFFFFEDEFBDFCE90D01C010$溪$0.0.122$12
08010020040081FFC200400803002000000000500A2144288510A2144388501801$十三$0.0.51$11
442905417DC528149487DF602A052380000010620C428991C3E047F88310620847000000A2129FFE442B4305183CC8861F2202$梵无救$0.0.139$11
8A554BEA55FAAA057EAD55AAB55FE8000000881FF2444FB569DA118FB8C52DF954000000201FFC03047EFD55FBF556AAFDF8220000000100DFE22044088110220440F80$僵尸$0.0.222$11

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
