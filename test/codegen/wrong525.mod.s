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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $91628, %eax            #   0:     assign v0 <- 91628
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_4_if_false         #   2:     goto   4_if_false
    movl    $36702, %eax            #   3:     assign v0 <- 36702
    movl    %eax, -20(%ebp)        
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t5 <- t4, 55155
    movl    $55155, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t6 <- t5, 72329
    movl    $72329, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v1 <- t6
    movl    %eax, -36(%ebp)        
    movl    $98, %eax               #   5:     if     98 >= 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_3                 
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $1, %eax                #   8:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_5                  #   9:     goto   5
l_f1_4:
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f1_5:
    movzbl  -29(%ebp), %eax         #  13:     assign v0 <- t7
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -53(%ebp)   1  [ $v2       <char> %ebp-53 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    movl    $57777, %eax            #   1:     div    t3 <- 57777, 23690
    movl    $23690, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     div    t4 <- t3, 79593
    movl    $79593, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     mul    t5 <- t4, 2609
    movl    $2609, %ebx            
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     mul    t6 <- t5, 92389
    movl    $92389, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     div    t7 <- t6, 89129
    movl    $89129, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     mul    t8 <- t7, 15482
    movl    $15482, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $19610, %eax            #   7:     add    t9 <- 19610, t8
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     if     t9 <= 99414 goto 2_while_body
    movl    $99414, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    movl    $98, %eax               #  13:     assign v2 <- 98
    movb    %al, -53(%ebp)         
l_f2_6_while_cond:
    movl    $98, %eax               #  15:     if     98 < 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #  16:     goto   5
l_f2_7_while_body:
l_f2_10_while_cond:
    movl    $0, %eax                #  19:     if     0 = 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_while_body     
    jmp     l_f2_9                  #  20:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  22:     goto   10_while_cond
l_f2_9:
    movl    $5556, %eax             #  24:     add    t10 <- 5556, 5303
    movl    $5303, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     add    t11 <- t10, 58038
    movl    $58038, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $84049, %eax            #  26:     if     84049 <= t11 goto 14
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_14                
    jmp     l_f2_15                 #  27:     goto   15
l_f2_14:
    movl    $1, %eax                #  29:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_16                 #  30:     goto   16
l_f2_15:
    movl    $0, %eax                #  32:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f2_16:
    movzbl  -21(%ebp), %eax         #  34:     assign v0 <- t12
    movb    %al, 8(%ebp)           
    jmp     l_f2_6_while_cond       #  35:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $99, %eax               #   1:     if     99 >= 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   4:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_exit            
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $46610, %eax            #  11:     add    t0 <- 46610, 92489
    movl    $92489, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     assign v0 <- t0
    movl    %eax, v0               
    call    dummyBOOLfunc           #  13:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     if     t1 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16              
    jmp     l_test_11               #  15:     goto   11
l_test_16:
    jmp     l_test_11               #  17:     goto   11
    jmp     l_test_11               #  18:     goto   11
    jmp     l_test_11               #  19:     goto   11
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_12               #  21:     goto   12
l_test_11:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_12:
    movzbl  -18(%ebp), %eax         #  25:     assign v1 <- t2
    movb    %al, v1                
l_test_18_while_cond:
    movl    $52693, %eax            #  27:     if     52693 < 11293 goto 19_while_body
    movl    $11293, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_19_while_body   
    jmp     l_test_17               #  28:     goto   17
l_test_19_while_body:
l_test_22_while_cond:
    jmp     l_test_21               #  31:     goto   21
    jmp     l_test_22_while_cond    #  32:     goto   22_while_cond
l_test_21:
    movl    $20628, %eax            #  34:     assign v0 <- 20628
    movl    %eax, v0               
    jmp     l_test_18_while_cond    #  35:     goto   18_while_cond
l_test_17:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
