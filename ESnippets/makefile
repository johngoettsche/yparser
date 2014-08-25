yscanner : DAO.u lists.u yscanner.u 
	unicon -o yscanner DAO.u lists.u yscanner.u 
	
EFragSLR : Clock.u DAO.u lists.u Objects.u stateAnalysis.u tableSLR.u statesSLR.u productionRules.u grammars.u EFragSLR.u 
	unicon -o EFragSLR Clock.u DAO.u lists.u Objects.u stateAnalysis.u tableSLR.u statesSLR.u productionRules.u grammars.u EFragSLR.u 
	
EFragLR1 : Clock.u DAO.u lists.u Objects.u stateAnalysis.u tableLR1.u statesLR1.u productionRules.u grammars.u EFragLR1.u 
	unicon -o EFragLR1 Clock.u DAO.u lists.u Objects.u stateAnalysis.u tableLR1.u statesLR1.u productionRules.u grammars.u EFragLR1.u 	
	
errSubset : Clock.u DAO.u Lists.u errSubset.u
	unicon -o errSubset Clock.u DAO.u Lists.u errSubset.u
	
yscanner.u : yscanner.icn
	unicon -c yscanner.icn

EFragSLR.u : EFragSLR.icn DAO.u grammars.u productionRules.u statesSLR.u
	unicon -c EFragSLR.icn
	
EFragLR1.u : EFragLR1.icn DAO.u grammars.u productionRules.u statesLR1.u
	unicon -c EFragLR1.icn
	
errSubset.u : errSubset.icn Clock.u DAO.u
	unicon -c errSubset.icn Clock.u DAO.u
	
grammars.u : grammars.icn DAO.u Objects.u 
	unicon -c grammars.icn

productionRules.u : productionRules.icn Clock.u DAO.u Objects.u
	unicon -c productionRules.icn

statesSLR.u : statesSLR.icn Clock.u Objects.u tableSLR.u
	unicon -c statesSLR.icn
	
statesLR1.u : statesLR1.icn Clock.u lists.u Objects.u tableLR1.u
	unicon -c statesLR1.icn
	
tableSLR.u : tableSLR.icn Clock.u stateAnalysis.u
	unicon -c tableSLR.icn
	
tableLR1.u : tableLR1.icn Clock.u stateAnalysis.u
	unicon -c tableLR1.icn
	
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