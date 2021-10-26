

Install Expo-cli
```sh
yarn global add expo-cli
```

Create new React Native Project
```sh
expo init rescript-react-native-expo-template
cd rescript-react-native-expo-template
```

Add following dependencies
```sh
yarn add rescript --dev
yarn add @rescript/react rescript-react-native
```

Create ./bsconfig.json file with content:
```json
{
    "name": "rescript-react-native-expo-template",
    "reason": { "react-jsx": 3 },
    "package-specs": {
      "module": "es6",
      "in-source": true
    },
    "suffix": ".bs.js",
    "sources": [
      {
        "dir": "src",
        "subdirs": true
      }
    ],
    "bs-dependencies": ["@rescript/react", "rescript-react-native"]
  }
```

Add setting to ./package.json file
```json
{
  ...
  "scripts": {
    ...
    "build": "rescript",
    "build:deps": "rescript build -with-deps",
    "build:watch": "rescript build -w"

  },
  ...
}
```

  Create src/App.res file with content:
```re
open ReactNative

@react.component
let app = () => {
  <View
    style={
      open Style
      style(~flex=1., ~justifyContent=#center, ~alignItems=#center, ())
    }>
    <Text
      style={
        open Style
        style(~fontSize=22., ~color="#0284C7", ())
      }>
      {React.string("Hello Rescript React Native!")}
    </Text>
  </View>
}
```

Update file ./App.js

```js
/**
 * Do not modify this file - it is a proxy to your `App.res` file
 * located in the `src/` folder.
 */
export { app as default } from "./src/App.bs.js";
```

Run project
```sh
yarn build:watch
# in another tab
expo start
```

## References

https://reactnative.dev/docs/environment-setup<br>
https://rescript-react-native.github.io/docs/install#add-rescript-react-native-to-an-existing-project