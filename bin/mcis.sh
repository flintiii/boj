#!/bin/bash
# pflint Fri 17 May 2013 07:49:14 AM EDT 
# packs html into String and makes changes at the end...
# 
# this is the origin point:
origin="http://www.w3.org/TR/html4/strict.dtd"
#
# the following evaluates the string... go to line 79 for more stuff...
# change this line <meta http-equiv="refresh" content="10;url=http://10.0.1.45/furmon/out.html">
read -d '' String <<"EOF"
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html><head>
<meta http-equiv="refresh" content="10">
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type"><title>Pellergy Control For Furmon Site</title>

</head>
<body>
<img style="width: 847px; height: 642px;" alt="Drawing of control plate should be here" src="http://docbox.flint.com/%7Eflint/furmon/Pellergy_Control_blank_plate.png">
<table style="position: relative; z-index: 1; left: 120px; top: -500px; width: 606px; height: 215px;" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td colspan="2" rowspan="1" style="position: relative; width: 305px;"><big>
opstate </big><br>
</td>
<td colspan="3" rowspan="1" style="position: relative; width: 257px;"><big>
state_counter </big><br>
</td>
</tr>
<tr>
<td colspan="2" rowspan="1" style="position: relative; width: 103px;">No Alarm<br>
</td>
<td colspan="3" rowspan="1" style="position: relative; width: 257px;">All is well<br>
</td>
</tr>
<tr>
<td style="position: relative; width: 100px;">Call <br>
</td>
<td style="position: relative; width: 100px;">Resets
<br>
</td>
<td style="position: relative; width: 140px;">stack_temp
&#8457; <br>
</td>
<td style="position: relative; width: 160px;">system_temp
&#8457; <br>
</td>
<td style="position: relative; width: 130px;">Blower<br>
</td>
</tr>
<tr>
<td style="position: relative; width: 120px;">
<br>
</td>
<td style="position: relative; width: 130px;">Button1
<br>
</td>
<td style="position: relative; width: 140px;">Button2
<br>
</td>
<td style="position: relative; width: 140px;">Button3<br>
</td>
<td style="position: relative; width: 140px;">Button4<br>
</td>
</tr>
<tr>
<td style="position: absolute; top: 542px; left: 190px;">Param<br>
</td>
<td style="position: absolute; top: 542px; left: 343px;">Test<br>
</td>
<td style="position: absolute; top: 542px; left: 491px;">Enabl<br>
</td>
<td style="position: absolute; top: 541px; left: 643px;">Feed</td>
</tr>
</tbody>
</table>
<br>
<br>
</body></html>
EOF
# echo "this is the string"
echo "$String" > in.html
rm -rf outpcp.html
newrd1=$1
newrd2=$2
t11="test 1,1"
t12="test 1,2"
#
# This takes the couplets and makes the changes...
echo "0 is $0"
echo "Number of Arguments are $#"
echo $@
echo "This starts the changes arguments must be in pairs, target:change"
echo $@
for f in $@; 
do 
	target=${f%:*}; 
	change=${f#*:};  
	echo "Next change $target  $change"; 
	changed=${String/$target/$change}; String=$changed 
done
echo "$String" > out.html
echo "the difference between these strings is"
# diff -y in.html out.html | less -S
diff in.html out.html #| less -NS
# sleep 5
# echo "Type cntrl -c to stop firefox now"
# firefox 2>/dev/null out.html
