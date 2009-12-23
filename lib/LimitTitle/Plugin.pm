# ----------------------------------------------------------------------------
# LimitTitle
# A Movable Type plugin to limit the maximum length of entry titles.
# http://ubiquitic.com/software/limit-title-movable-type-plugin.html
#
# Release 1.0 — 2009/12/23
# ----------------------------------------------------------------------------
# This free software is provided as-is WITHOUT ANY KIND OF GUARANTEE.
# You may use it for commercial or personal use.
# You can distribute or modify it, provided you keep this notice intact.
#
# Copyright (C) François Nonnenmacher, Ubiquitic. http://ubiquitic.com/
# ----------------------------------------------------------------------------

package LimitTitle::Plugin;

use strict;
use MT 4.0;

sub instance {
	return mt->component("LimitTitle");
}

sub limit_title_maxlength {
    my ($cb, $app, $src) = @_;
	my $syscfg = instance()->get_config_hash('system');
	my $cfg = instance()->get_config_hash('blog:'.$app->blog->id);
    return unless ($cfg->{blog_title_maxlength} || $syscfg->{sys_title_maxlength});
    my $maxlength = $cfg->{blog_title_maxlength} ? $cfg->{blog_title_maxlength} : $syscfg->{sys_title_maxlength};
    return if ($maxlength > 255);
    $$src =~ s/255/$maxlength/;
}

1; # Ah que coucou !