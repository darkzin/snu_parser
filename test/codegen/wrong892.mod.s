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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 1 of <array 5 of <array 4 of <array 9 of <int>>>>>>> %ebp+8 ]
    #    -30(%ebp)   1  [ $v1       <char> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 < 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $99, %eax               #   4:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t5
    movb    %al, -30(%ebp)         
l_f0_7_while_cond:
    movl    $65142, %eax            #  10:     add    t6 <- 65142, 48530
    movl    $48530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t7 <- t6, 40896
    movl    $40896, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t8 <- t7, 21962
    movl    $21962, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     if     t8 <= 66160 goto 8_while_body
    movl    $66160, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #  14:     goto   6
l_f0_8_while_body:
    movl    $100, %eax              #  16:     if     100 # 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  17:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  19:     goto   10
l_f0_12_if_false:
l_f0_10:
l_f0_15_while_cond:
    movl    $100, %eax              #  23:     if     100 >= 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_16_while_body     
    jmp     l_f0_14                 #  24:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  26:     goto   15_while_cond
l_f0_14:
l_f0_19_while_cond:
    movl    $12669, %eax            #  29:     if     12669 > 12457 goto 20_while_body
    movl    $12457, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_20_while_body     
    jmp     l_f0_18                 #  30:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  32:     goto   19_while_cond
l_f0_18:
    call    dummyProcedure          #  34:     call   dummyProcedure
    call    dummyCHARfunc           #  35:     call   t9 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    jmp     l_f0_7_while_cond       #  36:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 9 of <array 1 of <array 7 of <array 6 of <char>>>>>>> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_1                  #   3:     goto   1
l_f1_1:
l_f1_7_while_cond:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_12                 #   7:     goto   12
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_12:
    movzbl  -15(%ebp), %eax         #  10:     assign v2 <- t7
    movb    %al, -16(%ebp)         
    jmp     l_f1_7_while_cond       #  11:     goto   7_while_cond

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, 8(%ebp)           
l_f2_2_while_cond:
    movl    $69482, %eax            #   2:     mul    t5 <- 69482, 18583
    movl    $18583, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   3:     div    t6 <- t5, 36328
    movl    $36328, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    $10783, %eax            #   4:     add    t7 <- 10783, 69974
    movl    $69974, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     add    t8 <- t7, 62140
    movl    $62140, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   6:     add    t9 <- t8, 4010
    movl    $4010, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   7:     sub    t10 <- t9, 99903
    movl    $99903, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     sub    t11 <- t10, 19132
    movl    $19132, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t12 <- t11, 9880
    movl    $9880, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     sub    t13 <- t12, 15675
    movl    $15675, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     sub    t14 <- t13, 90969
    movl    $90969, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -52(%ebp), %eax         #  12:     if     t6 > t14 goto 3_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #  13:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  15:     goto   2_while_cond
l_f2_1:
    movl    $9881, %eax             #  17:     sub    t15 <- 9881, 20824
    movl    $20824, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    call    ReadInt                 #  18:     call   t16 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     return t17
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 1 of <array 5 of <array 4 of <array 9 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   3:     goto   4_while_body
    jmp     l_test_4_while_body     #   4:     goto   4_while_body
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
    jmp     l_test_13               #  10:     goto   13
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_14               #  12:     goto   14
l_test_13:
    movl    $0, %eax                #  14:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_14:
    movzbl  -21(%ebp), %eax         #  16:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_19_if_false      #  17:     goto   19_if_false
    jmp     l_test_exit            
    movl    $98, %eax               #  19:     assign v1 <- 98
    movb    %al, v1                
    leal    v2, %eax                #  20:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  22:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_17               #  23:     goto   17
l_test_19_if_false:
l_test_17:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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

    # scope: test
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 6 of <array 1 of <array 5 of <array 4 of <array 9 of <int>>>>>>
    .long    5
    .long    6
    .long    1
    .long    5
    .long    4
    .long    9
    .skip 4320








    # end of global data section
    #-----------------------------------------

    .end
##################################################
