// Grammar:
// 0. S' -> S
// 1. S -> S B
// 2. S -> epsilon
// 3. B -> ( B )
// 4. B -> ( )
//
// Canonical Collection:
//
// State 0 (S0):
// 	CLOSURE([S' -> .S, $]) = {
//		[S' -> .S, $],
//		[S -> .S B, $],
//		[S -> .epsilon, $],
// 	}
//
// State 1 (S1): GOTO(S0, S) = {
// 	CLOSURE([S -> S. B, $]) = {
// 		[S -> S. B, $],
// 	 	[B -> .( B ), $],
// 	 	[B -> .( ), $]
// 	}
//
// State 2 (S2): GOTO(S0, B) = {
//
//
