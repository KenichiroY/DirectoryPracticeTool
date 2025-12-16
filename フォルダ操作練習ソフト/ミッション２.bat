@echo off
::==============================================
::ディレクトリ作成練習ソフト①
::このプロジェクトは GNU General Public License v3.0 の下で公開されています。
::詳細は、以下のgithubを参照してください。
::https://github.com/KenichiroY/DirectoryPracticeTool
::==============================================

echo ========================================
echo   しりょうせいり かんきょうこうちく
echo ========================================
echo.
echo フォルダとファイルをつくっています...
echo.

if exist "2.しりょう整理" (
    echo すでにフォルダがあります。けします...
    rmdir /s /q "2.しりょう整理"
)
mkdir "ミッション2"
cd ミッション2
mkdir "2.しりょう整理"
cd "2.しりょう整理"

REM 学年フォルダと教科フォルダを作成
for %%g in (3 4 5 6) do (
    mkdir "%%g年生"
    mkdir "%%g年生\01国語"
    mkdir "%%g年生\02社会"
    mkdir "%%g年生\03算数"
    mkdir "%%g年生\04理科"
)

REM 散らかったファイルを作成（10個）
echo これは 3年生の 国語の 作文 です。 > "3年_国語_作文.txt"
echo これは 3年生の 算数の ドリル です。 > "3年_算数_ドリル.txt"
echo これは 3年生の 理科の 植物観察 です。 > "3年_理科_植物観察.txt"
echo これは 4年生の 理科の 観察記録 です。 > "4年_理科_観察記録.txt"
echo これは 4年生の 社会の 地図 です。 > "4年_社会_地図.txt"
echo これは 5年生の 国語の 漢字テスト です。 > "5年_国語_漢字テスト.txt"
echo これは 5年生の 算数の プリント です。 > "5年_算数_プリント.txt"
echo これは 5年生の 社会の 工業 です。 > "5年_社会_工業.txt"
echo これは 6年生の 理科の 実験結果 です。 > "6年_理科_実験結果.txt"
echo これは 6年生の 社会の 歴史まとめ です。 > "6年_社会_歴史まとめ.txt"

cd ..
echo ========================================== > "あそびかた2.txt"
echo   せんせいのしりょうせいり の あそびかた >> "あそびかた2.txt"
echo ========================================== >> "あそびかた2.txt"
echo. >> "あそびかた2.txt"
echo 1. 2.しりょう整理 を ひらく >> "あそびかた2.txt"
echo 2. ファイルめいを よんで、がくねんと きょうかを たしかめる >> "あそびかた2.txt"
echo 3. ファイルを ただしい フォルダに ドラッグアンドドロップ する >> "あそびかた2.txt"
echo    れい: 3年_国語_作文.txt は 3年生 の 01国語 フォルダへ >> "あそびかた2.txt"
echo 4. ぜんぶ 終わったら こたえあわせ2.vbs を 押す >> "あそびかた2.txt"
echo. >> "あそびかた2.txt"
echo ========================================== >> "あそびかた2.txt"

REM 答え合わせ2.vbsを生成
echo Option Explicit > "こたえあわせ2.vbs"
echo. >> "こたえあわせ2.vbs"
echo Dim fso >> "こたえあわせ2.vbs"
echo Dim score, total >> "こたえあわせ2.vbs"
echo Dim message, title >> "こたえあわせ2.vbs"
echo Dim allCorrect >> "こたえあわせ2.vbs"
echo. >> "こたえあわせ2.vbs"
echo Set fso = CreateObject("Scripting.FileSystemObject") >> "こたえあわせ2.vbs"
echo. >> "こたえあわせ2.vbs"
echo If Not fso.FolderExists("2.しりょう整理") Then >> "こたえあわせ2.vbs"
echo     MsgBox "「2.しりょう整理」フォルダが みつかりません。" ^& vbCrLf ^& _ >> "こたえあわせ2.vbs"
echo            "さきに「2.しりょう整理.bat」を じっこう してください。", _ >> "こたえあわせ2.vbs"
echo            vbExclamation, "エラー" >> "こたえあわせ2.vbs"
echo     WScript.Quit >> "こたえあわせ2.vbs"
echo End If >> "こたえあわせ2.vbs"
echo. >> "こたえあわせ2.vbs"
echo score = 0 >> "こたえあわせ2.vbs"
echo total = 10 >> "こたえあわせ2.vbs"
echo allCorrect = True >> "こたえあわせ2.vbs"
echo. >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\3年生\01国語\3年_国語_作文.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\3年生\03算数\3年_算数_ドリル.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\3年生\04理科\3年_理科_植物観察.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\4年生\04理科\4年_理科_観察記録.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\4年生\02社会\4年_社会_地図.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\5年生\01国語\5年_国語_漢字テスト.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\5年生\03算数\5年_算数_プリント.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\5年生\02社会\5年_社会_工業.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\6年生\04理科\6年_理科_実験結果.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo If fso.FileExists("2.しりょう整理\6年生\02社会\6年_社会_歴史まとめ.txt") Then score = score + 1 >> "こたえあわせ2.vbs"
echo. >> "こたえあわせ2.vbs"
echo message = "========== こたえあわせ ==========" ^& vbCrLf ^& vbCrLf >> "こたえあわせ2.vbs"
echo message = message ^& "せいかい: " ^& score ^& "/" ^& total ^& vbCrLf ^& vbCrLf >> "こたえあわせ2.vbs"
echo. >> "こたえあわせ2.vbs"
echo If score = total Then >> "こたえあわせ2.vbs"
echo     message = message ^& "★ やったね！ぜんぶ せいかい！！" ^& vbCrLf ^& _ >> "こたえあわせ2.vbs"
echo                        "★ パーフェクト！せんせいの しりょうせいり めいじん だね！" >> "こたえあわせ2.vbs"
echo     title = "◎ だいせいこう！" >> "こたえあわせ2.vbs"
echo     MsgBox message, vbInformation, title >> "こたえあわせ2.vbs"
echo Else >> "こたえあわせ2.vbs"
echo     message = message ^& "まちがい: " ^& (total - score) ^& "こ" ^& vbCrLf ^& vbCrLf ^& _ >> "こたえあわせ2.vbs"
echo                        "もういちど ファイルめいを よくみて がんばろう！" >> "こたえあわせ2.vbs"
echo     title = "こたえあわせ けっか" >> "こたえあわせ2.vbs"
echo     MsgBox message, vbExclamation, title >> "こたえあわせ2.vbs"
echo End If >> "こたえあわせ2.vbs"
echo. >> "こたえあわせ2.vbs"
echo Set fso = Nothing >> "こたえあわせ2.vbs"

cd ..

echo.
echo ★★★ かんせい！★★★
echo.
echo 2.しりょう整理 フォルダが できました。
echo こたえあわせ2.vbs も いっしょに つくりました。
echo.
pause
