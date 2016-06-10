##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 44 of <array 65 of <array 61 of <array 6 of <array 55 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 27 of <array 62 of <array 50 of <array 99 of <int>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f0_exit              
l_f0_5_while_cond:
    jmp     l_f0_4                  #   2:     goto   4
    jmp     l_f0_5_while_cond       #   3:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_9_if_false         #   5:     goto   9_if_false
    jmp     l_f0_7                  #   6:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_10                 #   9:     goto   10
l_f0_10:
    movl    $0, %eax                #  11:     if     0 # 0 goto 14
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_14                
    jmp     l_f0_15                 #  12:     goto   15
l_f0_14:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_16                 #  15:     goto   16
l_f0_15:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_16:
    movzbl  -13(%ebp), %eax         #  19:     assign v2 <- t1
    movb    %al, -14(%ebp)         
    jmp     l_f0_1                  #  20:     goto   1
l_f0_1:
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t13      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t7       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t9       <bool> %ebp-61 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 21 of <array 61 of <array 34 of <array 42 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $51506, %eax            #   0:     mul    t1 <- 51506, 81894
    movl    $81894, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t2 <- t1, 7090
    movl    $7090, %ebx            
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     mul    t3 <- t2, 55501
    movl    $55501, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     mul    t4 <- t3, 26462
    movl    $26462, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     mul    t5 <- t4, 49154
    movl    $49154, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   5:     div    t6 <- t5, 89901
    movl    $89901, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    $99152, %eax            #   6:     if     99152 <= t6 goto 1
    movl    -52(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   7:     goto   2
l_f1_1:
    movl    $1, %eax                #   9:     assign t7 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_3                  #  10:     goto   3
l_f1_2:
    movl    $0, %eax                #  12:     assign t7 <- 0
    movb    %al, -53(%ebp)         
l_f1_3:
    movzbl  -53(%ebp), %eax         #  14:     return t7
    jmp     l_f1_exit              
    movl    $8522, %eax             #  15:     div    t8 <- 8522, 61510
    movl    $61510, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  16:     if     t8 # 51762 goto 6
    movl    $51762, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_6                 
    jmp     l_f1_7                  #  17:     goto   7
l_f1_6:
    movl    $1, %eax                #  19:     assign t9 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f1_8                  #  20:     goto   8
l_f1_7:
    movl    $0, %eax                #  22:     assign t9 <- 0
    movb    %al, -61(%ebp)         
l_f1_8:
    movzbl  -61(%ebp), %eax         #  24:     assign v1 <- t9
    movb    %al, 12(%ebp)          
    movl    $97793, %eax            #  25:     div    t10 <- 97793, 54920
    movl    $54920, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t11 <- t10, 62153
    movl    $62153, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $16137, %eax            #  27:     sub    t12 <- 16137, 67861
    movl    $67861, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  28:     if     t11 >= t12 goto 11
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_11                
    jmp     l_f1_12                 #  29:     goto   12
l_f1_11:
    movl    $1, %eax                #  31:     assign t13 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_13                 #  32:     goto   13
l_f1_12:
    movl    $0, %eax                #  34:     assign t13 <- 0
    movb    %al, -29(%ebp)         
l_f1_13:
    movzbl  -29(%ebp), %eax         #  36:     return t13
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t14      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t2       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t5       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t6       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t7       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t9       <char> %ebp-65 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 93 of <array 90 of <array 80 of <array 91 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 78 of <array 37 of <array 76 of <array 18 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $72372, %eax            #   1:     sub    t1 <- 72372, 72662
    movl    $72662, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t2 <- t1, 12179
    movl    $12179, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     add    t3 <- t2, 30163
    movl    $30163, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     sub    t4 <- t3, 50502
    movl    $50502, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $88795, %eax            #   5:     add    t5 <- 88795, 10934
    movl    $10934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   6:     add    t6 <- t5, 18886
    movl    $18886, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   7:     add    t7 <- t6, 7805
    movl    $7805, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   8:     add    t8 <- t7, 80557
    movl    $80557, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -48(%ebp), %eax         #   9:     if     t4 <= t8 goto 2_while_body
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    call    dummyCHARfunc           #  15:     call   t9 <- dummyCHARfunc
    movb    %al, -65(%ebp)         
    movzbl  -65(%ebp), %eax         #  16:     if     t9 < 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_while_body      
    jmp     l_f2_4                  #  17:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #  19:     goto   5_while_cond
l_f2_4:
    movl    $31749, %eax            #  21:     sub    t10 <- 31749, 63372
    movl    $63372, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     sub    t11 <- t10, 39534
    movl    $39534, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     sub    t12 <- t11, 94902
    movl    $94902, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $73498, %eax            #  24:     mul    t13 <- 73498, 99053
    movl    $99053, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  25:     if     t12 > t13 goto 9
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  26:     goto   10
l_f2_9:
    movl    $1, %eax                #  28:     assign t14 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_11                 #  29:     goto   11
l_f2_10:
    movl    $0, %eax                #  31:     assign t14 <- 0
    movb    %al, -33(%ebp)         
l_f2_11:
    movzbl  -33(%ebp), %eax         #  33:     assign v2 <- t14
    movb    %al, 16(%ebp)          

l_f2_exit:
    # epilogue
    addl    $56, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_4_while_cond:
    jmp     l_test_5_while_body     #   4:     goto   5_while_body
    jmp     l_test_3                #   5:     goto   3
l_test_5_while_body:
    jmp     l_test_exit            
    jmp     l_test_4_while_cond     #   8:     goto   4_while_cond
l_test_3:
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################
