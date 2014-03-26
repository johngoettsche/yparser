yparser : classes.u stateAnalysis.u lookAhead.u states.u productionRules.u grammars.u yparser.u 
	unicon -o yparser classes.u stateAnalysis.u lookAhead.u states.u productionRules.u grammars.u yparser.u 
   
classes.u : classes.icn
	unicon -c classes.icn
	
stateAnalysis.u : stateAnalysis.icn
	unicon -c stateAnalysis.icn
	
lookAhead.u : lookAhead.icn
	unicon -c lookAhead.icn

states.u : states.icn
	unicon -c states.icn
   
productionRules.u : productionRules.icn
	unicon -c productionRules.icn
   
grammars.u : grammars.icn
	unicon -c grammars.icn

yparser.u : yparser.icn
	unicon -c yparser.icn
   
clean:
	rm -rf *u