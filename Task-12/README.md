# Python Code

```
import hashlib

class blockchain:

    def __init__(self, previous_block_hash, transaction_list):
        self.previous_block_hash = previous_block_hash
        self.transaction_list = transaction_list

        self.block_data = " - ".join(transaction_list) + " -> " + previous_block_hash
        self.block_hash = hashlib.sha256(self.block_data.encode()).hexdigest()

a1 = "Jecob sends 2 BC to Taylor"
a2 = "Bob's son sends 4.7 BC to Taylor"
a3 = "Jecob sends 7.3 BC to Taylor"
a4 = "Bob's son sends 6.5 BC to Taylor"
a5 = "Jecob sends 3 BC to Taylor"
a6 = "Bob's son sends 3.2 BC to Taylor"

first = blockchain("Initial String", [a1,a2])
print(first.block_data)
print(first.block_hash)

second = blockchain("Initial String", [a3,a4])
print(second.block_data)
print(second.block_hash)

third = blockchain("Initial String", [a5,a6])
print(third.block_data)
print(third.block_hash)
``` 

# Output

![image](https://user-images.githubusercontent.com/56226566/139600025-a3b10be9-1d8a-4061-a1e0-fd6e4f8a29ce.png)

