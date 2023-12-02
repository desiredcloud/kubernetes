


- Basic Constructs of Apache Kafka
  - Zookeeper
  - Broker(Kafka nodes)
  - Producers
  - Consumer Groups
  - Topics
  - Partitions
  - Offsets

- Zookeeper
  - Centralized service for maintaining configuration information
  - Performs Leader election for kafka
  - Failure detection

- Producers and Consumers
  - Producers send messages to kafka
  - Consumer reads messages from broker
  - Producers and Consumers are decoupled 
    - A slow consumer will not affect Producers
    - More consumers can be added without affecting Producers
    - Failure of a Consumer will not affect the system
    - High scalability
  - On or more Producers can write to a single Topic
  - One or more Consumers group can subscribe to a single Topic

- Topics, Partition and Offset
  - Topics
    - It is ordered collections of events written in durable way.
    - It can persist the data (mins, hrs, days, years)
    - Each message belongs to a topic
      - Topics provide a way to group messages together
    - There is no limit to the number of topics
  - Partition
    - Topics can be split into Partitions for scalability
      - Partitions are ordered
      - Each message in the log is identified by its offset
      - Partitions are replicated for reliability

- Kafka Ecosystem
  - Kafka REST Proxy
    - Producer and Consumers over REST(HTTP)
  - Kafka Mirror-Maker
    - Replicate cluster data to another cluster
  - Kafka Streams
    - Streams API to transform, aggregate, process records from a stream and produce derivative streams.
  - Kafka Connect
    - Connector API reusable producers and consumers.

