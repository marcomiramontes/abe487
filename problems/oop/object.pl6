#!/usr/bin/env perl6

enum Weight <Lost No_change Gained>;
enum Exhaustion <Rarely Sometimes Occasionally Mostly>;
enum Physical_activity <Exercise Gardening Walking None>;
enum Frailty_status <Non_frail Pre_frail Frail>;

class Patient {
	has Str $.id is required;
	has Weight $.weight is required;
	has Str $.grip_strength is required;
	has Str $.walk_test is required;
	has Exhaustion $.exhaustion is required;
	has Physical_activity $.physical_activity is required;
	has Frailty_status $.frailty_status is required;
	method frailty_tests { join ' ', $!weight, 'in weight|',  $!grip_strength, 'kg grip strength|', $!walk_test, 'sec walk test|', $!exhaustion, 'exhausted|', $!physical_activity, 'for physical activity'; }
} 

my Patient $A_M .= new(id => '001', weight => No_change, grip_strength => '22', walk_test => '7.55', exhaustion => Rarely, physical_activity => Walking, frailty_status => Non_frail);

for $A_M {
	printf " Patient: %s \n Frailty Tests: %s \n Frailty Status: %s\n\n", .id, .frailty_tests, .frailty_status;
}


