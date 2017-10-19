
REM Assume this file has been copied into <project>RAE/Analysis folder
REM where all the .log output files are generated by Python scripts


pushd %~dp0
echo CWD=%cd% > generate-RA-err.log
set RAE_HOME=%ASSERTROOT%\SADL_Extra_Tools
echo RAE_HOME=%RAE_HOME% >> generate-RA-err.log
copy %RAE_HOME%\Pre\remsg-summary.lsp .
echo (acl2::value :q) > postprocess-batch.lsp
echo (load "remsg-summary.lsp") >> postprocess-batch.lsp
echo (filter-remsg-output-lst (list  >> postprocess-batch.lsp
for %%f in (*.log) do echo "%%~nf" >> postprocess-batch.lsp
echo ) nil nil t) >> postprocess-batch.lsp
echo (ccl:quit) >> postprocess-batch.lsp

%RAE_HOME%\RA\wx86cl64.exe -I %RAE_HOME%\RA\rae.wx86cl64 -K ISO-8859-1 -e "(acl2::acl2-default-restart)" < postprocess-batch.lsp >> generate-RA-err.out 2>&1
popd
