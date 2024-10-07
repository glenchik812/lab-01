lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init() 

bld = gtk.Builder()
bld:add_from_file('UI.glade')

ui = bld.objects

ui.wnd.title = 'UI'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()
gtk.main()