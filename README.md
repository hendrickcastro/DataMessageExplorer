DataMessage Explorer
====================

Desktop application for Windows and macOS to manage Azure Cosmos DB, Azure Service Bus, and Redis from a single interface. Dark and light themes, tabbed panels, keyboard shortcuts, and automatic updates included.

Downloads
---------

Go to the Releases page to get the latest version:
https://github.com/hendrickcastro/DataMessageExplorer/releases

- Windows: DataMessageExplorer-windows.zip
- macOS: DataMessageExplorer-macos.dmg


Install on Windows
------------------

Extract the zip and run DataMessage Explorer.exe.


Install on macOS
----------------

Open Terminal and paste this command:

    curl -sL https://raw.githubusercontent.com/hendrickcastro/DataMessageExplorer/master/install.sh | bash

This downloads the latest version, installs it in /Applications, removes macOS security restrictions, and launches the app. No warnings, no popups.

Future updates are handled automatically from within the app. You only need to run this command once for the initial install.


Azure Cosmos DB
---------------

Browse databases and containers with a full explorer tree. Each container exposes items, queries, settings, metrics, import/export, stored procedures, UDFs, and triggers.

Query editor:
- SQL syntax highlighting with keyword coloring
- Execute and cancel queries
- Pagination with continuation tokens
- 20+ built-in SQL templates (SELECT, WHERE, JOIN, GROUP BY, aggregates, CONTAINS, STARTSWITH, OFFSET LIMIT, spatial queries, and more)
- Save queries with name, category, and favorite flag
- Load saved queries from the sidebar panel

Document management:
- Browse documents in a table with dynamic columns
- Configurable page size (20, 50, 100)
- Column sorting
- Timestamp formatting (epoch to UTC)
- Create, update, and delete documents
- Multi-select for batch delete with progress tracking
- JSON viewer with syntax highlighting and code folding
- Record detail panel with navigation (first, previous, next, last) and word wrap toggle

Import and export:
- Import from JSON files (array format or newline-delimited)
- Export with custom WHERE clause filter
- Preview before import
- Item count reporting

Container info:
- View partition key, TTL, indexing policy, unique keys, conflict resolution
- Real-time metrics: document count, document size, index size, collection usage and quota

Server-side scripts:
- Browse and view stored procedures, UDFs, and triggers with JavaScript syntax display


Azure Service Bus
-----------------

Browse queues and topics with live message counts shown in the tree (Active, Dead Letter, Scheduled).

Message peeking:
- Peek from active queue, dead letter queue, or scheduled messages
- Pagination with next page button
- Message detail with Body and Headers tabs
- JSON syntax highlighting for message bodies
- Binary message handling with base64 display
- Filter by sequence number
- Multi-message selection

Message actions:
- Complete messages (mark as processed)
- Dead letter messages
- Requeue messages back to active
- Forward messages to another queue with destination picker
- Copy messages to a different queue
- Purge all messages with progress tracking (safety cap at 500K)
- Save any peeked message as a reusable template

Send messages:
- Body editor with JSON syntax highlighting
- Broker properties: Message ID, Subject, Content Type, Correlation ID, Reply To
- Time To Live with duration picker (days, hours, minutes, seconds)
- Application properties in JSON format
- Force persistent delivery option
- Save message templates with category and favorite
- Load saved templates from sidebar

Queue administration:
- View and edit queue properties through the Azure Management API
- Status control (Active, Disabled, SendDisabled, ReceiveDisabled)
- Max delivery count, lock duration, max size
- Default message TTL
- Dead letter auto-forwarding configuration
- Forwarding address (topic or queue picker)
- Create duplicate queue with same settings
- Delete queue with confirmation

Topics and subscriptions:
- Browse all topics and their subscriptions
- Live message counts per subscription (Active, Dead Letter, Scheduled)
- Peek messages from subscriptions
- Send messages to topics


Redis
-----

Browse keys organized by type with support for streams, lists, and generic keys.

