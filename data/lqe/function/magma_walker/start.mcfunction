# Rings 1-3 (Magma Walker I)
execute align xyz run function lqe:magma_walker/rings/1_3
# Ring 4 (Magma Walker II)
execute unless predicate lqe:magma_walker/2 run return fail
execute align xyz run function lqe:magma_walker/rings/4
# Ring 5 (Magma Walker III)
execute unless predicate lqe:magma_walker/3 run return fail
execute align xyz run function lqe:magma_walker/rings/5
# Ring 6 (Magma Walker IV)
execute unless predicate lqe:magma_walker/4 run return fail
execute align xyz run function lqe:magma_walker/rings/6
# Ring 7 (Magma Walker V)
execute unless predicate lqe:magma_walker/5 run return fail
execute align xyz run function lqe:magma_walker/rings/7
# Ring 8 (Magma Walker VI)
execute unless predicate lqe:magma_walker/6 run return fail
execute align xyz run function lqe:magma_walker/rings/8
# Ring 9 (Magma Walker VII)
execute unless predicate lqe:magma_walker/7 run return fail
execute align xyz run function lqe:magma_walker/rings/9
# Ring 10 (Magma Walker VIII)
execute unless predicate lqe:magma_walker/8 run return fail
execute align xyz run function lqe:magma_walker/rings/10