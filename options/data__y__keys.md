---
sort: 19
title: C.5. dataYKeys
---
# dataYKeys

Expect "keys" from the dataset to arrange the y range. If you use one key the internal state is "bar". if you use multiple the internal is "stacked"


## Specification

Default implementation: ```{ dataYKeys : [] }```

### Key

| **Name**| **Alias**| **Category** |
| ```dataYKeys```| ```data__y__keys```| [Data](../options/#data) |

### Value

Allow A-Z, a-b and 0-9 as value.

| **Default**| **Validation**| **Type** |
| ```[]```| ```^[a-zA-Z0-9]*$```| Array |



