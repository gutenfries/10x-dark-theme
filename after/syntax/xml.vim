syn region xmlEndTag
      \ start=+</+
      \ end=+>+
      \ contains=xmlTagN
syn match xmlTagN
      \ contained +</\s*[-a-zA-Z0-9]\++hs=s+2
