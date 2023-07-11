const util = require('util');
const exec = util.promisify(require('child_process').exec);
(async () => {

    console.log('rsync started')

    await exec('rsync -avz --progress -e "ssh -i ~/.ssh/nemanja " root@172.18.0.2:/test ./testDir/');


})()
