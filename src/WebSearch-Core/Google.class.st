"
The Google search engine
"
Class {
	#name : #Google,
	#superclass : #WSSearchEngine,
	#category : #'WebSearch-Core-Engines'
}

{ #category : #defaults }
Google class >> defaultSearchURL [
	
	^'https://www.google.com/search?q='
]
