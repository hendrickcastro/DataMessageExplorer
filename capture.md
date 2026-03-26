# Screenshots checklist

Save all captures to `docs/images/` with the filenames listed below.
Recommended size: **1280x800** or similar. Use **PNG** format.

---

## General

- [ ] **`01-main-dark.png`** — Main window in **dark theme** with Cosmos DB tree expanded showing databases and containers. Have at least one connection open in the sidebar.
- [ ] **`02-main-light.png`** — Same view but in **light theme** (click the theme toggle in the toolbar).

## Connections

- [ ] **`03-connection-dialog.png`** — The **Add Connection** dialog open. Show the service type selector (Cosmos DB / Service Bus / Redis), name, connection string, category, and color picker.
- [ ] **`04-connections-tree.png`** — Sidebar tree showing **multiple connections** organized by categories with different colors.

## Azure Cosmos DB

- [ ] **`05-cosmos-items.png`** — **Items panel**: table on the left with paginated items, filter bar visible at top (WHERE / ORDER BY). Have some items loaded.
- [ ] **`06-cosmos-document-viewer.png`** — **Document viewer** on the right side showing a JSON document with syntax highlighting and code folding (collapse one object to show the fold triangle).
- [ ] **`07-cosmos-query.png`** — **Query panel**: SQL editor at the top with a query typed (e.g. `SELECT * FROM c WHERE c.status = 'active'`). Show the toolbar with Execute, Save Query, Templates buttons and the container selector.
- [ ] **`08-cosmos-query-results.png`** — Same query panel **after executing**: results table at the bottom-left with data, **record details panel** open on the right showing the JSON of a clicked row. Status bar showing Rows, RUs, Duration.
- [ ] **`09-cosmos-filter-buttons.png`** — Record details panel with the **AND|OR toggle button activated** in the header. Hover over a JSON property line so the **AND**, **|C|**, **OR** buttons are visible in the left margin. This is the key capture — make the buttons clearly visible.
- [ ] **`10-cosmos-templates.png`** — **Templates panel** open on the right side (click Templates button) showing the list of SQL query templates.
- [ ] **`11-cosmos-saved-queries.png`** — **Saved queries** sidebar panel (bottom of sidebar) showing saved queries organized by categories with favorite stars.
- [ ] **`12-cosmos-import-export.png`** — **Import or Export** dialog open (right-click container -> Import or Export). Show file selection and options.
- [ ] **`13-cosmos-scripts.png`** — **Scripts panel** showing stored procedures, UDFs, or triggers list on the left with code viewer on the right.
- [ ] **`14-cosmos-metrics.png`** — **Container settings/metrics** panel showing partition key, document count, sizes, etc.

## Azure Service Bus

- [ ] **`15-sb-tree.png`** — Sidebar tree with Service Bus connection expanded showing **Queues** and **Topics** folders. Queues should show the **A** (active) / **D** (dead-letter) / **S** (scheduled) badges with counts.
- [ ] **`16-sb-peek.png`** — **Peek messages panel**: table with messages at top, detail tabs at bottom showing **Body** tab with JSON syntax highlighting. Have a few messages visible.
- [ ] **`17-sb-send.png`** — **Send message panel**: body editor with JSON content, broker properties section visible (Message ID, Subject, Content-Type, TTL, Application Properties).
- [ ] **`18-sb-message-actions.png`** — Peek panel with a message selected and the **action buttons** visible (Complete, Dead-Letter, Forward). If possible show the context menu or toolbar actions.
- [ ] **`19-sb-queue-settings.png`** — **Queue settings** dialog/panel showing queue properties (max delivery count, TTL, dead-letter settings, etc.).
- [ ] **`20-sb-saved-messages.png`** — **Saved messages** sidebar panel showing saved message templates organized by categories.

## Redis

- [ ] **`21-redis-tree.png`** — Sidebar with Redis connection expanded showing **Streams**, **Lists**, and **Keys by prefix** folders. Have some items under each.
- [ ] **`22-redis-stream.png`** — **Stream entries panel**: table showing stream messages with Message ID and Fields columns, consumer groups section visible, batch size selector and order toggle.
- [ ] **`23-redis-list.png`** — **List viewer panel**: entries table with pagination (Previous/Next) and page size selector.
- [ ] **`24-redis-keys.png`** — **Keys by prefix panel**: grouped key list on the left, value viewer on the right showing a hash/string/set value.
- [ ] **`25-redis-key-filter.png`** — **Key filter dialog** open (right-click Redis connection or folder -> Key filter). Show the input with a pattern like `myapp:*`.

---

## Tips

- Use a **populated database** with realistic data so the screenshots look useful.
- For the **AND|OR buttons** capture (#09), make sure to: activate the AND|OR toggle, then hover your mouse over a property that has a simple value (string/number), so the three buttons appear.
- For Service Bus, **refresh** (F5) the queues first so the A/D/S counts are visible.
- If you don't have a Redis connection handy, skip #21-#25 for now.
- **Crop** to the relevant area if the full window is too large, but keep enough context to understand the feature.
