<div>How to use:</div>

	yparser [-options] filename
	
		-n  	shows all the non terminals
		-t   	shows all the terminals
		-T		creates a .tk file with a list of terminals and default tokens
		-p  	shows production rules
		-s  	shows states
		-a  	shows actions: accept, shift/goto, reduce
		-S		shows the source input for the states 
					{} as a set of states
					[] as a set of inputs
		-e		shows a list of potential error snippets (short list)
		-E		shows a list of potential error snippets (extensive list)

		-o  to write to filename-Option.txt file


------------------
3/25/2014 - User defined language for Notepad++ is: UniconNPpp.xml.  The user will have to: Language -> define user language. Then select import and then select the xml file.  If they open a unicon file they will be able to set the language to Unicon.

------------------
3/26/2014 - started adding the source information for the states, as in what immediate inputs are required to reach each state.  

------------------
3/26/2014 - created an initial process to determine what is acceptable, and what is not acceptable (errors).  I am shure it will need to be changed as I think about this probem more.

------------------
3/30/2014 - added a 'Source State Chain' routine to identify the possibles paths of which it could take to get to each state.  This is obviously incomplete, but makes an effort to show some of the options on how it got to each state.

------------------
4/4/2014 - added a 'Input Chain' that identifies the chain of inputs that was required to create the state

------------------
4/10/2014 - the input chain has been changed to show an ordered set of inputs the source code used to get to the current state.

------------------
4/12/2014 - added a method to define a 'textual pattern' for each terminal token.  Also added a printout of potential error strings using the token patterns.

------------------
4/16/2014 - edited the method for the error snippets to only generate one error snippet for each state, if it is not a duplicate.