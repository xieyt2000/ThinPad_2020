# 页表: 正确
# 装入 0x80100000
# 运行 0x00000000
# 读出 0x80400000 12B, 应该获得
#   23232323
#   00000123
#   01230123
# 读寄存器, 应该获得
#   a0 00000123
#   a1 00002323
#   a2 00000001

    li      t0, 0x7FC10004
    li      t1, 0x123
    sw      t1, 0(t0)
    sb      t1, -4(t0)
    sb      t1, -3(t0)
    sb      t1, -2(t0)
    sb      t1, -1(t0)
    sh      t1, 4(t0)
    sh      t1, 6(t0)
    lw      a0, 0(t0)
    lh      a1, -2(t0)
    lb      a2, 5(t0)
    ret
