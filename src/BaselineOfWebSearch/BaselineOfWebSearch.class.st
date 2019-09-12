"
Websearch for Spotter 

(c) 2019 by astares.com 
"
Class {
	#name : #BaselineOfWebSearch,
	#superclass : #BaselineOf,
	#category : #BaselineOfWebSearch
}

{ #category : #baselines }
BaselineOfWebSearch >> baseline: spec [
	<baseline>
	
	spec for: #common do: [ 
		spec
			package: 'WebSearch-Core';
			package: 'WebSearch-Tools' with: [ spec requires: #('WebSearch-Core') ].
			
	spec			
		group: 'Core' with: #('WebSearch-Core');
		group: 'Tools' with: #('WebSearch-Tools');
		group: 'all' with: #('Core' 'Tools');
		group: 'default' with: #('all' )].
		
	
]
