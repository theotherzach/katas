#Katas

## The Rules
1.   Start at bowling-0
2.   The goal is to produce code that looks exactly like bowling-1.
3.   You must complete each step, looking at the answer when stuck.
4.   You may move onto bowling-1 after completeing bowling-0 from memory.
5.   You my move onto enumerable-0 after completing all of bowling from memory.

## The Bowling Game
This kata is based on the original [bowling kata](http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata) from Uncle Bob.
## Building Enumerable & Enumerator
This kata is based on the article of the same name from [Practicing Ruby](https://practicingruby.com/articles/shared/eislpkhxolnr).

#### A SortedList instance is an ordered array like data structure that
* Implements the shovel operator &lt;&lt; to add new items to the collection.
* Allows each to be used to iterate over the collection.
* Includes Fake Enumerable

#### The FakeEnumerable module should support
* map
* select
* sort\_by
* reduce

#### The FakeEnumerator class should support
* next
* with\_index
* rewind
