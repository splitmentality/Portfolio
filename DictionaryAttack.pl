#!/usr/bin/perl
#ddrage0 Perl Attack Week6.5

use Digest::SHA qw(sha256_hex);

#read the password hash

$passwordHash = "04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2";

#open the wordlist

open(WORDLIST,"<wordlist.txt") or die "Couldn't open wordlist, $!";

#repeat for each word

while(<WORDLIST>){
    chomp;
    $word = $_;

    #hash the word
    $wordlistHash = sha256_hex($word);

    print "$word: $wordlistHash\n";

    #if the hash is the same as the correct passowrd's hash then we have cracked the password!
    if($wordHash eq $passwordHash) {
        print("Password has been cracked! it was $word\n");

        exit;
    }

}