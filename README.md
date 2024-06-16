# Case Study: Aquaculture startup

Imagine that you're building an aquaculture startup that provide monitoring for fisheries. You're now designing a system that collects metrics from IoT devices deployed on the field. We are going to use Clickhouse to store the data to fulfill the requirements as below.

## Requirements

- Support high throughput data insertion. We have 1,000 IoT devices sending 1 metrics every second. In total, we're ingesting 1,000 requests per second.
  - The data is always immutable because we're recording facts
- The customer dashboards will display various charts to aid clients to make business decisions
  - Statistic by day & month
  - Moving average
- The data has to be kept up to 1 year

