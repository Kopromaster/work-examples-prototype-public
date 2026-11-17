read -n 1 -p "Would you like to delete .git directory including all subdirectories? [Y/other keys] " reply
echo # Moves to a new line after the keypress

if [[ "$reply" =~ ^[Yy]$ ]]; then
    echo "Proceeding..."
else
    echo "Aborted."
    exit 1
fi

CURRENT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

rm -rf $CURRENT_PATH/.git >/dev/null 2>&1

echo Done
