# Steel Industry Gaps Not Available Out of the Box in Latest Microsoft Dynamics 365 Business Central

## How to use this document
For each gap below, I have added:
- the business requirement prompt you can use with Copilot
- the implementation focus for the AL package

Use the prompt as the input request, and I should be able to understand the requirement and develop the AL solution accordingly.

## 1. Heat, Melt, and Batch Traceability
### Gap
Business Central does not natively support steel-industry traceability at the level typically required.

### Prompt
`Build an AL extension for Business Central that tracks heat number, melt number, batch/lot genealogy, and full backward/forward traceability across purchases, production, subcontracting, splitting, merging, and sales shipment for steel items such as coils, slabs, billets, and cut pieces. The solution must preserve source-to-finished genealogy and support traceability by heat, batch, coil, bundle, and lot.`

### Implementation focus
- Heat master and genealogy tables
- Trace links between source and derived stock
- Source-to-finished traceability inquiry pages
- Posting logic for split/merge events

## 2. Coil, Slab, Billet, and Bundle Management
### Gap
BC inventory is item/lot/serial oriented, but steel requires more detailed physical and dimensional tracking.

### Prompt
`Build an AL extension to manage steel stock entities such as coils, slabs, billets, bundles, remnants, offcuts, and derived pieces. The extension must support parent-child stock relationships, piece generation after conversion, and tracking of physical form, quantity, and reference to the original source stock.`

### Implementation focus
- Steel stock entity table
- Parent-child stock hierarchy
- Piece generation and remnant tracking
- Stock inquiry and conversion history

## 3. Multi-Dimensional Inventory Characteristics
### Gap
Steel stock is usually controlled by many attributes at once.

### Prompt
`Build an AL extension that allows steel inventory to be tracked by thickness, width, length, grade, finish, coating, temper, standard, unit of measure, and weight. The solution must support searching, filtering, reservation, and allocation based on multiple physical attributes simultaneously.`

### Implementation focus
- Attribute-driven item/stock model
- Multi-criteria search and allocation
- Dimension-based reservation logic
- Custom UoM and conversion factors

## 4. Conversion, Yield, and Scrap Management
### Gap
Steel processing involves inevitable material loss and variable output.

### Prompt
`Build an AL extension that calculates input, output, yield, scrap, remnant, and conversion loss for steel processing operations such as slitting, cutting, rolling, shearing, and reprocessing. The solution must reconcile issued weight against received weight and capture actual versus standard scrap.`

### Implementation focus
- Yield calculation engine
- Scrap/remainder posting
- Weight reconciliation logic
- Process loss analysis reports

## 5. Steel Manufacturing Process Support
### Gap
BC manufacturing is generic and not tailored for the steel process flow.

### Prompt
`Build an AL extension for steel manufacturing that supports process-specific routings for rolling, slitting, shearing, pickling, annealing, galvanizing, coating, and heat treatment. The solution must handle capacity planning, campaign production, WIP tracking, and subcontracting with full traceability.`

### Implementation focus
- Steel routing templates
- Process/line capacity tables
- WIP status tracking
- Subcontracting step integration

## 6. Quality Management and Test Certificates
### Gap
Steel requires strict inspection and certification handling.

### Prompt
`Build an AL extension that manages steel quality inspection, test results, material test certificates, heat-wise certification, nonconformance, and customer-specific approval workflows. The solution must support inspection at receipt, WIP, and dispatch stages.`

### Implementation focus
- QA inspection tables and forms
- Test result capture
- Nonconformance workflow
- Certificate generation and storage

## 7. Certification and Compliance Reporting
### Gap
Steel businesses often need statutory and customer-specific compliance documents.

### Prompt
`Build an AL extension that generates steel compliance documents such as mill test certificates, shipment compliance packs, standard mappings for EN/ASTM/IS, regulatory traceability reports, and document attachment management linked to lot or heat.`

### Implementation focus
- Certificate templates
- Compliance document pack generation
- Standard mapping setup
- Audit trail for document generation

## 8. Steel-Specific Pricing and Contract Management
### Gap
Pricing in steel is rarely simple list pricing.

### Prompt
`Build an AL extension that supports steel pricing based on weight, dimensions, grade, finish, market index, freight, energy, alloy, coating, and processing surcharges. The solution must also support contract pricing, formula-based pricing, and quote calculations based on actual cut sizes and yield.`

