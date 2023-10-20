; Activate or hide Total Commander
#c::
{
if !WinExist("ahk_class TTOTAL_CMD")
        Run("`"C:\Program Files\totalcmd\TOTALCMD64.EXE`"")
Else
if !WinActive("ahk_class TTOTAL_CMD")
        WinActivate()
Else
        WinMinimize()
Return
}

; Activate or hide VS code
^#e::
{
if !WinExist("ahk_exe Code.exe")
        Run("`"C:\Users\mingjiang.li\AppData\Local\Programs\Microsoft VS Code\Code.exe`"")
Else
if !WinActive("ahk_exe Code.exe")
        WinActivate()
Else
        WinMinimize()
Return
}

; Activate or hide onenote
#n::
{
if !WinExist("ahk_exe ApplicationFrameHost.exe")
        Run("`"C:\Program Files\WindowsApps\Microsoft.Office.OneNote_16001.14326.21452.0_x64__8wekyb3d8bbwe\onenoteim.exe`"")
Else
if !WinActive("ahk_exe ApplicationFrameHost.exe")
        WinActivate()
Else
        WinMinimize()
Return
}

; Activate or hide git
#t::
{
if !WinExist("ahk_class mintty")
        Return
Else
if !WinActive("ahk_class mintty")
        WinActivate()
Else
        WinMinimize()
Return
}

; Activate or hide mobaxterm
#i::
{
if !WinExist("ahk_exe MobaXterm.exe")
        Run("`"C:\Program Files (x86)\Mobatek\MobaXterm\MobaXterm.exe`"")
Else
if !WinActive("ahk_exe MobaXterm.exe")
        WinActivate()
Else
        WinMinimize()
Return
}

; Activate or hide pomo
; #p::
; {
; if !WinExist("ahk_exe FocusToDo.exe")
;         Return
; Else
; if !WinActive("ahk_exe FocusToDo.exe")
;         WinActivate()
; Else
;         WinMinimize()
; Return
; }

; Activate or hide pomo
#o::
{
if !WinExist("ahk_exe Obsidian.exe")
        Run("`"C:\Users\mingjiang.li\AppData\Local\Obsidian\Obsidian.exe`"")
Else
if !WinActive("ahk_exe Obsidian.exe")
        WinActivate()
Else
        WinMinimize()
Return
}

; Remap capslock to ctrl
CapsLock::Ctrl

; paste
; F12::+Insert

; keymap hints: win->#, control->^, shift->+, alt->! 

;^e::End
;^a::Home

; code block
^!c::
{
Send("
(
``````
)")
Return
}

; markdown 添加单选框
^!t::
{
Send("
(
- [ ] 
)")
Return
}

; 分屏操作2/3/4分屏
#2::
{
Send("#^!2")
}
#3::
{
Send("#^!3")
}
#4::
{
Send("#^!4")
}

; tmux 分屏操作
; 全屏
#z::
{
Send("^a")
Send("z")
}

#f::
{
Send("{Volume_Mute}")
}

; 配置win+滚轮上下，切换区域内的屏幕
#WheelUp::Send "#{PgUp}"
#WheelDown::Send "#{PgDn}"

; 配置shift+滚轮上下，右左滚动
+WheelUp::Send "{WheelRight}"
+WheelDown::Send "{WheelLeft}"

; alt+滚轮上下，调节音量
!WheelUp::Send "{Volume_Up}"
!WheelDown::Send "{Volume_Down}"
!MButton::Send "{Volume_Mute}"

; 向左向右滚动
; RButton & WheelUp::
; Send, WheelLeft
; Return
; {RButton} & {WheelDown}::
; Send, {WheelRight}

; 快捷键链接：https://support.microsoft.com/zh-cn/windows/windows-%E7%9A%84%E9%94%AE%E7%9B%98%E5%BF%AB%E6%8D%B7%E6%96%B9%E5%BC%8F-dcc61a57-8ff0-cffe-9796-cb9706c75eec
; #c:: 微软聊天
; #g:: xbox
; #h:: 语言输入
; #i:: 打开设置
; #j:: 暂时无用
; #j:: 投放
; #n:: 打开通知中心和日历
; #o:: 锁定设备方向
; #s:: 打开搜索
; #!S:: windows截图
; #T:: 浏览任务栏应用
; #U:: 辅助功能设置
; #W:: 打开小组件
; #X:: 打开快速链接
; #Y:: 切换输入
; #Z:: 打开对齐布局
; #.:: 打开表情面板
; #,:: 临时速览桌面

