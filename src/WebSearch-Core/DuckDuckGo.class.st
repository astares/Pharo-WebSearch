"
The DuckDuckGo search engine
"
Class {
	#name : #DuckDuckGo,
	#superclass : #WSSearchEngine,
	#category : #'WebSearch-Core-Engines'
}

{ #category : #defaults }
DuckDuckGo class >> defaultSearchURL [
	"Return the default search URL, we assume the search term only has to be appended to do a query"
	
	^'https://duckduckgo.com/?q='
]
