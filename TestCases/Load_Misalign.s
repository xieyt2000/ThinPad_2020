    li      t0, 0x80400001
    lw      t1, 0(t0)   # Misaligned Load
    ret
