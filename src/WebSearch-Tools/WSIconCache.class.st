"
Provide an icon per class cache
"
Class {
	#name : #WSIconCache,
	#superclass : #Object,
	#classVars : [
		'ClassIconCache'
	],
	#category : #'WebSearch-Tools-Utilities'
}

{ #category : #'private - accessing' }
WSIconCache class >> classIconCache [

	^ ClassIconCache ifNil: [ ClassIconCache := Dictionary new ]
]

{ #category : #'private - utilities' }
WSIconCache class >> generateIcon [
	<script>
	
	| base64Contents contentsMethod iconName fileRef |  
	fileRef := UIManager default chooseExistingFileReference: 'Select the PNG file'
							extensions: #('png') 
							path: ''.
	fileRef ifNil: [ ^ self ].
	iconName := UIManager default request: 'Class name for Icon' initialAnswer: 'blank'.
	iconName ifNil: [ ^ self ].
	base64Contents := (Base64MimeConverter mimeEncode: fileRef binaryReadStream) contents.
	 
	contentsMethod := String
		streamContents: [ :s | 
			s
				nextPutAll: 'icon';
				nextPutAll: iconName;
				nextPutAll: 'Contents';
				cr;
				cr;
				tab;
				nextPut: $^;
				nextPut: $';
				nextPutAll: base64Contents;
				nextPut: $' ].
	self class compile: contentsMethod classified: #'private - icons'.
	 
]

{ #category : #'private - icons' }
WSIconCache class >> iconBingContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABvklEQVR42mNkQAedVYZAMg2I
nRj+MyiAxRgZHgDJfQyM/2cxlLWfR1bOCGd1V3Ay/GOaCBRKQRFHBf+BaA4D0998htLO7wgD
IJp3ALl2DESB/4cYmP55MJR2fGeEOnsWUHMqiLnEJ5Th8aePDPMvn2O49f4NPkNmM5S3pTEy
dFYC/cx0Fuaa/RHJDA5yigwHHt1ncFwxF68zgMgYaEDVdKDeDJgosgHF+7czfP71k+H2+7c4
jPg/A2TATaABatgN2MZwJi6L4frb1wwbbl8H4msMZ148BVkNM+EWI0NH1U8GRkY2bAaAvLDa
P4IhWE0bqAQSXPFb1zAsunoB5olfBA3gZ2dnmOUewBCmoQuWT9i2lmHhlfNIBuDwAsipm+/c
YCgwsWIQ5OAEy337/ZvBe80ihgOP7yN5AUcgooOtd28y5O7ZwnD/43v0QESNxgZrJ4ZaK0cG
JqifH336wFCwdxvDemAAYo9GtIQEApZSsgxTXHwZ9j68y9B4bD/D19+/sEXhbIYKUEIiNykz
//FgKOn6jpSZyoGGMBPOTP+BmYn5Xz4oHzBgVYiSnRkVwGKM/x8AtQKzM8MsYPpHyc4AfoPQ
WyoT+jwAAAAASUVORK5CYII='
]

{ #category : #'private - icons' }
WSIconCache class >> iconDuckDuckGoContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAADPklEQVR42m2TeUxTWRTGv9u+
lmep5QFFbIsIuBDFBZfEgIEILmDcNc4g4AaYaIwBNHFpZtSoMdFENP6jEtdoNEbBmhiVoOKM
GqNGUXGLCoJWKLh0e21f29f35g6Njdv97+ac+zv3fOc7BL85HzeXDQ12dUyFJKXQqwQl06oe
kHbV+Peh9z/nku8vVnNpusS79mrG5hQqNFoCWQ4HFAqEnHbJ+/j2eYbTrzXtOPHxF0DHqoL8
qEEZF9Wpw7T8zYsQP3X9UIlJMKLvlAXwPb3bQ4vMTNp15kEEYN1UMpzRG+7TqtF88x3ErtwC
NsEAz7U6uBrO/gDSzShFoO1FtywGx5i2H+/qBXyonn89Orsg31FXC2i06Ld6BzSZWSAKJQLW
NnTvrqI/6oxAYksq4bp8+uTAA1eXEOuGRSPYjPEt/K3LkNwOaOatgJhbjER9NBhGAY83CNe9
Jgi15ghAZUxB1JCRYsj5xUTay/OqdQV/1DjqD/cGNRV/IZAxCXanD6PSDRD8QVxobEFWfTVk
nycC4eZXwH3DUkTeLcvZryssWuO0HA2LNasM7PSl6PnCI2NwImRJgChY4TyyDOrYNsgiwdcG
A2LmlsHdeN5M3i2duE83vbjyG0AakYU0834QQqfovYfQmwVUBwEhnoHnhQ6+t31pEgkDrtWZ
SXtFfpVu2sK931qQYvvBVFMPlmUhCy/ha8oF/5CjP6G9J/jBP+YQcqlpCyvgbrL8SazmxcPZ
9Mzn/J0rkFx2/G+duD0WcMYk6iMZ7UuyoeJ4MFwAgR6WPlZBlTQIUWnDguJnm6F3jO8r51zR
5s4sdJw7GBZy9U7EZedBpVChc2sFnG1PILAEnFvqjceVVsF56dTRgQcbysNG2lg8lIlPfKCM
ide5b1yAsrAEDeMEOAQ7CJ1/Z9CG0a/9yH3oQ8yc5fC/fmKjImUaN9d2R6z8Yd3CPCbBUE/b
4Rwdrfh3qh42TyeM2hQo7/6DeA/BhNQZ8D66ZRPtn6Yl77O0/LpM64tSJcFb02dszmz1qAmK
PsZUqqoE4VUz/G+fid7m26cZff/11MLdv93GyDpvKU+m6zxZFrzJ1M8yiWJbVf0HNJq2Hev5
Ofc/K1dUv71o0iMAAAAASUVORK5CYII='
]

{ #category : #accessing }
WSIconCache class >> iconForClass: aSymbol [
	"Returns the icon for the given class"
	
	| selector |
	selector := ('icon',aSymbol, 'Contents') asSymbol.
	(self class canUnderstand: selector) ifFalse: [ ^nil ].
	^ self classIconCache
		at: aSymbol
		ifAbsentPut: [ 
			Form
				fromBinaryStream: (self perform: selector) base64Decoded readStream ]
]

{ #category : #'private - icons' }
WSIconCache class >> iconGoogleContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACAUlEQVR42qWTT0gUcRTH3xu3
sTQ0FtpCKhBijaCinL0KrgibkaB0aOmwFcVeCjoGGh20TkFQ98yTXtyLfw6rzclus6vSIawo
PRjNWpHsqjms8/o6Oy4zy8oe+sHM7703731+8768H1PFykW1ViFKMlFMmMIkpCK8hmcesZGQ
bsx583nfMKOaAmcAkUGEVTpgicgMDrhzUjdyZcCPLo0V4hGYCaqxAPiMrfOEbqyVAWaX9oiJ
X3qStuGPwtSFZAv7RWTeZ6GieIodgJUOBPNv277tmg1NbvkKCLGQnln2nmxG248A2gQNTJ8G
1mzgARWV11vpU7a1FBScFAm9MxZqteIFpJi5b8+xPjZPNT78ed2b0DmcTwB6vLog9GUPkAXg
stv7E7W7OOwHFJaYoUHVejL+DyC06Gthbqdl8uq11d6KFp5BvNOeyYngfc5FzDgiWlT36kXh
gj25cwYxjmTiE1VFjA4VFFEkC+ClUgvylP+mDwXvbnR8/bR7rNn9rRVhiWVvppb9xZtMijyH
+dht1ybm884gtY/3+weJMEhC7iDRJvazTHW36n/f0NQ/PRh5p2xUHzh6uwQY64dOGGWuPcqB
whU5vH7vg2I3dgCwUb5MgOA64DIJD4J28GUimWbhhBGf+FXStGKhnVZkJfEpBjeMEhVZ3xF7
D/9NJp6a9eb/AztQ0a1zykKnAAAAAElFTkSuQmCC'
]

{ #category : #'initialize-release' }
WSIconCache class >> release [
	<script>
	
	ClassIconCache := nil
]
