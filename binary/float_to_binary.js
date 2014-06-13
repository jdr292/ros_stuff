/* converts decimal to binary string */

var toBinary_memo = {};

function toBinary(num) {
  if (!(toBinary_memo[num])) {
    var to_go = num;
    var bin = '';
    var pow = 7;
    while (pow >= 0) {
      if (Math.pow(2,pow) > to_go) {
        bin = bin + '0';
        pow = pow - 1;
      }
      else {
        bin = bin + '1';
        to_go = to_go - Math.pow(2,pow);
        pow = pow - 1;
      }
    }
    toBinary_memo[num] = bin;
  }
  else {
    var bin = toBinary_memo[num];
  }
  return bin;
}

/* converts binary string to decimal */

var binaryToDecimal_memo = {};

function lookup(bin) {
  return binaryToDecimal_memo[bin];
}

function is_it_safe(bin) {
  return !(binaryToDecimal_memo[bin]);
}

function binaryToDecimal(bin) {
 if (is_it_safe(bin)) {
    var tot = 0;
    var pow = bin.length - 1;
    var to_go = bin;
    while (to_go.length > 0) {
      if (to_go[0] === '1') {
        tot += Math.pow(2,pow);
      }
      pow -= 1;
      to_go = to_go.slice(1);
    }
    binaryToDecimal_memo[bin] = tot;
  }
  return lookup(bin);
}

var chars = ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'];

/* decimal to hex converter */
function toHex(num) {
  function helper(num,pow) {
    if (pow === 0) {return chars[num]}
    var remainder = num % Math.pow(16,pow);
    return chars[(num-remainder)/Math.pow(16,pow)] + helper(remainder,pow-1)
  }
  var maxpow = 1;
  while (Math.pow(16,maxpow) <= num) {maxpow += 1}
  return helper(num, maxpow - 1);
}

/* converts a byte of binary to hexadecimal */
function binToHex(str) {
  return toHex(binaryToDecimal(str));
}

/*returns array with elements corresponding to r,g,b */
function hexToRGB(str) {
  var str = str + ''
  var rgb = [str.slice(0,2),str.slice(2,4),str.slice(4)];
  var newRGB = [];
  for (var i=0; i < rgb.length; i++) {
    newRGB[i] = (chars.indexOf(rgb[i][0]))*16 +
                (chars.indexOf(rgb[i][1]));
  }
  return newRGB;
}

//var numbers = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23];
//var sig_stuff = [Math.pow(2,-i) for (i of numbers)]

//var sigmemarr = [{range: numbers.slice(0,4)},
//                 {range: numbers.slice(4,8)},
//                 {range: numbers.slice(8,12)},
//                 {range: numbers.slice(12,16)},
//                 {range: numbers.slice(16,20)},
//                 {range: numbers.slice(20)}]

function decodeSig(str) {
//  var total = 0;
//  var strarr = [str.slice(0,4),str.slice(4,8),str.slice(8,12),
//                str.slice(12,16),str.slice(16,20),str.slice(20)];
// for (var i = 0; i < 6; i++) {
//    var subtotal = 0;
//    if (sigmemarr[i][strarr[i]] !== undefined) {
//      total += sigmemarr[i][strarr[i]];
//    } else {
//      console.log('aw man, i gotta do work');
//      for (var j = 0; j < 4; j++) {
//        if (strarr[i][j] === 1) {
//          subtotal += sig_stuff[i*4 + j];
//        }
//      }
//      sigmemarr[i][strarr[i]] = subtotal;
//    }
//  }
  var addable = 1;
  var total = 0;
  var i = 0;
  while (i < str.length) {
    if (str[i]==='1') {
      total += addable;
    }
    i += 1;
    addable /= 2;
  }
  return total;
}

/*converts array of 4 numbers to decimal representation (little-endian) */
function f32ToDecimal(nums) {
  var byte87 = toBinary(nums[0]);
  var byte65 = toBinary(nums[1]);
  var byte43 = toBinary(nums[2]);
  var byte21 = toBinary(nums[3]);
  var sign = byte21[0];
  var exp  = byte21.slice(1) + byte43[0];
  var sig  = '1' + byte43.slice(1) + byte65 + byte87
  exp = parseInt(exp,2) - 127;
  sig = decodeSig(sig);
  if (sign === '0') {
    var ans = sig * Math.pow(2,exp);
  }
  else {
    var ans = -1 * sig * Math.pow(2,exp);
  }
  return ans;
}

/* converts array of 4 numbers to corresponding RGB values (little-endian) */
function f32ToRGB(nums) {
  return (hexToRGB(toHex(f32ToDecimal(nums))));
}
