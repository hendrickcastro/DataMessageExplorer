# DataMessage Explorer

[![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20macOS-blue)](https://github.com/hendrickcastro/DataMessageExplorer/releases)
[![License](https://img.shields.io/badge/License-Proprietary-red)]()
[![Azure Cosmos DB](https://img.shields.io/badge/Azure-Cosmos%20DB-0078D4)](https://azure.microsoft.com/services/cosmos-db/)
[![Azure Service Bus](https://img.shields.io/badge/Azure-Service%20Bus-0078D4)](https://azure.microsoft.com/services/service-bus/)
[![Redis](https://img.shields.io/badge/Redis-Supported-DC382D)](https://redis.io/)
[![SQL Server](https://img.shields.io/badge/SQL%20Server-2016%2B-CC2927)](https://www.microsoft.com/sql-server)
[![Azure SQL](https://img.shields.io/badge/Azure%20SQL-Supported-0078D4)](https://azure.microsoft.com/services/sql-database/)
[![PySide6](https://img.shields.io/badge/PySide6-Qt%20for%20Python-41CD52)](https://doc.qt.io/qtforpython/)
[![Auto Update](https://img.shields.io/badge/Updates-Automatic-brightgreen)]()
[![Maintenance](https://img.shields.io/badge/Maintained-Yes-brightgreen)](https://github.com/hendrickcastro/DataMessageExplorer/graphs/commit-activity)

A native desktop application for **Windows** and **macOS** to manage **Azure Cosmos DB**, **Azure Service Bus**, **Redis**, and **SQL Server** from a single interface. Dark/light themes, tabbed panels, keyboard shortcuts, and automatic updates included.

---

## Overview

| Dark Theme | Light Theme |
|:---:|:---:|
| ![Dark theme](docs/images/01-main-dark.png) | ![Light theme](docs/images/02-main-light.png) |

---

## Quick Install

### Windows

Download `DataMessageExplorer-windows.zip` from the [Releases](https://github.com/hendrickcastro/DataMessageExplorer/releases) page, extract, and run **DataMessage Explorer.exe**.

### macOS (one command)

```bash
curl -sL https://raw.githubusercontent.com/hendrickcastro/DataMessageExplorer/master/install.sh | bash
```

Downloads the latest `.dmg`, installs to `/Applications`, removes macOS quarantine restrictions, and launches the app. Future updates are handled automatically from within the app.

---

## Connection Management

Add connections for any of the four services through a unified dialog with service type selector, connection string (masked), category organization with color picker, and async test connection.

| Connection Dialog | Sidebar with Categories |
|:---:|:---:|
| ![Connection dialog](docs/images/03-connection-dialog.png) | ![Connections tree](docs/images/04-connections-tree.png) |

- Service type selector: Cosmos DB, Service Bus, Redis, SQL Server
- Category organization with color picker
- Test connection button with async validation
- Edit and delete from tree context menu
- Categories scoped per service
- Stored locally in `~/.datamessage_explorer/connections.json` (encoded)

---

## Azure Cosmos DB

### Items Browser

Browse documents in a table with dynamic columns, configurable page size (20/50/100), column sorting, and timestamp formatting (epoch to UTC).

| Items Panel | Document Viewer |
|:---:|:---:|
| ![Items browser](docs/images/05-cosmos-items.png) | ![Document viewer](docs/images/06-cosmos-document-viewer.png) |

- Paginated browsing with continuation tokens
- Create, update, and delete documents
- Multi-select for batch delete with progress tracking
- JSON viewer with syntax highlighting and code folding
- Record detail panel with navigation (first/prev/next/last) and word wrap toggle

### Query Editor

| SQL Editor | Results + Record Details |
|:---:|:---:|
| ![Query editor](docs/images/07-cosmos-query.png) | ![Query results](docs/images/08-cosmos-query-results.png) |

- SQL syntax highlighting with keyword coloring
- Execute and cancel queries
- 20+ built-in SQL templates (SELECT, WHERE, JOIN, GROUP BY, aggregates, CONTAINS, STARTSWITH, OFFSET LIMIT, spatial queries, and more)
- Save queries with name, category, and favorite flag
- Load saved queries from the sidebar panel

### Filter Buttons & Templates

| AND / COL / OR Buttons | SQL Templates |
|:---:|:---:|
| ![Filter buttons](docs/images/09-cosmos-filter-buttons.png) | ![Templates](docs/images/10-cosmos-templates.png) |

- Hover over any JSON property to see **AND**, **COL**, **OR** buttons
- One-click to append filter conditions to the query editor
- Built-in template library for common query patterns

### Saved Queries & Import/Export

| Saved Queries | Import/Export |
|:---:|:---:|
| ![Saved queries](docs/images/11-cosmos-saved-queries.png) | ![Import/Export](docs/images/12-cosmos-import-export.png) |

- Saved queries organized by categories with favorite stars
- Import from JSON files (array or newline-delimited)
- Export with custom WHERE clause filter
- Preview before import with item count reporting

### Scripts & Metrics

| Stored Procedures / UDFs / Triggers | Container Settings & Metrics |
|:---:|:---:|
| ![Scripts](docs/images/13-cosmos-scripts.png) | ![Metrics](docs/images/14-cosmos-metrics.png) |

- Browse and view stored procedures, UDFs, and triggers with JavaScript syntax display
- View partition key, TTL, indexing policy, unique keys, conflict resolution
- Real-time metrics: document count, document size, index size, collection usage and quota

---

## Azure Service Bus

### Queue Explorer & Message Peeking

| Queues & Topics Tree | Peek Messages |
|:---:|:---:|
| ![SB tree](docs/images/15-sb-tree.png) | ![Peek messages](docs/images/16-sb-peek.png) |

- Queues and Topics with live **A** (Active) / **D** (Dead Letter) / **S** (Scheduled) counts
- Peek from active queue, dead letter queue, or scheduled messages
- Message detail with Body and Headers tabs
- JSON syntax highlighting for message bodies
- Binary message handling with base64 display
- Filter by sequence number and multi-message selection

### Send & Message Actions

| Send Message | Message Actions |
|:---:|:---:|
| ![Send message](docs/images/17-sb-send.png) | ![Message actions](docs/images/18-sb-message-actions.png) |

- Body editor with JSON syntax highlighting
- Broker properties: Message ID, Subject, Content Type, Correlation ID, Reply To
- Time To Live with duration picker (days, hours, minutes, seconds)
- Application properties in JSON format
- Complete, dead letter, requeue, forward, and copy messages
- Purge all messages with progress tracking (safety cap at 500K)

### Queue Settings & Saved Messages

| Queue Settings | Saved Messages |
|:---:|:---:|
| ![Queue settings](docs/images/19-sb-queue-settings.png) | ![Saved messages](docs/images/20-sb-saved-messages.png) |

- View and edit queue properties through the Azure Management API
- Status control (Active, Disabled, SendDisabled, ReceiveDisabled)
- Max delivery count, lock duration, max size, TTL, dead letter auto-forwarding
- Create duplicate queue with same settings
- Save message templates with category and favorite for quick reuse

---

## Redis

### Key Explorer

| Redis Tree | Stream Entries |
|:---:|:---:|
| ![Redis tree](docs/images/21-redis-tree.png) | ![Stream entries](docs/images/22-redis-stream.png) |

- Keys organized by type: Streams, Lists, and Keys by prefix
- Stream entries with consumer group information (pending count, lag, consumer count)
- Newest-first or oldest-first ordering with pagination

### Lists & Keys

| List Viewer | Keys by Prefix |
|:---:|:---:|
| ![List entries](docs/images/23-redis-list.png) | ![Keys by prefix](docs/images/24-redis-keys.png) |

- Paginated list browsing (configurable page size 25-500)
- Keys grouped by prefix with value viewer for string, hash, set, sorted set, bitmap
- Hex dump display for binary data with ASCII column
- Embedded XML extraction from .NET binary blobs

### Key Filter & Write Operations

| Key Filter |
|:---:|
| ![Key filter](docs/images/25-redis-key-filter.png) |

- Per-connection `SCAN MATCH` patterns (glob support)
- Write operations: Stream add, LPUSH/RPUSH, SET, Hash set
- Bounded scanning to prevent UI blocking

---

## SQL Server

### Database Explorer

| Object Tree | Column Details |
|:---:|:---:|
| ![SQL tree](docs/images/26-sql-tree.png) | ![SQL columns](docs/images/32-sql-columns.png) |

- Databases listed from `sys.databases`
- Tables, Views, Stored Procedures, and Functions organized in folders
- First 200 objects loaded by default, total count in folder label (e.g. "Tables (200 of 100,492)")
- Expand tables/views to see columns with data types and nullability
- Supports Azure SQL Database and on-premise SQL Server

### T-SQL Query Editor

| Query Editor | Query Results |
|:---:|:---:|
| ![SQL query](docs/images/27-sql-query.png) | ![SQL results](docs/images/28-sql-query-results.png) |

- T-SQL editor with execute and cancel
- Non-blocking query execution (runs in subprocess, UI stays responsive)
- Cancel kills the subprocess immediately
- Results grid with row detail viewer (JSON format)
- Save queries with name, category, and favorite
- Save As to create copies without overwriting

### Templates & Syntax Highlighting

| T-SQL Templates | Syntax Highlighting |
|:---:|:---:|
| ![SQL templates](docs/images/33-sql-templates.png) | ![SQL syntax](docs/images/34-sql-syntax-highlight.png) |

- 14 built-in T-SQL templates: SELECT, JOIN, GROUP BY, CTE, Window Functions, Insert, Update, Delete, Offset Fetch, Table Info, Index Info, and more
- VS Code-inspired dark theme highlighting: blue keywords, yellow functions, orange strings, green numbers, muted green comments, light blue @variables

### Data Browser & Object Definitions

| Table Data Browser | SP/Function Definition |
|:---:|:---:|
| ![SQL data](docs/images/29-sql-data-panel.png) | ![SQL definition](docs/images/30-sql-definition-panel.png) |

- Paginated data viewer with Load More (50 rows per page)
- Column headers with double-click to auto-resize
- Row click shows full record as JSON
- View stored procedure and function SQL definitions with syntax highlighting

### Advanced Filter

| Filter Dialog |
|:---:|
| ![SQL filter](docs/images/31-sql-filter-dialog.png) |

- Filter by Schema and/or Name
- Match modes: Contains, Exact, Starts With
- Combine with AND/OR operators
- Filter results use indexed `sys.tables` queries for instant results
- Results cached for fast re-expand

---

## Workspace Export & Import

Export your entire workspace (connections, saved queries, saved messages, UI settings) to a single zip file. Import on another machine or share with team members.

- **Merge mode**: keep existing items, add only new ones
- **Overwrite mode**: replace all with imported content
- Summary of imported items

---

## User Interface

### Theme & Zoom

- **Dark theme** (VS Code-inspired) and **light theme** with one-click toggle
- Per-panel zoom with `Ctrl+/-` (`Cmd+/-` on macOS), reset with `Ctrl+0` (`Cmd+0`)
- Zoom targets the panel under the cursor, each sub-pane zooms independently

### Layout

- Horizontal splitter: sidebar (left) + tabbed panel area (right)
- Sidebar vertical splitter: connection tree (top) + saved items (bottom)
- Multiple tabs for simultaneous work across databases, queues, and keys
- Resizable panes everywhere

### Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `F5` | Refresh Service Bus queue/subscription counters |
| `Ctrl+/-` / `Cmd+/-` | Zoom in/out on current panel |
| `Ctrl+0` / `Cmd+0` | Reset zoom |

---

## Data Storage

All user data is stored locally under `~/.datamessage_explorer/`:

| File | Description |
|------|-------------|
| `connections.json` | Connection list with encoded connection strings and category colors |
| `ui_settings.json` | Zoom levels, page sizes, Redis patterns, viewer preferences |
| `explorer_visibility.json` | Hidden service sections |
| `saved_queries/` | SQL files organized by category with metadata index |
| `saved_messages/` | JSON payload files organized by category with metadata index |

---

## System Requirements

| Platform | Minimum Version |
|----------|----------------|
| Windows | 10 or later |
| macOS | 11 (Big Sur) or later |

No additional runtime dependencies required (standalone executable).

---

## Downloads

Go to the [Releases](https://github.com/hendrickcastro/DataMessageExplorer/releases) page to get the latest version:

| Platform | File |
|----------|------|
| Windows | `DataMessageExplorer-windows.zip` |
| macOS | `DataMessageExplorer-macos.dmg` |

---

## License

Proprietary. All rights reserved.
