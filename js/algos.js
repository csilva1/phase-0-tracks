// create an array that contains strings, and make sure to put one string that is longer
// than the other.
// then the longest word of the array needs to be returned do the following:
// the strings in the array needs to be counted
// then assort the array from longest to shortest
// then the longest word should be placed in index 0
// then print index 0, because the longest word should be there
	function longestWord() {
	var list = ["long", "longer", "longest"];

for (var i=0; i<list.length; i++) {
    console.log(list[i]);
}
    var word1 = list[0].length;
    console.log(word1);
    var word2 = list[1].length;
    console.log(word2);
    var word3 = list[2].length;
    console.log(word3);
    if(word1 < word2) {
       return (word2 = word1);
    } else if(word2 < word1) {
    	return (word1 = word2);
    } else if(word2 < word3) {
       return (word3 = word2);
    } else if(word3 < word2) {
    	return (word2 = word3);
    } else if(word1 < word3) {
    	return (word3 = word1);
    } else if(word3 < word1); {
    	return (word1 = word3);
    }  
    		
    	}
    	
    	console.log (longestWord.list)
    