# Simple console dart brick

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

This brick creates a very simple structure for a dart console application. Your dart sdk version detected automatically. After the structure is created, added dependency for [analyzer][2] and brick independently run `dart pub get`

## Arguments

1. `--name` > project name in pubspec.yaml, default is `draft_app`
2. `--linter_suppression` > removes some annoying linters, default is `Yes`

## Folder structure & files

```
├── {{name}}/
╰── ├── pubspec.yaml
    ├── analysis_options.yaml
    ╰── lib/
        ╰── main.dart
```
{{name}} mean the name you enter when 'make' the brick

## Getting brick 

1. [Get mason][1]
2. Run in console  
```mason add -g simple_console_dart --git-url https://github.com/cocahonka/simple_console_dart.git```

## Usage

Run in console `mason make simple_console_dart`

## Additionally (not mandatory)
To shorten the command, you can create command alias guide for windows.   
Checked in powershell v.7:
1. ```cd C:/Users/USERNAME/```
2. ```mkdir .config/powershell```
3. ```code .config/powershell/user_profile.ps1```
4. Write in opened file and save:
```
# Alias
Set-Alias dartfast CreateSimpleDartConsoleApp

function CreateSimpleDartConsoleApp()
{
    mason make simple_console_dart
}  
```
5. ```code $PROFILE.CurrentUserCurrentHost```
6. Write in opened file and save: ```. $env:USERPROFILE/.config/powershell/user_profile.ps1```
7. Restart shell and now you can use ```dartfast``` instead of ```mason make simple_console_dart```

[1]: https://github.com/felangel/mason
[2]: https://pub.dev/packages/very_good_analysis
