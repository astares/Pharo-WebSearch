Extension { #name : #GTSpotter }

{ #category : #'*WebSearch-Tools' }
GTSpotter >> spotterWebSearchResultsFor: aStep [
	<spotterOrder: 30>
 
	^ aStep listProcessor
		title: 'WebSearch';
		itemName: [:each | each printString ];
		itemIcon: [:each | each icon ];
		filter: GTNullFilter item: [ :filter :context | 
		   WSSearchEngine
				allSubclassesDo: [:each | filter value: (WSWebSearchSpotterItem searchEngine: each searchTerm: context textTrimmed) ] ];
		actLogic: [ :item :step |
			step exit.
			item performSearch ];
		wantsToDisplayOnEmptyQuery: false		
]
