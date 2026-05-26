cat << 'EOF' > 1-add_group.sh
#!/bin/bash
groupadd "$1"
chown :"$1" "$2"
chmod g+rx "$2"
EOF
