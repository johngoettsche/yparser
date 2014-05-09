yparser : DAO.u lists.u yparser.u 
	unicon -o yparser DAO.u lists.u yparser.u 
	
ESnipSLR : Clock.u DAO.u lists.u Objects.u stateAnalysis.u lookAhead.u statesSLR.u productionRules.u grammars.u ESnipSLR.u 
	unicon -o ESnipSLR Clock.u DAO.u lists.u Objects.u stateAnalysis.u lookAhead.u statesSLR.u productionRules.u grammars.u ESnipSLR.u 
	
ESnipLR1 : Clock.u DAO.u lists.u Objects.u stateAnalysis.u lookAhead.u statesLR1.u productionRules.u grammars.u ESnipLR1.u 
	unicon -o ESnipLR1 Clock.u DAO.u lists.u Objects.u stateAnalysis.u lookAhead.u statesSLR.u productionRules.u grammars.u ESnipLR1.u 	
	
errSubset : Clock.u DAO.u errSubset.u
	unicon -o errSubset Clock.u DAO.u errSubset.u
	
yparser.u : yparser.icn
	unicon -c yparser.icn

ESnipLR1.u : ESnipLR1.icn DAO.u grammars.u productionRules.u statesLR1.u
	unicon -c ESnipLR1.icn
	
ESnipSLR.u : ESnipSLR.icn DAO.u grammars.u productionRules.u statesSLR.u
	unicon -c ESnipSLR.icn
	
errSubset.u : errSubset.icn Clock.u DAO.u
	unicon -c errSubset.icn Clock.u DAO.u
	
grammars.u : grammars.icn DAO.u Objects.u 
	unicon -c grammars.icn

productionRules.u : productionRules.icn Clock.u DAO.u Objects.u
	unicon -c productionRules.icn

statesLR1.u : statesLR1.icn Clock.u lists.u Objects.u lookAhead.u
	unicon -c statesLR1.icn
	
statesSLR.u : statesSLR.icn Clock.u Objects.u lookAhead.u
	unicon -c statesSLR.icn
	
lookAhead.u : lookAhead.icn Clock.u stateAnalysis.u
	unicon -c lookAhead.icn
	
stateAnalysis.u : stateAnalysis.icn Clock.u DAO.u lists.u
	unicon -c stateAnalysis.icn

lists.u: lists.icn
	unicon -c lists
	
Objects.u : Objects.icn
	unicon -c Objects.icn
	
DAO.u : DAO.icn
	unicon -c DAO.icn
	
Clock.u : Clock.icn
	unicon -c Clock.icn
	
clean:
	rm -rf *u