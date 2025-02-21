# Notepad  
A simple Ruby-based notepad application for writing and storing notes.

## 🚀 Launch  
**Requirements:**  
- Ruby installed  
- SQLite installed  
- `sqlite3` gem installed  

**Commands:**  
```bash
# Add new post
ruby new_post.rb

# Read posts
ruby read.rb [options]

# Show help
ruby read.rb -h
```
📝 Entry Types
Supports 3 note types:

Memo - Text note

Task - Todo item

Link - Web URL

💾 Storage
All entries are saved in:
```notepad.sqlite``` (SQLite database in root directory)

❗ File auto-created on first run if missing
