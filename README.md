# 🧵 HandsMen Threads: Elevating the Art of Sophistication in Men's Fashion

## 👤 Assigned To
**Shital Janvalkar**

## 📘 1. Executive Summary

HandsMen Threads: Elevating the Art of Sophistication in Men's Fashion is launching a Salesforce-based digital transformation initiative aimed at streamlining business operations, strengthening customer relationships, and ensuring enterprise-grade data integrity. This solution will focus on automating critical workflows, managing product inventory, enhancing loyalty programs, and delivering timely communications to both internal teams and customers.

---

## 🎯 2. Scope of Work

### ✅ Included
- Design and creation of Salesforce custom objects, fields, and relationships
- Automation using Flows, Apex Triggers, Batch Apex, and Scheduled Flows
- Real-time validation for data integrity at the UI level
- Inventory alerts and dynamic loyalty tracking
- Email notification system for orders and warehouse alerts
- Deployment and user training

---

## 🔄 3. Project Phases

### 📐 Phase 1: Architecture & Planning
- Define custom objects, fields, and lookup relationships
- Implement formula fields for calculated business logic
- Establish validation rules for UI-based data integrity
- Plan and scope automation using Flows, Apex Triggers, and Batch Jobs
- Design branded email templates for notifications

### 🛠️ Phase 2: Development
- Build all required Salesforce custom objects and fields
- Develop Record-Triggered Flows and Apex Triggers for automation
- Configure Profiles, Roles, Permission Sets, and Sharing Rules
- Create Batch Apex classes for scheduled midnight bulk order processing
- Finalize and implement email templates for confirmations and stock alerts

### 🧪 Phase 3: Testing & QA
- Perform unit testing (target: 85%+ Apex code coverage)
- Conduct end-to-end testing using sample records
- Validate flow performance and security compliance

### 🚀 Phase 4: Deployment & Training
- Deploy all components from Sandbox to Production via Change Sets
- Train Sales, Marketing, and Warehouse users
- Provide post-go-live support, error logging, and feedback-driven improvements

---

## 📦 4. Deliverables

- ✅ **Solution Design Document** (this file)
- ✅ **Object Model** with Custom Objects, Relationships, and ERD
- ✅ **Automation Strategy** (Flows, Apex Classes, Scheduled Batch Jobs)
- ✅ **Test Plan & Deployment Checklist**

---

## 🧰 Technologies & Tools

- Salesforce Lightning Platform
- Apex Programming
- Flow Builder
- Email Alerts & Templates
- Profiles, Roles, and Permission Sets
- Change Sets (Deployment)

---

---

## 📄 2. User Stories (Business Requirements)

### 🔹 US-001: Automated Order Confirmation
**As a** customer,  
**I want to** receive an email confirmation after placing an order,  
**So that** I can feel assured that my order was successfully received and processed.

**Acceptance Criteria:**
- An email is sent immediately after a new Order record is created.
- The email includes: Order Number, Date, Items, and Total Amount.
- The template is branded and dynamic based on customer data.
- No email is sent if the order fails validation or is incomplete.

---

### 🔹 US-002: Dynamic Loyalty Program
**As a** returning customer,  
**I want to** have my loyalty status updated based on my purchase history,  
**So that** I can earn rewards and feel valued for being a loyal shopper.

**Acceptance Criteria:**
- Loyalty status auto-updates upon order confirmation or scheduled run.
- Tier logic is based on total lifetime purchase amount:
  - ₹0–₹9,999 → Silver  
  - ₹10,000–₹49,999 → Gold  
  - ₹50,000+ → Platinum
- Loyalty status is visible in the HandsMen Customer record.

---

### 🔹 US-003: Proactive Stock Alerts
**As a** warehouse manager,  
**I want to** receive email alerts when product stock drops below 5 units,  
**So that** I can restock inventory proactively and avoid order delays.

**Acceptance Criteria:**
- A record-triggered flow or scheduled batch job checks stock levels.
- If inventory is < 5 units, an email is sent to warehouse@handsmen.com.
- Email includes: Product Name, SKU, Current Stock, and Reorder Link.

---

### 🔹 US-004: Scheduled Bulk Order Processing
**As a** system administrator,  
**I want** the system to automatically process bulk orders every night,  
**So that** our stock levels and financial records are always accurate.

**Acceptance Criteria:**
- A scheduled Apex batch runs at midnight (IST) daily.
- It processes all Orders marked as "Bulk" and updates:
  - Inventory levels
  - Order status to "Processed"
  - Financial summaries
- Errors are logged, and a report is sent to admin@handsmen.com

---




