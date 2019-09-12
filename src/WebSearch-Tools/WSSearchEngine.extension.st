Extension { #name : #WSSearchEngine }

{ #category : #'*WebSearch-Tools' }
WSSearchEngine class >> systemIcon [ 

	| icon |
	icon := WSIconCache iconForClass: self name asSymbol.
	^icon ifNotNil: [ icon ] ifNil: [ super systemIcon  ]
]
