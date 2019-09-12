"
A spotter item for the web search
"
Class {
	#name : #WSWebSearchSpotterItem,
	#superclass : #Object,
	#instVars : [
		'searchEngineClass',
		'searchTerm'
	],
	#category : #'WebSearch-Tools-Spotter'
}

{ #category : #'instance creation' }
WSWebSearchSpotterItem class >> searchEngine: aSearchEngineClass searchTerm: aString [ 
	^(self new)
		searchEngineClass: aSearchEngineClass;
		searchTerm: aString;
		yourself
]

{ #category : #accessing }
WSWebSearchSpotterItem >> searchEngineClass [
	^ searchEngineClass
]

{ #category : #accessing }
WSWebSearchSpotterItem >> searchEngineClass: anObject [
	searchEngineClass := anObject
]

{ #category : #accessing }
WSWebSearchSpotterItem >> searchTerm [
	^ searchTerm
]

{ #category : #accessing }
WSWebSearchSpotterItem >> searchTerm: anObject [
	searchTerm := anObject
]
