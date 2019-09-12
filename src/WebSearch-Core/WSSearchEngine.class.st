"
Abstract superclass for search engine providers
"
Class {
	#name : #WSSearchEngine,
	#superclass : #Object,
	#category : #'WebSearch-Core-Base'
}

{ #category : #defaults }
WSSearchEngine class >> defaultSearchEngineName [
	"Return the class name by default, subclasses may want to override to provide a custom name"
	
	^self name
]

{ #category : #defaults }
WSSearchEngine class >> defaultSearchURL [
	"Return the default search URL, we assume the search term only has to be appended to do a query"
	
	^self subclassResponsibility 
]

{ #category : #testing }
WSSearchEngine class >> isAbstract [ 	

	^self name = #WSSearchEngine 
]

{ #category : #querying }
WSSearchEngine class >> searchFor: aTerm [ 
	"Search for the given term"
	
	self isAbstract ifTrue: [ ^self error: 'Subclasses need to be used' ].
	WebBrowser openOn: (self defaultSearchURL, aTerm urlEncoded)
]
