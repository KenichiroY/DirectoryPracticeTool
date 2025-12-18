@echo off
::==============================================
::ディレクトリ作成練習ソフト1
::このプロジェクトは GNU General Public License v3.0 の下で公開されています。
::詳細は、以下のgithubを参照してください。
::https://github.com/KenichiroY/DirectoryPracticeTool
::==============================================

echo ========================================
echo   おかたづけチャレンジ かんきょうこうちく
echo ========================================
echo.
echo フォルダとファイルをつくっています...
echo.

if exist "1.おかたづけチャレンジ" (
    echo すでにフォルダがあります。けします...
    rmdir /s /q "1.おかたづけチャレンジ"
)
mkdir "ミッション1"
cd ミッション1
mkdir "1.おかたづけチャレンジ"
cd 1.おかたづけチャレンジ

mkdir "くだものばこ"
mkdir "スポーツようぐばこ"
mkdir "べんきょうどうぐばこ"

echo これは りんご です。くだものばこ に いれてね! > "りんご.txt"
echo これは みかん です。くだものばこ に いれてね! > "みかん.txt"
echo これは バナナ です。くだものばこ に いれてね! > "バナナ.txt"

echo これは サッカーボール です。スポーツようぐばこ に いれてね! > "サッカーボール.txt"
echo これは 野球ボール です。スポーツようぐばこ に いれてね! > "野球ボール.txt"
echo これは バスケットボール です。スポーツようぐばこ に いれてね! > "バスケットボール.txt"

echo これは えんぴつ です。べんきょうどうぐばこ に いれてね! > "えんぴつ.txt"
echo これは けしゴム です。べんきょうどうぐばこ に いれてね! > "けしゴム.txt"
echo これは ノート です。べんきょうどうぐばこ に いれてね! > "ノート.txt"

cd ..
echo ========================================== > "あそびかた.txt"
echo   おかたづけチャレンジ の あそびかた >> "あそびかた.txt"
echo ========================================== >> "あそびかた.txt"
echo. >> "あそびかた.txt"
echo 1. 1.おかたづけチャレンジ を ひらく >> "あそびかた.txt"
echo 2. ファイルを、正しい箱に移動させる >> "あそびかた.txt"
echo 3. ぜんぶ 終わったら こたえあわせ.vbs を 押す >> "あそびかた.txt"
echo. >> "あそびかた.txt"
echo ========================================== >> "あそびかた.txt"

