resource "newrelic_service_level" "foo" {
    guid = "NDA0Mzg0M3xCUk9XU0VSfEFQUExJQ0FUSU9OfDExMDMyODc3MjU"
    name = "Latency"
    description = "Proportion of requests that are served faster than a threshold."

    events {
        account_id = var.account_id
        valid_events {
            from = "Transaction"
            where = "appName = 'app' AND (transactionType='Web')"
        }
        bad_events {
            from = "Transaction"
            where = "appName = 'app' AND (transactionType= 'Web') AND duration > 0.1"
        }
    }

    objective {
        target = 99.00
        time_window {
            rolling {
                count = 7
                unit = "DAY"
            }
        }
    }
}