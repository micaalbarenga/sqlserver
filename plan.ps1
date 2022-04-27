$pkg_name = "sqlserver"
$pkg_origin = "micaalbarenga"
$pkg_version = "0.1.0"
$pkg_maintainer = "The Habitat Maintainers <humans@habitat.sh>"

$pkg_svc_run = ".`"$env:ProgramFiles/Microsoft SQL Server/MSSQL15.$pkg_name/MSSQL/binn/sqlservr.exe`" -c -s$pkg_name"
$pkg_exports = @{
  "port"="port"
}
$pkg_description = "Microsoft SQL Server 2019"
$pkg_upstream_url = "https://www.microsoft.com/en-us/sql-server/sql-server-2019"
$pkg_bin_dirs = @("bin")
$pkg_deps=@("core/dsc-core")

$setupDir = "C:"

function Invoke-Install {
  Copy-Item "$setupDir/*" $pkg_prefix/bin -Recurse
}
