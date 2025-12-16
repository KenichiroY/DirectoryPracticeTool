@echo off
::==============================================
::ディレクトリ作成練習ソフト3
::このプロジェクトは GNU General Public License v3.0 の下で公開されています。
::詳細は、以下のgithubを参照してください。
::https://github.com/KenichiroY/DirectoryPracticeTool
::==============================================

echo ========================================
echo   ファイルめいれんしゅう かんきょうこうちく
echo ========================================
echo.
echo フォルダとファイルをつくっています...
echo.

if exist "3.ファイルめいれんしゅう" (
    echo すでにフォルダがあります。けします...
    rmdir /s /q "3.ファイルめいれんしゅう"
)
mkdir "ミッション3"
cd ミッション3
mkdir "3.ファイルめいれんしゅう"

echo ========================================== > "やりかた3.txt"
echo   ファイルめいのつけかた >> "やりかた3.txt"
echo ========================================== >> "やりかた3.txt"
echo. >> "やりかた3.txt"
echo 【めいめいきそく】 >> "やりかた3.txt"
echo {出席番号}{児童氏名}【{教科}】{単元名}.docx >> "やりかた3.txt"
echo. >> "やりかた3.txt"
echo 【れい】 >> "やりかた3.txt"
echo 12田中太郎【国語】すがたを変える大豆.docx >> "やりかた3.txt"
echo. >> "やりかた3.txt"
echo ========================================== >> "やりかた3.txt"
echo. >> "やりかた3.txt"
echo 【ミッション】 >> "やりかた3.txt"
echo いかの 2つの ファイルを つくってください: >> "やりかた3.txt"
echo. >> "やりかた3.txt"
echo 1. 12田中太郎【国語】すがたを変える大豆.docx >> "やりかた3.txt"
echo 2. 12田中太郎【算数】わり算.docx >> "やりかた3.txt"
echo. >> "やりかた3.txt"
echo ========================================== >> "やりかた3.txt"
echo. >> "やりかた3.txt"
echo 【つくりかた】 >> "やりかた3.txt"
echo 1. 3.ファイルめいれんしゅう フォルダを ひらく >> "やりかた3.txt"
echo 2. 右クリック → 新規作成 → Word ファイル >> "やりかた3.txt"
echo 3. ファイルめいを ただしく 入力する >> "やりかた3.txt"
echo 4. 2つ 全部 つくったら こたえあわせ3.vbs を 押す >> "やりかた3.txt"
echo. >> "やりかた3.txt"
echo ========================================== >> "やりかた3.txt"

REM 答え合わせ3.vbsを生成
echo Option Explicit > "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo Dim fso >> "こたえあわせ3.vbs"
echo Dim score, total >> "こたえあわせ3.vbs"
echo Dim message, title >> "こたえあわせ3.vbs"
echo Dim file1, file2 >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo Set fso = CreateObject("Scripting.FileSystemObject") >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo If Not fso.FolderExists("3.ファイルめいれんしゅう") Then >> "こたえあわせ3.vbs"
echo     MsgBox "「3.ファイルめいれんしゅう」フォルダが みつかりません。" ^& vbCrLf ^& _ >> "こたえあわせ3.vbs"
echo            "さきに「ミッション3.bat」を じっこう してください。", _ >> "こたえあわせ3.vbs"
echo            vbExclamation, "エラー" >> "こたえあわせ3.vbs"
echo     WScript.Quit >> "こたえあわせ3.vbs"
echo End If >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo score = 0 >> "こたえあわせ3.vbs"
echo total = 2 >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo file1 = fso.FileExists("3.ファイルめいれんしゅう\12田中太郎【国語】すがたを変える大豆.docx") >> "こたえあわせ3.vbs"
echo file2 = fso.FileExists("3.ファイルめいれんしゅう\12田中太郎【算数】わり算.docx") >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo If file1 Then score = score + 1 >> "こたえあわせ3.vbs"
echo If file2 Then score = score + 1 >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo message = "========== こたえあわせ ==========" ^& vbCrLf ^& vbCrLf >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo message = message ^& "1. 12田中太郎【国語】すがたを変える大豆.docx" ^& vbCrLf >> "こたえあわせ3.vbs"
echo If file1 Then >> "こたえあわせ3.vbs"
echo     message = message ^& "   ○ せいかい！" ^& vbCrLf >> "こたえあわせ3.vbs"
echo Else >> "こたえあわせ3.vbs"
echo     message = message ^& "   × みつかりません" ^& vbCrLf >> "こたえあわせ3.vbs"
echo End If >> "こたえあわせ3.vbs"
echo message = message ^& vbCrLf >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo message = message ^& "2. 12田中太郎【算数】わり算.docx" ^& vbCrLf >> "こたえあわせ3.vbs"
echo If file2 Then >> "こたえあわせ3.vbs"
echo     message = message ^& "   ○ せいかい！" ^& vbCrLf >> "こたえあわせ3.vbs"
echo Else >> "こたえあわせ3.vbs"
echo     message = message ^& "   × みつかりません" ^& vbCrLf >> "こたえあわせ3.vbs"
echo End If >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo message = message ^& vbCrLf ^& "==============================" ^& vbCrLf >> "こたえあわせ3.vbs"
echo message = message ^& "せいかい: " ^& score ^& "/" ^& total ^& vbCrLf ^& vbCrLf >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo If score = total Then >> "こたえあわせ3.vbs"
echo     message = message ^& "★ やったね！ぜんぶ せいかい！！" ^& vbCrLf ^& _ >> "こたえあわせ3.vbs"
echo                        "★ パーフェクト！ファイルめい めいじん だね！" >> "こたえあわせ3.vbs"
echo     title = "◎ だいせいこう！" >> "こたえあわせ3.vbs"
echo     MsgBox message, vbInformation, title >> "こたえあわせ3.vbs"
echo Else >> "こたえあわせ3.vbs"
echo     message = message ^& "もういちど ファイルめいを たしかめて がんばろう！" >> "こたえあわせ3.vbs"
echo     title = "こたえあわせ けっか" >> "こたえあわせ3.vbs"
echo     MsgBox message, vbExclamation, title >> "こたえあわせ3.vbs"
echo End If >> "こたえあわせ3.vbs"
echo. >> "こたえあわせ3.vbs"
echo Set fso = Nothing >> "こたえあわせ3.vbs"

cd ..

echo.
echo ★★★ かんせい！★★★
echo.
echo 3.ファイルめいれんしゅう フォルダが できました。
echo やりかた3.txt を よんで、ファイルを つくってください。
echo.
pause

