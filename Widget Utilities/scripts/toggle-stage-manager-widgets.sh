prevValue=$(defaults read com.apple.WindowManager StageManagerHideWidgets 2>&1)
nextValue=$([[ "$prevValue" == 1 || "$prevValue" == *"does not exist"* ]] && echo 0 || echo 1)

defaults write com.apple.WindowManager StageManagerHideWidgets -int $nextValue