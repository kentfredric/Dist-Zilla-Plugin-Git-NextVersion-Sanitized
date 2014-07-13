use strict;
use warnings;

package Dist::Zilla::Plugin::Git::NextVersion::Sanitized;

our $VERSION = '0.002000';

# ABSTRACT: Sanitize versions handed to you by Git::NextVersion

=head1 SYNOPSIS

This exist, mostly because I accidentally keep doing

    V=2.6.0 dzil release # shit, I mean 2.006000

Or

    V=2.00001 dzil release # Crap, I can't count, how many 0's is that?

So this wraps L<< C<::Role::Version::Sanitize>|Dist::Zilla::Role::Version::Sanitize >> around
L<< C<[Git::NextVersion]>|Dist::Zilla::Plugin::Git::NextVersion >>

=cut

use Moose;
extends 'Dist::Zilla::Plugin::Git::NextVersion';
with 'Dist::Zilla::Role::Version::Sanitize';


__PACKAGE__->meta->make_immutable;
no Moose;

1;
