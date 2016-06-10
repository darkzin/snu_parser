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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
    jmp     l_f0_2_while_body       #   3:     goto   2_while_body
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $99, %eax               #   8:     if     99 >= 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #   9:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_15_if_false        #  11:     goto   15_if_false
    jmp     l_f0_13                 #  12:     goto   13
l_f0_15_if_false:
l_f0_13:
    call    dummyProcedure          #  15:     call   dummyProcedure
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $39931, %eax            #  19:     mul    t2 <- 39931, 2416
    movl    $2416, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  20:     div    t3 <- t2, 80588
    movl    $80588, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     return t3
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 8 of <array 5 of <array 9 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 1 of <array 1 of <array 2 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 7 of <array 3 of <array 5 of <char>>>>>>> %ebp+16 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    movl    $48321, %eax            #   2:     if     48321 >= 50376 goto 5_while_body
    movl    $50376, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $92303, %eax            #  11:     return 92303
    jmp     l_f1_exit              
    jmp     l_f1_14_if_false        #  12:     goto   14_if_false
    jmp     l_f1_12                 #  13:     goto   12
l_f1_14_if_false:
l_f1_12:
l_f1_16_while_cond:
    jmp     l_f1_16_while_cond      #  17:     goto   16_while_cond
    jmp     l_f1_8                  #  18:     goto   8
l_f1_8:
    movl    $90433, %eax            #  20:     sub    t2 <- 90433, 31693
    movl    $31693, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $35574, %eax            #  21:     mul    t3 <- 35574, 46252
    movl    $46252, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t4 <- t3, 7234
    movl    $7234, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     div    t5 <- t4, 34385
    movl    $34385, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     div    t6 <- t5, 26391
    movl    $26391, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -16(%ebp), %eax         #  25:     sub    t7 <- t2, t6
    movl    -32(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  26:     return t7
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $v1       <bool> %ebp-19 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    movl    $99, %eax               #   3:     if     99 # 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   4:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $97, %eax               #   9:     assign v0 <- 97
    movb    %al, -18(%ebp)         
    movl    $62495, %eax            #  10:     param  0 <- 62495
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #  13:     return 0
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  14:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  15:     return 0
    jmp     l_f2_exit              
    movl    $100, %eax              #  16:     if     100 > 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_16                
    jmp     l_f2_17                 #  17:     goto   17
l_f2_16:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_18                 #  20:     goto   18
l_f2_17:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_18:
    movzbl  -15(%ebp), %eax         #  24:     assign v1 <- t4
    movb    %al, -19(%ebp)         
    jmp     l_f2_1_while_cond       #  25:     goto   1_while_cond
l_f2_0:
    call    dummyProcedure          #  27:     call   dummyProcedure
    jmp     l_f2_22                 #  28:     goto   22
    call    dummyBOOLfunc           #  29:     call   t5 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  30:     if     t5 = 1 goto 22
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_22                
    jmp     l_f2_23                 #  31:     goto   23
l_f2_22:
    movl    $1, %eax                #  33:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_24                 #  34:     goto   24
l_f2_23:
    movl    $0, %eax                #  36:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f2_24:
    movzbl  -17(%ebp), %eax         #  38:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    jmp     l_test_exit            
    call    f0                      #   3:     call   t1 <- f0
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_exit            

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
