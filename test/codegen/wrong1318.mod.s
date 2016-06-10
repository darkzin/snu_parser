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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   4:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $17674, %eax            #   7:     sub    t4 <- 17674, 3890
    movl    $3890, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t5 <- t4, 5199
    movl    $5199, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     if     t5 <= 29772 goto 6
    movl    $29772, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_6                 
    jmp     l_f0_7                  #  10:     goto   7
l_f0_6:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_8                  #  13:     goto   8
l_f0_7:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f0_8:
    movzbl  -25(%ebp), %eax         #  17:     return t6
    jmp     l_f0_exit              
    movl    $86813, %eax            #  18:     sub    t7 <- 86813, 30811
    movl    $30811, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t8 <- t7, 36153
    movl    $36153, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     add    t9 <- t8, 17240
    movl    $17240, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t10 <- t9, 64274
    movl    $64274, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     if     t10 >= 75754 goto 11_if_true
    movl    $75754, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  23:     goto   12_if_false
l_f0_11_if_true:
l_f0_15_while_cond:
    movl    $92399, %eax            #  26:     if     92399 <= 76491 goto 16_while_body
    movl    $76491, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_16_while_body     
    jmp     l_f0_14                 #  27:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  29:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_10                 #  31:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]

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
    movl    $10789, %eax            #   0:     add    t4 <- 10789, 16161
    movl    $16161, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
    movl    $10686, %eax            #   2:     div    t5 <- 10686, 64049
    movl    $64049, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t5
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #   4:     assign v2 <- 98
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 82 of <array 92 of <array 78 of <array 70 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 60 of <array 87 of <array 77 of <array 21 of <array 54 of <int>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 67087
    movl    $67087, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t5
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $98147, %eax            #   4:     if     98147 <= 76709 goto 3_while_body
    movl    $76709, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
l_f2_1:
    movl    $90208, %eax            #   9:     div    t6 <- 90208, 36295
    movl    $36295, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t7 <- t6, 93496
    movl    $93496, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     return t7
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    movl    $41029, %eax            #   0:     sub    t0 <- 41029, 66651
    movl    $66651, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_5_while_cond:
    movl    $38109, %eax            #   6:     mul    t2 <- 38109, 93900
    movl    $93900, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     if     t2 # 28385 goto 6_while_body
    movl    $28385, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #   8:     goto   4
l_test_6_while_body:
l_test_9_while_cond:
    movl    $99, %eax               #  11:     if     99 < 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #  12:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  14:     goto   9_while_cond
l_test_8:
    jmp     l_test_5_while_cond     #  16:     goto   5_while_cond
l_test_4:
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  19:     assign v1 <- t3
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