### Implementation focus
- Pricing formula engine
- Contract and index tables
- Surcharge rules
- Quote price calculation logic

## 9. Weight Reconciliation and Tolerance Handling
### Gap
Steel transactions often depend on theoretical vs actual weight.

### Prompt
`Build an AL extension that manages theoretical weight, actual weight, gross/net weight, tare weight, tolerance bands, and weight reconciliation for steel transactions. The solution must support weighbridge integration points and weight-based validation during receipt, transfer, production, and shipment.`

### Implementation focus
- Weight capture and reconciliation
- Tolerance validation
- Weighbridge interface staging tables
- Weight variance reports

## 10. Warehouse Handling for Heavy and Oversized Materials
### Gap
BC warehouse functions are generic and not designed for steel logistics.

### Prompt
`Build an AL extension for steel warehouse and yard management that supports coil, slab, pipe, and bundle storage, outdoor locations, crane/forklift constraints, weight and dimension-based put-away and picking, block stacking, and heat-wise bin identification.`

### Implementation focus
- Yard/location model
- Heavy item handling rules
- Storage map and stack logic
- Put-away/picking recommendations

## 11. Cut-to-Size and Slitting Operations
### Gap
Steel service centers need conversion logic beyond standard production orders.

### Prompt
`Build an AL extension that supports cut-to-size and slitting operations for steel coils and sheets, including mother coil to daughter coil conversion, cut-to-length planning, nesting optimization, remnant calculation, piece generation, and order-based allocation.`

### Implementation focus
- Cut planning worksheet
- Slitting/cutting journal
- Optimization logic
- Output piece creation and remnant posting

## 12. Production by Order and Allocation Logic
### Gap
Steel often works with customer-specific allocations and committed stock.

### Prompt
`Build an AL extension that allocates steel inventory by heat, coil, grade, and dimension, supports make-to-order and make-to-stock scenarios, manages priority-based commitments, handles partial fulfillment, and applies stock substitution rules with approval where needed.`

### Implementation focus
- Reservation and allocation engine
- Commitment statuses
- Substitution approvals
- Allocation inquiry and audit trail

## 13. Reprocessing and Secondary Material Handling
### Gap
Steel operations often reuse or reprocess material.

### Prompt
`Build an AL extension that tracks scrap reuse, remelt/reprocess flows, secondary stock classification, by-products, rejected material recovery, and genealogy of reworked stock in steel operations.`

### Implementation focus
- Scrap and secondary stock setup
- Reprocessing transactions
- By-product capture
- Recovered material traceability

## 14. Industry-Specific Costing
### Gap
Steel costing is more complex than standard item or production costing.

### Prompt
`Build an AL extension that calculates steel costing by heat, coil, bundle, or batch, including conversion cost per process stage, yield-adjusted costing, scrap valuation, actual cost by weight, and comparison of planned versus actual dimensions and outputs.`

### Implementation focus
- Steel cost accumulation structure
- Planned vs actual cost analysis
- Weight-based costing logic
- Margin reports by stock entity

## 15. Sales and Dispatch Complexity
### Gap
Steel order fulfillment is not just item shipment.

### Prompt
`Build an AL extension for steel sales and dispatch that validates physical attributes against customer specifications, supports partial shipment by coil or bundle split, links packing lists to heat and quality certificates, handles heavy-goods transport documents, and optimizes vehicle loads by weight and size.`

### Implementation focus
- Dispatch validation rules
- Packing list and certificate linkage
- Load planning support
- Shipment exception handling

## 16. Trading and Broker Functionality
### Gap
Many steel businesses are traders or hybrid traders/processors.

### Prompt
`Build an AL extension for steel trading that supports deal capture linked to market price and future index, brokerage and commission handling, back-to-back order management, import lot/vessel/container traceability, sales against incoming stock, and deferred delivery or call-off contracts.`

### Implementation focus
- Deal entry and pricing logic
- Brokerage rules
- Back-to-back allocation
- Contract release workflow

## 17. Import, Vessel, and Port Handling
### Gap
Steel importers and distributors need logistics support not built into BC.

### Prompt
`Build an AL extension that manages steel imports by vessel, container, port clearance, demurrage, detention, import lot allocation, customs document linkage, and arrival-based quality inspection and acceptance.`

