# Pharo-WebSearch
A simple Spotter websearch for Pharo. Just enter your search term in spotter and letter Pharo open a browser to query the term using one of the given search engines.

## Installation

```Smalltalk
Metacello new 
	repository: 'github://astares/Pharo-WebSearch/src';
	baseline: 'WebSearch';
	load 	
```

## Screenshot

![alt text](doc/screenshot.png "Screenshot")

## Usage

By default 3 search engines are provided:

```Smalltalk
Bing searchFor: 'Pharo project'.
Google searchFor: 'Pharo project'.
DuckDuckGo searchFor: 'Pharo project'.
```

You can easily have your own - just subclasses **WSSearchEngine**. Just implement **#defaultSearchURL** on the class side.
