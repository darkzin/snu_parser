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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 49 of <array 69 of <array 44 of <array 7 of <array 74 of <char>>>>>>> %ebp+12 ]
    #    -31(%ebp)   1  [ $v2       <bool> %ebp-31 ]

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
    movl    $1, %eax                #   0:     return 1
    jmp     l_f0_exit              
l_f0_5_while_cond:
    movl    $44546, %eax            #   2:     if     44546 >= 65031 goto 6_while_body
    movl    $65031, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
    movl    $9762, %eax             #   7:     sub    t1 <- 9762, 58891
    movl    $58891, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     sub    t2 <- t1, 6893
    movl    $6893, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $20766, %eax            #   9:     if     20766 <= t2 goto 9
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_9                 
    jmp     l_f0_10                 #  10:     goto   10
l_f0_9:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_11                 #  13:     goto   11
l_f0_10:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_11:
    movzbl  -21(%ebp), %eax         #  17:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  18:     goto   0
l_f0_0:
    call    dummyINTfunc            #  20:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  21:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $98, %eax               #  22:     if     98 < t5 goto 15
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_15                
    jmp     l_f0_16                 #  23:     goto   16
l_f0_15:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f0_17                 #  26:     goto   17
l_f0_16:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_f0_17:
    movzbl  -30(%ebp), %eax         #  30:     assign v2 <- t6
    movb    %al, -31(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 45 of <array 53 of <array 60 of <array 30 of <array 79 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $99, %eax               #   0:     if     99 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $31789, %eax            #   7:     if     31789 >= 95314 goto 8_if_true
    movl    $95314, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   8:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_12_if_true         #  16:     goto   12_if_true
l_f1_12_if_true:
    call    dummyINTfunc            #  18:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_11                 #  19:     goto   11
l_f1_11:
    call    ReadInt                 #  21:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 34 of <array 19 of <array 100 of <array 34 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 93 of <array 81 of <array 16 of <array 97 of <array 57 of <bool>>>>>>> %ebp+12 ]
    #    -31(%ebp)   1  [ $v2       <bool> %ebp-31 ]

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
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $6214, %eax             #   1:     sub    t2 <- 6214, t1
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f2_exit              
    call    ReadInt                 #   3:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $32264, %eax            #   4:     add    t4 <- 32264, t3
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t4
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   6:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   7:     if     t5 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_4                  #   8:     goto   4
l_f2_6:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f2_5                  #  11:     goto   5
l_f2_4:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_f2_5:
    movzbl  -30(%ebp), %eax         #  15:     assign v2 <- t6
    movb    %al, -31(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   1:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_test_3_while_cond:
    call    WriteLn                 #   4:     call   WriteLn
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #   6:     goto   3_while_cond

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
