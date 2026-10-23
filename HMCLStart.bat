@echo off
for %%f in (HMCL-*.jar) do (
    start "" javaw -Dhmcl.region.override=false -jar "%%f"
)
echo End.
echo GoodBye.
timeout /t 1 >nul
exit
