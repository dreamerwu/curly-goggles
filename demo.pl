#!/usr/bin/perl
#function: to calculate how many cystine in this protein.
use warnings;
use diagnostics;

#input the amino acide from terminal
chomp ($input=<>);
@new=split //, "$input"; #split function is to seperate $input
my (%hash,$aa,$total_aa_number);

#to calculate the number of every type amino acide & the total amino acide number
foreach $aa (@new) {
	$hash{$aa}+=1;
	$total_aa_number=$total_aa_number+1;
}

#to print the number 
foreach $aa (sort keys %hash) {
	
	my $percentage=($hash{$aa})/$total_aa_number*100;
	print "the number of amino acide---$aa is $hash{$aa}  ($percentage %) !\n";
}
print "\n","the total amino acide number is $total_aa_number!!!!!!!!!\n";







