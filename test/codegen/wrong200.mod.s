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
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]

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
    movl    $86275, %eax            #   0:     mul    t2 <- 86275, 73884
    movl    $73884, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $43195, %eax            #   1:     add    t3 <- 43195, 51836
    movl    $51836, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t2 >= t3 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #  10:     return t4
    jmp     l_f0_exit              
l_f0_6_while_cond:
    call    dummyBOOLfunc           #  12:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  13:     if     t5 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_5                  #  14:     goto   5
l_f0_9:
    jmp     l_f0_6_while_cond       #  16:     goto   6_while_cond
l_f0_5:
    movl    $41725, %eax            #  18:     div    t6 <- 41725, 44188
    movl    $44188, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $24602, %eax            #  19:     if     24602 < t6 goto 11
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_11                
    jmp     l_f0_12                 #  20:     goto   12
l_f0_11:
    movl    $1, %eax                #  22:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_13                 #  23:     goto   13
l_f0_12:
    movl    $0, %eax                #  25:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_f0_13:
    movzbl  -29(%ebp), %eax         #  27:     return t7
    jmp     l_f0_exit              

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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 1 of <array 4 of <array 2 of <array 8 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
l_f1_7_while_cond:
    movl    $65838, %eax            #   3:     if     65838 >= 41996 goto 8_while_body
    movl    $41996, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #   4:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]

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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t2
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   3:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t3 = 1 goto 3_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   5:     goto   4_if_false
l_f2_3_if_true:
    movl    $99, %eax               #   7:     if     99 # 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   8:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $100, %eax              #  13:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_2                  #  15:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    movl    $8293, %eax             #   0:     if     8293 <= 43047 goto 1_if_true
    movl    $43047, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, v0                
    movl    $99, %eax               #   4:     if     99 <= 100 goto 9
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_9               
    jmp     l_test_10               #   5:     goto   10
l_test_9:
    movl    $1, %eax                #   7:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #   8:     goto   11
l_test_10:
    movl    $0, %eax                #  10:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  12:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_5                #  13:     goto   5
l_test_5:
    jmp     l_test_0                #  15:     goto   0
l_test_2_if_false:
l_test_0:
l_test_14_while_cond:
    jmp     l_test_15_while_body    #  19:     goto   15_while_body
    jmp     l_test_13               #  20:     goto   13
l_test_15_while_body:
    jmp     l_test_exit            
    jmp     l_test_14_while_cond    #  23:     goto   14_while_cond
l_test_13:
    movl    $98, %eax               #  25:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               
    movl    $80175, %eax            #  27:     if     80175 < 80824 goto 22_if_true
    movl    $80824, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_22_if_true      
    jmp     l_test_23_if_false      #  28:     goto   23_if_false
l_test_22_if_true:
l_test_26_while_cond:
    jmp     l_test_25               #  31:     goto   25
    jmp     l_test_26_while_cond    #  32:     goto   26_while_cond
l_test_25:
    jmp     l_test_28               #  34:     goto   28
l_test_28:
l_test_32_while_cond:
    movl    $99, %eax               #  37:     if     99 >= 100 goto 33_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_33_while_body   
    jmp     l_test_31               #  38:     goto   31
l_test_33_while_body:
    movl    $98, %eax               #  40:     if     98 # 98 goto 36_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_36_if_true      
    jmp     l_test_37_if_false      #  41:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  43:     goto   35
l_test_37_if_false:
l_test_35:
    jmp     l_test_exit            
    jmp     l_test_32_while_cond    #  47:     goto   32_while_cond
l_test_31:
    jmp     l_test_21               #  49:     goto   21
l_test_23_if_false:
l_test_21:
    call    dummyBOOLfunc           #  52:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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

    # scope: test
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
