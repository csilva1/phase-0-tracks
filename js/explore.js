// to reverse the string do the following
// create the string and make it a parameter and 
//once the string is put through the parameter begin to reverse it
//grab the first letter of the string and put it to the last part of the string

function reverse(s) {
  return s.split('').reverse().join('');
}

reverse ("carol");