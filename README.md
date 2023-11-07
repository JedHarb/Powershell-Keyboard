# Powershell-Keyboard
Import these functions (or dot source the script) and you can use other Powershell code to interact with windows.

### USER INTERACTION WITH PROGRAMS
- Use basic commands like Send, Start, and Activate to interact with windows on your screen.
- Quotes are required if your parameter has spaces.
- If the parameter needs any single quotes, double quotes, or backticks, esacpe each with a backtick.

### EXAMPLES
```
Send Wazzup?
```
```
Send "Hello, my name is John."
```
```
Send "The sign says `"No Smoking`""
```
```
Start notepad
```
```
start chrome
```
```
Start "C:\Program Files (x86)\Advanced IP Scanner\advanced_ip_scanner.exe"
```
```
Activate inbox
```
```
Activate "Advanced IP Scanner"
```
```  
Activate "How do you say `"hello`" in French - Google Search - Google Chrome"
```

### SEND

To send most standard keyboard characters, just use the characters directly.
```
Send Wazzup?
```
To send a quote or backtick, esacpe it with a backtick.
```
Send "The sign says `"No Smoking`""
``` 
To send any of these characters: `+^%~()[]{}` you must enclose it within braces `{}`.

For example, to send the plus sign, use `{+}`. To send an open brace, use `{{}`.

| Special keys | What to use |
| ------------ | ----------- |
|SHIFT|+|
|CTRL|^|
|ALT|%|
|BACKSPACE|{BACKSPACE}, {BS}, or {BKSP}|
|BREAK|{BREAK}|
|CAPS LOCK|{CAPSLOCK}|
|DEL or DELETE|{DELETE} or {DEL}|
|ARROW KEYS|{UP}, {DOWN}, {LEFT}, {RIGHT}|
|END|{END}|
|ENTER|{ENTER} or ~|
|ESC|{ESC}|
|HELP|{HELP}|
|HOME|{HOME}|
|INS or INSERT|{INSERT} or {INS}|
|NUM LOCK|{NUMLOCK}|
|PAGE UP, DOWN|{PGUP}, {PGDOWN}|
|PRINT SCREEN|{PRTSC} (reserved for future use)|
|SCROLL LOCK|{SCROLLLOCK}|
|TAB|{TAB}|
|F1|{F1}|
|...|
|F16|{F16}|
|Keypad add|{ADD}|
|Keypad subtract|{SUBTRACT}|
|Keypad multiply|{MULTIPLY}|
|Keypad divide|{DIVIDE}|

To specify repeating keys, use `{key number}`

For example, `{h 10}` means press h 10 times.

### START

To start a program, specify it's filepath.
```
Start "C:\Program Files (x86)\Advanced IP Scanner\advanced_ip_scanner.exe"
```
Start is not case sensitive.

Some contextual apps can be started with just the name.
```
Start notepad
```
```
Start cmd
```
```
Start chrome
```
```
Start outlook
```
```
Start powershell
```

### ACTIVATE

To activate a window, specify the title of the window.
```
Activate "Advanced IP Scanner"
```
Activate is not case sensitive.

To see your window titles, you can hover over the running icon in your taskbar, or run this in Powershell:
```
(Get-Process | Where-Object MainWindowTitle).MainWindowTitle
```
Works with partial matches, but the starting characters must be correct.

For example, you can activate the window named "Inbox - jared<span>@</span>fakeemailaccount.com - Outlook" like this:
```
Activate inbox
```
If there are multiple matches, it will activate the topmost (most recently activated) window from among the matches.
