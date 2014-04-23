yparser : DAO.u lists.u yparser.u 
	unicon -o yparser DAO.u lists.u yparser.u 

yparser.u : yparser.icn
	unicon -c yparser.icn
	
ESnipSLR : Clock.u DAO.u Objects.u stateAnalysis.u lookAhead.u statesSLR.u productionRules.u grammars.u ESnipSLR.u 
	unicon -o ESnipSLR Clock.u DAO.u Objects.u stateAnalysis.u lookAhead.u statesSLR.u productionRules.u grammars.u ESnipSLR.u 

ESnipSLR.u : ESnipSLR.icn DAO.u grammars.u
	unicon -c ESnipSLR.icn
	
grammars.u : grammars.icn DAO.u Objects.u productionRules.u
	unicon -c grammars.icn

productionRules.u : productionRules.icn Clock.u DAO.u Objects.u statesSLR.u
	unicon -c productionRules.icn
	
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