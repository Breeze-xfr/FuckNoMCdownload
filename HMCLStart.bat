@echo off
for %%f in (HMCL-*.jar) do java -Dhmcl.region.override=false -jar "%%f"
echo End.
echo GoodBye.