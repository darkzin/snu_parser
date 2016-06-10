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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     return t2
    jmp     l_f0_exit              
    movl    $98675, %eax            #   3:     if     98675 <= 21049 goto 3_if_true
    movl    $21049, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   7:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_2                  #   9:     goto   2
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 26 of <array 95 of <array 31 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    movl    $98, %eax               #   0:     if     98 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   5:     goto   6_while_cond
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #   9:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    movl    $22825, %eax            #  11:     add    t2 <- 22825, 1264
    movl    $1264, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     add    t3 <- t2, 76108
    movl    $76108, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t4 <- t3, 28446
    movl    $28446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     assign v1 <- t4
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t5       <bool> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 48 of <array 36 of <array 17 of <array 83 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 67 of <array 39 of <array 54 of <array 37 of <bool>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    movl    $64246, %eax            #   0:     sub    t1 <- 64246, 75717
    movl    $75717, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t1 = 1957 goto 1
    movl    $1957, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #   9:     return t2
    jmp     l_f2_exit              
    jmp     l_f2_7                  #  10:     goto   7
    jmp     l_f2_7                  #  11:     goto   7
    jmp     l_f2_7                  #  12:     goto   7
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -18(%ebp)         
l_f2_8:
    movzbl  -18(%ebp), %eax         #  18:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_16                 #  19:     goto   16
l_f2_16:
    movl    $1, %eax                #  21:     assign t4 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_18                 #  22:     goto   18
    movl    $0, %eax                #  23:     assign t4 <- 0
    movb    %al, -19(%ebp)         
l_f2_18:
    movzbl  -19(%ebp), %eax         #  25:     if     t4 # 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_12                
    jmp     l_f2_13                 #  26:     goto   13
l_f2_12:
    movl    $1, %eax                #  28:     assign t5 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f2_14                 #  29:     goto   14
l_f2_13:
    movl    $0, %eax                #  31:     assign t5 <- 0
    movb    %al, -20(%ebp)         
l_f2_14:
    movzbl  -20(%ebp), %eax         #  33:     assign v2 <- t5
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
l_test_3_while_cond:
    movl    $100, %eax              #   3:     if     100 < 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_4_while_body    
    jmp     l_test_4_while_body     #   4:     goto   4_while_body
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   6:     goto   3_while_cond
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   8:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            

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
