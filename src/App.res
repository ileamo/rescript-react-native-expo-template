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
