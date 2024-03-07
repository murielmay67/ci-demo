// https://github.com/depcheck/depcheck?tab=readme-ov-file#api
// node .depcheck.js

import depcheck from 'depcheck';
depcheck(
    process.cwd(), {
    ignorePatterns: ['tsconfig.json'],
})
    .then((unused) => {
        console.debug(`unused.dependencies :>> `, unused.dependencies); // an array containing the unused dependencies
        console.debug(`unused.devDependencies :>> `, unused.devDependencies); // an array containing the unused devDependencies
        console.debug(`unused.missing :>> `, unused.missing); // a lookup containing the dependencies missing in `package.json` and where they are used
        console.debug(`unused.using :>> `, unused.using); // a lookup indicating each dependency is used by which files
        console.debug(`unused.invalidFiles :>> `, unused.invalidFiles); // files that cannot access or parse
        console.debug(`unused.invalidDirs :>> `, unused.invalidDirs); // directories that cannot access
    });
