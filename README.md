QueueExample (How to TDD a Queueing controller)
===============================================

# DocumentConversionController

## Public

### Constructor
Initializes:
* TransactionInfoRepository
* FailureTracking(Dictionary)
* ActiveQueues(List)
* JobsProcessing(List)
* IsStopping = false

Sets up Queues:
* HostName
* Username
* Password

Start ApiHost

### Initialize
Calls ProcessQueue

### StopProcessing
Unsubscribe from each active Queue

IsStopping = true

Stop ApiHost

### Shutdown
Calls StopProcessing

Exits if no more jobs are processing

## Private

### ProcessQueue
Create new RabbitMq Consumer(QueueHOstName, User, Password, Type)

Connect to RabbitMq using Consumer

Read from Queue, passing method for message processing and exception
handling

Add to ActiveQueue list

### ProcessMessage
Start timer

Deserialize message in job parameters

Add to JobsProcessing

Run document conversion engine

Check for errors

Remove job

Send message to bill processing Queue

*Inline returns, failing through throws an error* (write confident code)

### RaiseException

### SendMessageToBillProcessingQueue
 
### RunEngineProcess

### RemoveJob (overloaded)

### Exit
