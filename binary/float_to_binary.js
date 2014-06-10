/* converts decimal to binary string */
function toBinary(num) {
  var num = num;
  var bin = '';
  var pow = 7;
  while (pow >= 0) {
    if (Math.pow(2,pow) > num) {
      bin = bin + '0';
      pow = pow - 1;
    }
    else {
      bin = bin + '1';
      num = num - Math.pow(2,pow);
      pow = pow - 1;
    }
  }
  return bin;
}

/* converts binary string to decimal */
function binaryToDecimal(bin) {
  var tot = 0;
  var pow = bin.length - 1;
  var bin = bin;
  while (bin.length > 0) {
    if (bin[0] === '1') {
      tot += Math.pow(2,pow);
    }
    pow -= 1;
    bin = bin.slice(1);
  }
  return tot;
}

var chars = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'];

/* max-255 decimal to hex converter */
function toHex(num) {
  var num = num;
  var remainder = Math.floor(num / 16);
  return (chars[(num-remainder)/16] + chars[remainder]);
}

/* converts a byte of binary to hexadecimal */
function binToHex(str) {
  return toHex(binaryToDecimal(str));
}

/*returns array with elements corresponding to r,g,b */
function hexToRGB(str) {
  var rgb = [str.slice(0,2),str.slice(2,4),str.slice(4)];
  console.log(rgb);
  var catcher = "wut";
  var rye = ["wat"];
  var newRGB = ['hai world'];
  console.log(catcher);
  console.log(rye);
  console.log(newRGB);
  for (var i=0; i < rgb.length; i++) {
    newRGB[i] = (chars.indexOf(rgb[i][0]))*16 +
                (chars.indexOf(rgb[i][1]));
  }
  return newRGB;
}

/*converts array of 4 numbers to decimal representation */
function f32ToDecimal(nums) {
  function decodeSig(str) {
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
  var byte78 = toBinary(nums[0]);
  var byte65 = toBinary(nums[1]);
  var byte43 = toBinary(nums[2]);
  var byte21 = toBinary(nums[3]);
  var sign = byte21[0];
  console.log('sign: ' + sign);
  var exp  = byte21.slice(1) + byte43[0];
  var sig  = '1' + byte43.slice(1) + byte65 + byte78;
  console.log('sig: ' + sig);
  exp = binaryToDecimal(exp) - 127;
  console.log('decode exp: ' + exp);
  sig = decodeSig(sig);
  console.log('decoded sig: ' + sig);
  if (sign === '0') {
    var ans = sig * Math.pow(2,exp);
  }
  else {
    var ans = -1 * sig * Math.pow(2,exp);
  }
  return ans;
}

/* converts array of 4 numbers to corresponding RGB values */
function f32ToArray(nums) {
  return (hexToRGB(toHex(f32ToDecimal(nums))));
}
