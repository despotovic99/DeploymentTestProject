const util = require('util');
const exec = util.promisify(require('child_process').exec);
(async () => {

    console.log('rsync started')

let result =     await exec('rsync -avz --progress -e "ssh -i ~/.ssh/nemanja " root@172.18.0.2:/test ./testDir/');
console.log(result.stdout)

 result =     await exec('ls testDir');
console.log(result.stdout)

 result =     await exec('node ./testDir/test/test.js');
console.log(result.stdout)

})()
