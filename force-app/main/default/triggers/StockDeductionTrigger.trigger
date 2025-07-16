trigger StockDeductionTrigger on HandsMen_Order__c (after insert, after update) {
    Set<Id> productIds = new Set<Id>();

    // Step 1: Collect relevant product IDs for confirmed orders
    for (HandsMen_Order__c order : Trigger.new) {
        if (order.Status__c == 'Confirmed' && order.Product__c != null) {
            productIds.add(order.Product__c);
        }
    }

    if (productIds.isEmpty()) return;

    // Step 2: Query inventory by related product
    Map<Id, Inventory__c> inventoryMap = new Map<Id, Inventory__c>(
        [SELECT Id, Stock_Quantity__c, Product__c 
         FROM Inventory__c 
         WHERE Product__c IN :productIds]
    );

    List<Inventory__c> inventoriesToUpdate = new List<Inventory__c>();

    // Step 3: Deduct quantity from inventory
    for (HandsMen_Order__c order : Trigger.new) {
        if (order.Status__c == 'Confirmed' && order.Product__c != null && order.Quantity__c != null) {
            for (Inventory__c inv : inventoryMap.values()) {
                if (inv.Product__c == order.Product__c) {
                    inv.Stock_Quantity__c -= order.Quantity__c;
                    inventoriesToUpdate.add(inv);
                    break; // Assuming one inventory record per product
                }
            }
        }
    }

    // Step 4: Update inventory
    if (!inventoriesToUpdate.isEmpty()) {
        update inventoriesToUpdate;
    }
}