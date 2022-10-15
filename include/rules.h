typedef struct rule{

	char* lhs;
	char* rhs;

} rule;

rule rules[] = {

	{"X", "aXc"},
	{"X", "pY"},
	{"Y", "bYc"},
	{"Y", "q"}
};

char* start_symbol = "X";
