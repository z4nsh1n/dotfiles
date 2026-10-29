from urllib.parse import urlparse

# Function to generate a bookmark line in HTML format
def generate_bookmark(title, url):
    return f'<DT><A HREF="{url}" ADD_DATE="">{title}</A>\n'

# Dictionary to store folders and their bookmarks
folders = {}

# Path to your source file
file_path = 'quickmarks'

# Read the file and process each line
with open(file_path, 'r', encoding='utf-8') as file:
    lines = file.readlines()

default_folder = "Others"  # Default folder for lines without a folder prefix

urls_seen = set()

for line in lines:
    line = line.strip()  # Remove leading/trailing whitespace
    parts = line.rsplit(" ", 1)  # Split URL from the rest of the line
    if len(parts) == 2:
        url = parts[-1]
        if url not in urls_seen:
            urls_seen.add(url)
            title = parts[0]
            if " - " in title:
                folder_name = title.split(" - ", 1)[0]  # Extract folder name
                title = title.split(" - ", 1)[1]  # Extract title without folder prefix
            else:
                folder_name = default_folder
            if folder_name not in folders:
                folders[folder_name] = []
            folders[folder_name].append(generate_bookmark(title, url))
        else:
            print(f"Ignored duplicate: {line}")
    else:
        # Handle malformed or improperly formatted lines
        print(f"Ignored line: {line}")

# Generate HTML content
html_content = """<!DOCTYPE NETSCAPE-Bookmark-file-1>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<TITLE>Imported Bookmarks</TITLE>
<H1>Imported Bookmarks</H1>
<DL><p>\n"""

# Add folders and their bookmarks to the HTML content
for folder, bookmarks in folders.items():
    html_content += f'<DT><H3>{folder}</H3>\n<DL><p>\n'
    for bookmark in bookmarks:
        html_content += bookmark
    html_content += "</DL><p>\n"

html_content += "</DL><p>\n"

# Write content to an HTML file
output_file = "bookmarks.html"
with open(output_file, "w", encoding="utf-8") as file:
    file.write(html_content)

print(f"Conversion completed. HTML file generated successfully: {output_file}")

