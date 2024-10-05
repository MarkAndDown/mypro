#Include <FindText>
#Include <Func>
if(A_PtrSize=8)
{
    SplitPath A_AhkPath,,dir
    Run,%dir%\autohotkeyu32.exe %A_ScriptFullPath%
    ExitApp
}
reg_code:="mh84909b3bf80d45c618136887775ccc90d27d7"
ver_info:= "mb72nn0d1s2iuk67"
; 注册大漠插件

; 获取目标窗口句柄
hwnd := WinExist("《新天龙八部》 0.06.6911 (怀旧一区:半城烟沙)")

; 调用封装的函数进行大漠插件的创建、注册和窗口绑定
dm := CreateAndBindDM(hwnd, reg_code, ver_info)
; 使用字库OCR识别
base_path := dm.GetBasePath()
dm_ret := dm.SetPath(base_path)
dm_ret := dm.SetDict(0,"ziku.txt")
Sleep, 200
; 循环操作，调用封装的函数
$f5::    ;按下F6時，按住Ctrl後連續點擊滑鼠左，放掉F6後停止
Hotkey, %A_ThisHotkey%,, T2
if (flag){

Sleep, 1500
; 解绑窗口
dm.UnBindWindow()
ExitApp
return
}
flag := true
Loop{
    s1x := dm.Ocr(1144,31,1175,49,"fff263-101010",1.0)
    s1y := dm.Ocr(1175,31,1211,49,"fff263-101010",1.0)

    if(s1x>94 && s1x<141 && s1y>150 && s1y<200){
        dm_ret := dm.FindStr(4,394,321,648,"：：1","ffffff-000000",1.0,intX,intY)
        if(dm_ret=0){
           Loop, 3 {

            HandleCoordinatesAndActions(dm,1130, 382, 1274, 749, "坐标", "fff263-101010", 40, 63, 90, 113 ,179)
            Sleep, 200
           } 
           dm.keydown(0xA4)  ; 按下数字键盘上的键
           Sleep, 50
           dm.keydown(0x2E)  ; 按下数字键盘上的键
           Sleep, 50
           dm.keyup(0x2E)    ; 松开数字键盘上的键
           Sleep, 50
           dm.keyup(0xA4)    ; 松开数字键盘上的键
        }
        dm_ret := dm.FindStr(4,394,321,648,"：：2","ffffff-000000",1.0,intX,intY)
        if(dm_ret=0){
           Loop, 3 {

            HandleCoordinatesAndActions(dm,1130, 382, 1274, 749, "坐标", "fff263-101010", 40, 63, 90, 116 ,164)
            Sleep, 200
           } 
           dm.keydown(0xA4)  ; 按下数字键盘上的键
           Sleep, 50
           dm.keydown(0x2E)  ; 按下数字键盘上的键
           Sleep, 50
           dm.keyup(0x2E)    ; 松开数字键盘上的键
           Sleep, 50
           dm.keyup(0xA4)    ; 松开数字键盘上的键
        }

        str :=  "十三" ;;
        sendKeyshisan(dm,str,0x70,0x72)
     
    }else if(s1x>100 && s1x<150 && s1y>100 && s1y<150){
        ; dm_ret :=dm.FindPic(0,0,2000,2000,"1.bmp|2.bmp|3.bmp","000000",0.9,0,intX,intY)
        ; if(dm_ret=0){
        ;     HandleCoordinatesAndActions(dm,1130, 382, 1274, 749, "坐标", "fff263-101010", 40, 63, 90, 114 ,124)
        ; }

        ; dm_ret :=dm.FindPic(0,0,2000,2000,"1.bmp|2.bmp|3.bmp","000000",0.9,0,intX,intY)
        ; if(dm_ret=0){
        ;     HandleCoordinatesAndActions(dm,1130, 382, 1274, 749, "坐标", "fff263-101010", 40, 63, 90, 134 ,125)
        ; }
        str :=  "梵无救" ;;
    
        sendKeyshisan(dm,str,0x70,0x72)



    }else {

        sendKey(dm,0x70,0x72)
        dm.keydown(0x79)  ; 按下数字键盘上的键
        Sleep, 50
        dm.keyup(0x79)    ; 松开数字键盘上的键
        Sleep, 50
        
    }


}
return 



