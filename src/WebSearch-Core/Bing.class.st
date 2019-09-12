"
The bing search engine
"
Class {
	#name : #Bing,
	#superclass : #WSSearchEngine,
	#category : #'WebSearch-Core-Engines'
}

{ #category : #defaults }
Bing class >> defaultSearchURL [
	
	^'https://www.bing.com/search?q='
]
