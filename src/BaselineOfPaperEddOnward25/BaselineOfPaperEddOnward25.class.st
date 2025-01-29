Class {
	#name : #BaselineOfPaperEddOnward25,
	#superclass : #BaselineOf,
	#category : #BaselineOfPaperEddOnward25
}

{ #category : #loading }
BaselineOfPaperEddOnward25 class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'paper-edd-onward25' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfPaperEddOnward25 >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'PaperEddOnward25'
		]
]
