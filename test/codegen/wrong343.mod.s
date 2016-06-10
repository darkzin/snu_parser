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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v2       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $v3       <bool> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    movl    $5957, %eax             #   1:     add    t4 <- 5957, 73469
    movl    $73469, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $92287, %eax            #   2:     if     92287 < t4 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   5:     assign v2 <- 97
    movb    %al, -23(%ebp)         
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    movl    $38590, %eax            #   9:     if     38590 <= 43193 goto 7_while_body
    movl    $43193, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #  10:     goto   5
l_f0_7_while_body:
    movl    $0, %eax                #  12:     assign v3 <- 0
    movb    %al, -24(%ebp)         
    jmp     l_f0_12_if_false        #  13:     goto   12_if_false
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_if_false:
l_f0_10:
    call    ReadInt                 #  17:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  18:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_6_while_cond       #  19:     goto   6_while_cond
l_f0_5:
    call    dummyBOOLfunc           #  21:     call   t7 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  22:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 4 of <array 4 of <array 8 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 2 of <array 2 of <array 9 of <array 5 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $16873, %eax            #   0:     div    t4 <- 16873, 49329
    movl    $49329, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 17206
    movl    $17206, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v3 <- t5
    movl    %eax, 12(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #   4:     goto   1
    movl    $99, %eax               #   5:     if     99 > 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
l_f1_5_if_true:
    movl    $13846, %eax            #   8:     assign v3 <- 13846
    movl    %eax, 12(%ebp)         
    jmp     l_f1_4                  #   9:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_2_while_cond       #  12:     goto   2_while_cond
l_f1_1:
l_f1_10_while_cond:
    movl    $91712, %eax            #  15:     div    t6 <- 91712, 88616
    movl    $88616, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     mul    t7 <- t6, 81141
    movl    $81141, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     div    t8 <- t7, 32195
    movl    $32195, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     sub    t9 <- t8, 51769
    movl    $51769, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     if     t9 <= 9379 goto 11_while_body
    movl    $9379, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  20:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  22:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t4
    movb    %al, -15(%ebp)         
    jmp     l_f2_2                  #   2:     goto   2
    jmp     l_f2_2                  #   3:     goto   2
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #  11:     assign v3 <- t5
    movb    %al, -16(%ebp)         
    movl    $100, %eax              #  12:     assign v2 <- 100
    movb    %al, -15(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_2_while_body:
    movl    $100, %eax              #   4:     assign v0 <- 100
    movb    %al, v0                
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
    jmp     l_test_11_if_false      #   8:     goto   11_if_false
    call    ReadInt                 #   9:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_14_while_cond:
    movl    $97, %eax               #  11:     if     97 < 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  12:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  14:     goto   14_while_cond
l_test_13:
    movl    $26703, %eax            #  16:     if     26703 # 68597 goto 18
    movl    $68597, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_18              
    jmp     l_test_19               #  17:     goto   19
l_test_18:
    movl    $1, %eax                #  19:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_20               #  20:     goto   20
l_test_19:
    movl    $0, %eax                #  22:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_20:
    movzbl  -17(%ebp), %eax         #  24:     assign v1 <- t1
    movb    %al, v1                
l_test_23_while_cond:
    jmp     l_test_22               #  26:     goto   22
    jmp     l_test_23_while_cond    #  27:     goto   23_while_cond
l_test_22:
    call    dummyProcedure          #  29:     call   dummyProcedure
    jmp     l_test_9                #  30:     goto   9
l_test_11_if_false:
l_test_9:
l_test_27_while_cond:
    jmp     l_test_27_while_cond    #  34:     goto   27_while_cond
    movl    $34811, %eax            #  35:     if     34811 # 37709 goto 33_if_true
    movl    $37709, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_33_if_true      
    jmp     l_test_34_if_false      #  36:     goto   34_if_false
l_test_33_if_true:
    movl    $51454, %eax            #  38:     add    t2 <- 51454, 69649
    movl    $69649, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     assign v2 <- t2
    movl    %eax, v2               
    jmp     l_test_32               #  40:     goto   32
l_test_34_if_false:
l_test_32:
    call    dummyINTfunc            #  43:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $98, %eax               #  44:     assign v0 <- 98
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
