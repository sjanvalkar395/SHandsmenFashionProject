public class OrderTriggerHandler {

    public static void validateOrderQuantity(List<HandsMen_Order__c> orderList) {

        for (HandsMen_Order__c order : orderList) {

            String status = order.Status__c;
            Decimal qty = order.Quantity__c;

            if (status == 'Confirmed') {
                if (qty == null || qty <= 500) {
                    order.Quantity__c.addError('For Status "Confirmed", Quantity must be more than 500.');
                }
            } else if (status == 'Pending') {
                if (qty == null || qty <= 200) {
                    order.Quantity__c.addError('For Status "Pending", Quantity must be more than 200.');
                }
            } else if (status == 'Rejection') {
                if (qty == null || qty != 0) {
                    order.Quantity__c.addError('For Status "Rejection", Quantity must be 0.');
                }
            }
        }

        System.debug('✅ Order quantity validations executed successfully.');
    }
}