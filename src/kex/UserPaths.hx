package kex;

class UserPaths {
	public static function homeDirectory() : String {
// TODO (DK) why is this `!macro` crap needed?
#if !macro
 #if kha_debug_html5
		return js.Syntax.code("require('electron').remote.require('os').homedir()");
 #elseif (kha_linux || kha_macos)
		return Sys.getEnv('HOME');
 #else
		return Sys.getEnv('HOMEPATH');
 #end
#else
		return '';
#end
    }
}