### Implementation focus
- Vessel/container tracking tables
- Import milestone workflow
- Logistics charges tracking
- Document and inspection management

## 18. Customer-Specific Technical Specification Control
### Gap
Steel products are often sold to technical specifications.

### Prompt
`Build an AL extension that validates steel sales orders against customer technical specifications, required attributes, tolerance rules, substitute approval workflows, technical data sheet versions, and version-controlled product specifications.`

### Implementation focus
- Specification master and versioning
- Order validation rules
- Approval workflow for exceptions
- Technical sheet attachment handling

## 19. Advanced Reporting by Heat, Grade, and Dimension
### Gap
BC reporting is flexible, but not steel-specific out of the box.

### Prompt
`Build an AL extension that provides steel-specific reports and dashboards for heat-wise inventory and movement, grade-wise consumption and production, remnant and scrap analysis, yield and conversion efficiency, customer certificate traceability, and dimensional stock aging.`

### Implementation focus
- Reporting dataset design
- Analysis pages and cues
- KPI calculations
- Export-ready report layouts

## 20. Yard and Heavy Equipment Integration
### Gap
Steel plants and service centers often use external devices and systems.

### Prompt
`Build an AL extension that creates integration points for weighbridges, cranes, RFID/barcode scanning, mobile yard scanning, PLC/MES systems, and automated measurement devices for steel operations.`

### Implementation focus
- Integration staging APIs/tables
- Device event capture
- External system mapping
- Error handling and retry logic

## 21. Advanced Planning for Variable Stock
### Gap
Steel planning is constrained by dimensions, weight, and process availability.

### Prompt
`Build an AL extension that performs advanced steel planning based on usable stock dimensions, minimum scrap optimization, multi-order allocation, heat/grade-based sequencing, constraint-based planning, and real-time stock replacement suggestions.`

### Implementation focus
- Planning optimization engine
- Constraint rules
- Order-to-stock matching logic
- Planning exception dashboard

## 22. Subscription, Market Index, and Raw Material Linkage
### Gap
Steel pricing often moves with commodity markets.

### Prompt
`Build an AL extension that links steel pricing and surcharges to commodity indices such as scrap, iron ore, HRC, CRC, zinc, and nickel, supports periodic updates, contract repricing, and margin analysis tied to market movement.`

### Implementation focus
- Index master and update process
- Repricing batch/job logic
- Margin analytics
- Contract adjustment workflow

## 23. Document Management for Steel Operations
### Gap
The volume of technical and shipment documents is high.

### Prompt
`Build an AL extension for steel document management that automatically links certificates, test reports, inspection records, shipment packs, revision-controlled technical documents, and customer portal access to lots, heats, orders, and shipments.`

### Implementation focus
- Document attachment model
- Document pack generation
- Revision control
- Customer-facing access controls

## 24. Specialized Steel KPIs and Analytics
### Gap
Steel businesses track metrics beyond standard ERP KPIs.

### Prompt
`Build an AL extension that calculates and displays steel KPIs such as yield percentage, conversion loss percentage, scrap recovery percentage, heat rejection rate, process efficiency, tonnes per hour, grade-wise profitability, and remnant utilization rate.`

### Implementation focus
- KPI calculation engine
- Dashboard pages
- Role-based analytics
- Historical trend analysis

## Recommended master prompt for future development requests
You can use this when you want me to build the full AL package:

`I need a Business Central AL extension for the steel industry. The solution must cover heat and batch traceability, coil/slab/billet/bundle management, multi-dimensional inventory attributes, yield and scrap management, steel-specific manufacturing processes, quality certificates, compliance documents, pricing and contract logic, weight reconciliation, warehouse and yard handling, cutting/slitting operations, allocation and reservation, reprocessing, costing, sales and dispatch, trading and broker flows, import/vessel handling, technical specification control, reporting, equipment integrations, planning optimization, commodity-linked pricing, document management, and KPI analytics. Please design the data model, pages, codeunits, enums, reports, permissions, posting logic, integration points, and validation rules in AL.`

## Next step
If you want, I can now convert this into a more developer-friendly document with:
- a requirements table
- acceptance criteria for each gap
- suggested AL objects
- and a phased implementation roadmap
