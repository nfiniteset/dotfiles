# The idea is to set all the options as I like them for the Terminal.app
# * Pro theme
# * Font Menlo Regular 14 pt.
# * Size of the window: 520 x 100 (Ideally it should depend on the resolution of the main screen)
# * TODO: Set some annoying key fixes, like being able to delete and <C-l> <C-R>

require 'geoffrey'

Geoffrey.plist do
  file :terminal
  affects "/Applications/Utilities/Terminal.app"

  options["Default Window Settings"] = "Pro"
  options["Startup Window Settings"] = "Pro"
  options["HasMigratedDefaults"] = true
  options["Window Settings"]["Pro"]["Font"] = "bplist00\xD4\x01\x02\x03\x04\x05\x06\x18\x19X$versionX$objectsY$archiverT$top\x12\x00\x01\x86\xA0\xA4\a\b\x11\x12U$null\xD4\t\n\v\f\r\x0E\x0F\x10V$classVNSNameVNSSizeXNSfFlags\x80\x03\x80\x02\#@,\x00\x00\x00\x00\x00\x00\x10\x10]Menlo-Regular\xD2\x13\x14\x15\x16Z$classnameX$classesVNSFont\xA2\x15\x17XNSObject_\x10\x0FNSKeyedArchiver\xD1\x1A\eTroot\x80\x01\b\x11\x1A#-27<BKRY`ikmvx\x86\x8B\x96\x9F\xA6\xA9\xB2\xC4\xC7\xCC\x00\x00\x00\x00\x00\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x1C\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xCE"
  options["Window Settings"]["Pro"]["Font"].blob = true
  options["Window Settings"]["Pro"]["columnCount"] = 520
  options["Window Settings"]["Pro"]["rowCount"]    = 100
end