Streams:
- Browse stream entries newest-first or oldest-first with pagination
- Stream length display
- Consumer group information (pending count, lag, consumer count)
- Entry timestamp and data field display

Lists:
- Paginated list browsing (configurable page size 25-500)
- Index and value display
- Previous/Next navigation

Generic keys:
- Support for string, hash, set, sorted set, and bitmap types
- Hex dump display for binary data with ASCII column
- Embedded XML extraction from .NET binary blobs
- ASCII fragment extraction from serialized objects
- Base64 decoding display

Write operations:
- Stream: add entries with field/value pairs (auto-ID or manual)
- List: LPUSH or RPUSH with bulk input support
- String: SET with overwrite option
- Hash: set field/value pairs with key generator

Key browsing modes:
- Grouped mode: keys organized by prefix
- Flat mode: paginated flat list with load more
- Per-connection SCAN MATCH patterns (glob support)
- Bounded scanning to prevent UI blocking


Connection Management
---------------------

Add connections for any of the three services through a unified dialog:
- Service type selector (Cosmos DB, Service Bus, Redis)
- Connection name and connection string (masked input)
- Category organization with color picker
- Test connection button with async validation
- Edit and delete connections from the tree context menu
- Categories are scoped per service (separate "Production" for Cosmos DB and Service Bus)

All connections are stored locally in ~/.datamessage_explorer/connections.json with encoded connection strings.


Workspace Export and Import
---------------------------

Export your entire workspace (connections, saved queries, saved messages, UI settings) to a zip file. Import on another machine or share with team members.

Export options:
- Select what to include (config, saved objects)
- Single zip file output

Import options:
- Merge mode: keep existing items, add only new ones
- Overwrite mode: replace all with imported content
- Summary of imported items


Saved Queries and Messages
--------------------------

Saved queries (Cosmos DB):
- Save SQL queries with name, category, and favorite flag
- Organize by category with subcategories
- Load into any active query tab or open a new tab
- Per-connection storage

Saved messages (Service Bus):
- Save full message templates (body, headers, properties)
- Organize by category with favorites
- Load into send message panels
- Support for both queue and topic templates
- Per-connection storage

Both are accessible from the sidebar bottom panel, which switches context automatically based on the selected tree item.


User Interface
--------------

Theme:
- Dark theme (VS Code-inspired) and light theme
- Toggle from toolbar button
- Applies to all panels, JSON viewers, and syntax highlighting
- Theme preference persisted

Zoom:
- Per-panel zoom with Ctrl+/- (Cmd+/- on macOS)
- Reset zoom with Ctrl+0 (Cmd+0 on macOS)
- Zoom targets the panel under the cursor
- Splitter-aware: each sub-pane of a split panel zooms independently
- Zoom levels persisted per panel

Layout:
- Horizontal splitter: sidebar on the left, tabbed panel area on the right
- Sidebar has vertical splitter: connection tree on top, saved items on bottom
- Multiple tabs for simultaneous work across databases, queues, and keys
- Resizable panes everywhere

Keyboard shortcuts:
- F5: refresh Service Bus queue and subscription counters
- Ctrl+/- or Cmd+-: zoom in/out on current panel
- Ctrl+0 or Cmd+0: reset zoom

Status bar:
- Operation status messages on the left
- Progress bar for batch operations (delete, purge, export)
- Selection counter on the right


Data Storage
------------

All user data is stored locally under ~/.datamessage_explorer/:

- connections.json: connection list with encoded connection strings and category colors
- ui_settings.json: zoom levels, page sizes, Redis patterns, viewer preferences
- explorer_visibility.json: hidden service sections
- saved_queries/: SQL files organized by category with metadata index
- saved_messages/: JSON payload files organized by category with metadata index


System Requirements
-------------------

- Windows 10 or later
- macOS 11 (Big Sur) or later
- No additional runtime dependencies required (standalone executable)


License
-------

Proprietary. All rights reserved.
