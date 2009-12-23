**LimitTitle** is a plugin for Movable Type 4 to limit the maximum length of entries and pages titles in the edit screen.

# Installation

* Download <a href="http://github.com/padawan/LimitTitle/" onClick="javascript: pageTracker._trackPageview('/software/LimitTitle.github');">LimitTitle</a>
* Uncompress and copy the LimitTitle folder into your MT plugins directory.

# Settings

By default, Movable sets the maxlength of the title field to 255 characters. You can override this system default by setting a lower value than 255 in the plugin _system_ preferences. If you want to use a specific value for a blog, go to this blog plugins preferences and change the maximum length there.

The precedence of the maxlength preference is as follows:
- if a limit is set for this blog, use it, otherwise…
- if a system-level limit is set, use it, otherwise…
- use MT default value (255).

The plugin will do nothing if the value is > 255 (effectively enforcing the MT limit of 255 chars).

# Caveats

Once you install the plugin and set a limit (system- or blog-wise), it will cut titles of existing entries if they are longuer than the effective limit (the cut will be visible on the edit screen, but will affect the entry only if it is saved). Be careful when editing old entries!

# Parlez-vous français ?

Oui, ce plugin parle le français ! ;-)

# Release history

* Version 1.0 - 2009/12/23 - First public version.

# Copyright & License

Copyright (C) 2009 François Nonnenmacher, Ubiquitic.

This free software is provided as-is WITHOUT ANY KIND OF GUARANTEE; you can redistribute it and/or modify it provided you keep the all copyright notices intact.