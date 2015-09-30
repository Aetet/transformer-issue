# transformer-issue

## Install
```
pub get
```
```
pub build
```
```
echo $?
```
Transformer will throw error, but in result we have an exit code 0.
If we remove `index.dart` we got correct exit code 65.
