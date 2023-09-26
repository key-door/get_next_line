## get_next_line

#### get_next_line
**Prototype:**  
`char *get_next_line(int fd);`

**Parameters:**  
- `fd`: File descriptor to read from.

**Return value:**  
- Read line: correct behavior.
- NULL: nothing else to read or an error occurred.

**Description:**  
Write a function which returns a line read from a file descriptor.

### Bonus

**Additional Feature:**  
Succeed `get_next_line` with a single static variable.

To be able to manage multiple file descriptors with your `get_next_line`. For example, if the file descriptors 3, 4, and 5 are accessible for reading, then you can call `get_next_line` once on 3, once on 4, once again on 3, then once on 5, etc. without losing the reading thread on each of the descriptors.
