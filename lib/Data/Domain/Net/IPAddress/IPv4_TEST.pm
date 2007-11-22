package Data::Domain::Net::IPAddress::IPv4_TEST;

use strict;
use warnings;
use Data::Domain::Net ':all';
use Test::More;


our $VERSION = '0.02';


use base qw(
    Data::Domain::SemanticAdapter::Test
    Data::Semantic::Net::IPAddress::TestData::IPv4
);


use constant PLAN => 5;

sub run {
    my $self = shift;
    $self->SUPER::run(@_);

    my $domain = IPv4();

    isa_ok($domain, 'Data::Domain::Net::IPAddress::IPv4');
    isa_ok($domain, 'Data::Domain::SemanticAdapter');
    isa_ok($domain->adaptee, 'Data::Semantic::Net::IPAddress::IPv4');

    my $domain2 = IPv4(-not_in => [ qw(212.186.17.4 212.186.17.5) ]);
    $self->is_excluded($domain2, '212.186.17.4');
    $self->is_valid($domain2, '212.186.17.6');
}


1;


__END__


=head1 NAME

Data::Domain::Net::IPAddress::IPv4_TEST - Test companion class

=head1 SYNOPSIS

    perl t/01_companion_classes.t

=head1 DESCRIPTION

Test companion class for L<Data::Domain::Net::IPAddress::IPv4>. Gets its
test data from L<Data::Semantic::Net::IPAddress::TestData::IPv4>.

Data::Domain::Net::IPAddress::IPv4_TEST inherits from
L<Data::Domain::SemanticAdapter::Test> and
L<Data::Semantic::Net::IPAddress::TestData::IPv4>.

The superclass L<Data::Domain::SemanticAdapter::Test> defines these methods
and functions:

    hash_rename(), is_excluded(), is_invalid(), is_valid(), munge_args(),
    test_is_invalid(), test_is_valid()

The superclass L<Test::CompanionClasses::Base> defines these methods and
functions:

    new(), clear_package(), make_real_object(), package(), package_clear(),
    planned_test_count()

The superclass L<Class::Accessor::Complex> defines these methods and
functions:

    carp(), cluck(), croak(), flatten(), mk_abstract_accessors(),
    mk_array_accessors(), mk_boolean_accessors(),
    mk_class_array_accessors(), mk_class_hash_accessors(),
    mk_class_scalar_accessors(), mk_concat_accessors(),
    mk_forward_accessors(), mk_hash_accessors(), mk_integer_accessors(),
    mk_new(), mk_object_accessors(), mk_scalar_accessors(),
    mk_set_accessors(), mk_singleton()

The superclass L<Class::Accessor> defines these methods and functions:

    _carp(), _croak(), _mk_accessors(), accessor_name_for(),
    best_practice_accessor_name_for(), best_practice_mutator_name_for(),
    follow_best_practice(), get(), make_accessor(), make_ro_accessor(),
    make_wo_accessor(), mk_accessors(), mk_ro_accessors(),
    mk_wo_accessors(), mutator_name_for(), set()

The superclass L<Class::Accessor::Installer> defines these methods and
functions:

    install_accessor(), subname()

The superclass L<Data::Inherited> defines these methods and functions:

    every_hash(), every_list(), flush_every_cache_by_key()

The superclass L<Data::Semantic::Net::IPAddress::TestData::IPv4> defines
these methods and functions:

    TESTDATA()

=head1 METHODS

=over 4



=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datadomainnet> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Data::Domain::Net::IPAddress::IPv4_TEST>.

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


