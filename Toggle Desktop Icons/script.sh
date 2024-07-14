prevValue=$(defaults read com.apple.finder CreateDesktop 2>&1)
nextValue=$([[ "$prevValue" == "true" || "$prevValue" == *"does not exist"* ]] && echo "false" || echo "true")

defaults write com.apple.finder CreateDesktop $nextValue
killall Finder