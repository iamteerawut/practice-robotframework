@echo off
set /A test=%1%
if %test% == 1 (
  echo Executing Robot Framework..
  python -m robot -d .\robotframework\reports\1-getting-started .\robotframework\integrations\1-getting-started
) else if %test% == 2 (
  echo Executing Robot Framework..
  python -m robot -d .\robotframework\reports\2-test-folder .\robotframework\integrations\2-test-folder
)
