package Data::Domain::Net::IPAddress;

use strict;
use warnings;


our $VERSION = '0.02';


use base 'Data::Domain::SemanticAdapter';


use constant OPTIONS => qw(
    -forbid_internal
);


1;


__END__



=head1 NAME

Data::Domain::Net::IPAddress - Base class for IP address data domain classes

=head1 SYNOPSIS

    Data::Domain::Net::IPAddress->new;

=head1 DESCRIPTION

This class is a base class for IP address data domain classes. It defines the
C<-forbid_internal> option.

Data::Domain::Net::IPAddress inherits from
L<Data::Domain::SemanticAdapter>.

The superclass L<Data::Domain::SemanticAdapter> defines these methods and
functions:

    new(), _inspect(), adaptee(), adaptee_clear(), carp(), clear_adaptee(),
    confess(), croak(), install_shortcuts(), semantic_args(),
    semantic_class_name()

The superclass L<Data::Domain> defines these methods and functions:

    Date(), Enum(), Int(), List(), Num(), One_of(), String(), Struct(),
    Time(), Whatever(), _check_range(), _parse_args(), import(), inspect(),
    messages(), msg(), node_from_path(), subclass()

The superclass L<Data::Inherited> defines these methods and functions:

    every_hash(), every_list(), flush_every_cache_by_key()

The superclass L<Class::Accessor::Complex> defines these methods and
functions:

    cluck(), flatten(), mk_abstract_accessors(), mk_array_accessors(),
    mk_boolean_accessors(), mk_class_array_accessors(),
    mk_class_hash_accessors(), mk_class_scalar_accessors(),
    mk_concat_accessors(), mk_forward_accessors(), mk_hash_accessors(),
    mk_integer_accessors(), mk_new(), mk_object_accessors(),
    mk_scalar_accessors(), mk_set_accessors(), mk_singleton()

The superclass L<Class::Accessor> defines these methods and functions:

    _carp(), _croak(), _mk_accessors(), accessor_name_for(),
    best_practice_accessor_name_for(), best_practice_mutator_name_for(),
    follow_best_practice(), get(), make_accessor(), make_ro_accessor(),
    make_wo_accessor(), mk_accessors(), mk_ro_accessors(),
    mk_wo_accessors(), mutator_name_for(), set()

The superclass L<Class::Accessor::Installer> defines these methods and
functions:

    install_accessor(), subname()

=head1 METHODS

=over 4



=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datadomainnet> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Data::Domain::Net::IPAddress>.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-data-domain-net@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHOR

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut

