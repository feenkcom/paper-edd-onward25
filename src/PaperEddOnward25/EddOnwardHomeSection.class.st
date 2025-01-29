Class {
	#name : #EddOnwardHomeSection,
	#superclass : #GtHomeMultiCardSection,
	#category : #'PaperEddOnward25-Section'
}

{ #category : #'as yet unclassified' }
EddOnwardHomeSection >> eddOnward2025HomeCard [
	<gtSectionCard>
	<gtExample>
	^ GtHomeCard page
		title: 'EDD Onward!';
		description: 'EDD Onward! 2025 Paper';
		databaseName: 'feenkcom/paper-edd-onward25/lepiter';
		pageName: 'EDD Onward! 2025 Paper';
		priority: 10;
		assertInvariant;
		yourself
]

{ #category : #initialization }
EddOnwardHomeSection >> sectionTitle [
	^ 'EDD Onward Paper'
]
