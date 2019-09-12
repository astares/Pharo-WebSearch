"
The ask.com websearch engine
"
Class {
	#name : #AskCom,
	#superclass : #WSSearchEngine,
	#category : #'WebSearch-Core-Engines'
}

{ #category : #defaults }
AskCom class >> defaultSearchEngineName [
	"Override to return specific name"
	
	^'Ask.com'
]

{ #category : #defaults }
AskCom class >> defaultSearchURL [
	"Return the default search URL, we assume the search term only has to be appended to do a query"
	
	^'https://ask.com/web?q=' 
]