REM 答え合わせ.vbsを生成
echo Option Explicit > "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo Dim fso, folder, baseFolder >> "こたえあわせ.vbs"
echo Dim kudamonoScore, sportsScore, benkyoScore >> "こたえあわせ.vbs"
echo Dim kudamonoTotal, sportsTotal, benkyoTotal >> "こたえあわせ.vbs"
echo Dim message, title >> "こたえあわせ.vbs"
echo Dim allCorrect >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo Set fso = CreateObject("Scripting.FileSystemObject") >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo If Not fso.FolderExists("1.おかたづけチャレンジ") Then >> "こたえあわせ.vbs"
echo     MsgBox "「1.おかたづけチャレンジ」フォルダが みつかりません。" ^& vbCrLf ^& _ >> "こたえあわせ.vbs"
echo            "さきに「環境構築.bat」を じっこう してください。", _ >> "こたえあわせ.vbs"
echo            vbExclamation, "エラー" >> "こたえあわせ.vbs"
echo     WScript.Quit >> "こたえあわせ.vbs"
echo End If >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo Set baseFolder = fso.GetFolder("1.おかたづけチャレンジ") >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo kudamonoScore = 0 >> "こたえあわせ.vbs"
echo kudamonoTotal = 3 >> "こたえあわせ.vbs"
echo sportsScore = 0 >> "こたえあわせ.vbs"
echo sportsTotal = 3 >> "こたえあわせ.vbs"
echo benkyoScore = 0 >> "こたえあわせ.vbs"
echo benkyoTotal = 3 >> "こたえあわせ.vbs"
echo allCorrect = True >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo If fso.FolderExists("1.おかたづけチャレンジ\くだものばこ") Then >> "こたえあわせ.vbs"
echo     Set folder = fso.GetFolder("1.おかたづけチャレンジ\くだものばこ") >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\くだものばこ\りんご.txt") Then kudamonoScore = kudamonoScore + 1 >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\くだものばこ\みかん.txt") Then kudamonoScore = kudamonoScore + 1 >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\くだものばこ\バナナ.txt") Then kudamonoScore = kudamonoScore + 1 >> "こたえあわせ.vbs"
echo End If >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo If fso.FolderExists("1.おかたづけチャレンジ\スポーツようぐばこ") Then >> "こたえあわせ.vbs"
echo     Set folder = fso.GetFolder("1.おかたづけチャレンジ\スポーツようぐばこ") >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\スポーツようぐばこ\サッカーボール.txt") Then sportsScore = sportsScore + 1 >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\スポーツようぐばこ\野球ボール.txt") Then sportsScore = sportsScore + 1 >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\スポーツようぐばこ\バスケットボール.txt") Then sportsScore = sportsScore + 1 >> "こたえあわせ.vbs"
echo End If >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo If fso.FolderExists("1.おかたづけチャレンジ\べんきょうどうぐばこ") Then >> "こたえあわせ.vbs"
echo     Set folder = fso.GetFolder("1.おかたづけチャレンジ\べんきょうどうぐばこ") >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\べんきょうどうぐばこ\えんぴつ.txt") Then benkyoScore = benkyoScore + 1 >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\べんきょうどうぐばこ\けしゴム.txt") Then benkyoScore = benkyoScore + 1 >> "こたえあわせ.vbs"
echo     If fso.FileExists("1.おかたづけチャレンジ\べんきょうどうぐばこ\ノート.txt") Then benkyoScore = benkyoScore + 1 >> "こたえあわせ.vbs"
echo End If >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo message = "========== こたえあわせ ==========" ^& vbCrLf ^& vbCrLf >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo message = message ^& "【くだものばこ】: " ^& kudamonoScore ^& "/" ^& kudamonoTotal >> "こたえあわせ.vbs"
echo If kudamonoScore = kudamonoTotal Then >> "こたえあわせ.vbs"
echo     message = message ^& "  ◎ せいかい！" ^& vbCrLf >> "こたえあわせ.vbs"
echo Else >> "こたえあわせ.vbs"
echo     message = message ^& "  × (" ^& (kudamonoTotal - kudamonoScore) ^& "こ たりない)" ^& vbCrLf >> "こたえあわせ.vbs"
echo     allCorrect = False >> "こたえあわせ.vbs"
echo End If >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo message = message ^& "【スポーツようぐばこ】: " ^& sportsScore ^& "/" ^& sportsTotal >> "こたえあわせ.vbs"
echo If sportsScore = sportsTotal Then >> "こたえあわせ.vbs"
echo     message = message ^& "  ◎ せいかい！" ^& vbCrLf >> "こたえあわせ.vbs"
echo Else >> "こたえあわせ.vbs"
echo     message = message ^& "  × (" ^& (sportsTotal - sportsScore) ^& "こ たりない)" ^& vbCrLf >> "こたえあわせ.vbs"
echo     allCorrect = False >> "こたえあわせ.vbs"
echo End If >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo message = message ^& "【べんきょうどうぐばこ】: " ^& benkyoScore ^& "/" ^& benkyoTotal >> "こたえあわせ.vbs"
echo If benkyoScore = benkyoTotal Then >> "こたえあわせ.vbs"
echo     message = message ^& "  ◎ せいかい！" ^& vbCrLf >> "こたえあわせ.vbs"
echo Else >> "こたえあわせ.vbs"
echo     message = message ^& "  × (" ^& (benkyoTotal - benkyoScore) ^& "こ たりない)" ^& vbCrLf >> "こたえあわせ.vbs"
echo     allCorrect = False >> "こたえあわせ.vbs"
echo End If >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo message = message ^& vbCrLf ^& "==============================" ^& vbCrLf ^& vbCrLf >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo If allCorrect Then >> "こたえあわせ.vbs"
echo     message = message ^& "★ やったね！ぜんぶ せいかい！！" ^& vbCrLf ^& _ >> "こたえあわせ.vbs"
echo                        "★ パーフェクト！おかたづけ めいじん だね！" >> "こたえあわせ.vbs"
echo     title = "◎ だいせいこう！" >> "こたえあわせ.vbs"
echo     MsgBox message, vbInformation, title >> "こたえあわせ.vbs"
echo Else >> "こたえあわせ.vbs"
echo     Dim totalScore, totalMax >> "こたえあわせ.vbs"
echo     totalScore = kudamonoScore + sportsScore + benkyoScore >> "こたえあわせ.vbs"
echo     totalMax = kudamonoTotal + sportsTotal + benkyoTotal >> "こたえあわせ.vbs"
echo     message = message ^& "ごうけい: " ^& totalScore ^& "/" ^& totalMax ^& vbCrLf ^& vbCrLf ^& _ >> "こたえあわせ.vbs"
echo                        "もういちど がんばろう！" >> "こたえあわせ.vbs"
echo     title = "こたえあわせ けっか" >> "こたえあわせ.vbs"
echo     MsgBox message, vbExclamation, title >> "こたえあわせ.vbs"
echo End If >> "こたえあわせ.vbs"
echo. >> "こたえあわせ.vbs"
echo Set folder = Nothing >> "こたえあわせ.vbs"
echo Set baseFolder = Nothing >> "こたえあわせ.vbs"
echo Set fso = Nothing >> "こたえあわせ.vbs"

cd ..

echo.
echo ★★★ かんせい！★★★
echo.
echo 1.おかたづけチャレンジ フォルダが できました。
echo こたえあわせ.vbs も いっしょに つくりました。
echo.
pause

