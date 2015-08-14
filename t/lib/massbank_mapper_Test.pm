package lib::massbank_mapper_Test ;

use diagnostics; # this gives you more debugging information
use warnings;    # this warns you of bad practices
use strict;      # this prevents silly errors
use Exporter ;
use Carp ;

use Data::Dumper ;

our $VERSION = "1.0";
our @ISA = qw(Exporter);
our @EXPORT = qw( get_pcgroup_listTest get_pcgroupsTest set_massbank_matrix_objectTest add_massbank_matrix_to_input_matrixTest);
our %EXPORT_TAGS = ( ALL => [qw(get_pcgroup_listTest get_pcgroupsTest set_massbank_matrix_objectTest add_massbank_matrix_to_input_matrixTest)] );

use lib '/Users/fgiacomoni/Inra/labs/perl/galaxy_tools/massbank_ws_searchspectrum' ;
use lib::mapper qw( :ALL ) ;

sub get_pcgroupsTest {
	my ( $pcs, $mzs, $ints ) = @_;
	my $omap = lib::mapper->new() ;
	my $pcgroups = $omap->get_pcgroups($pcs, $mzs, $ints) ;
#	print Dumper $pcgroups ;
	return ($pcgroups) ;
}


sub get_pcgroup_listTest {
	my ($pcs) = @_ ; 
	my $omap = lib::mapper->new() ;
	my $pcgroup_list = $omap->get_pcgroup_list($pcs) ;
#	print Dumper $pcgroup_list ;
	return ($pcgroup_list) ;
}

sub set_massbank_matrix_objectTest {
	my ($header, $init_pcs, $pcgroups) = @_ ; 
	my $omap = lib::mapper->new() ;
	my $matrix = $omap->set_massbank_matrix_object($header, $init_pcs, $pcgroups) ;
#	print Dumper $matrix ;
	return ($matrix) ;
}

sub add_massbank_matrix_to_input_matrixTest {
	my ($input_matrix_object, $massbank_matrix_object ) = @_ ; 
	my $omap = lib::mapper->new() ;
	my $matrix = $omap->add_massbank_matrix_to_input_matrix($input_matrix_object, $massbank_matrix_object ) ;
#	print Dumper $matrix ;
	return ($matrix) ;
}


1 ;