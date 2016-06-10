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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 95 of <array 66 of <array 54 of <array 79 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 43 of <array 31 of <array 92 of <array 2 of <char>>>>>>> %ebp+12 ]

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
l_f0_1_while_cond:
l_f0_4_while_cond:
    jmp     l_f0_5_while_body       #   2:     goto   5_while_body
    jmp     l_f0_5_while_body       #   3:     goto   5_while_body
    jmp     l_f0_5_while_body       #   4:     goto   5_while_body
    jmp     l_f0_5_while_body       #   5:     goto   5_while_body
    jmp     l_f0_3                  #   6:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   8:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
    call    dummyBOOLfunc           #  11:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_14_if_false        #  12:     goto   14_if_false
    movl    $50948, %eax            #  13:     return 50948
    jmp     l_f0_exit              
    movl    $99, %eax               #  14:     if     99 > 97 goto 17_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  15:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  17:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_12                 #  20:     goto   12
l_f0_14_if_false:
l_f0_12:

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 41 of <array 43 of <array 31 of <array 92 of <array 2 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 58 of <array 95 of <array 66 of <array 54 of <array 79 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 49 of <array 57 of <array 79 of <array 93 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 98 of <array 52 of <array 21 of <array 2 of <array 28 of <int>>>>>>> %ebp+20 ]
    #   -1551373608(%ebp)  1551373584  [ $v4       <array 58 of <array 95 of <array 66 of <array 54 of <array 79 of <char>>>>>> %ebp-1551373608 ]
    #   -1561429784(%ebp)  10056176  [ $v5       <array 41 of <array 43 of <array 31 of <array 92 of <array 2 of <char>>>>>> %ebp-1561429784 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1561429772, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $390357443, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1551373608(%ebp)    # local array 'v4': 5 dimensions
    movl    $58,-1551373604(%ebp)   #   dimension 1: 58 elements
    movl    $95,-1551373600(%ebp)   #   dimension 2: 95 elements
    movl    $66,-1551373596(%ebp)   #   dimension 3: 66 elements
    movl    $54,-1551373592(%ebp)   #   dimension 4: 54 elements
    movl    $79,-1551373588(%ebp)   #   dimension 5: 79 elements
    movl    $5,-1561429784(%ebp)    # local array 'v5': 5 dimensions
    movl    $41,-1561429780(%ebp)   #   dimension 1: 41 elements
    movl    $43,-1561429776(%ebp)   #   dimension 2: 43 elements
    movl    $31,-1561429772(%ebp)   #   dimension 3: 31 elements
    movl    $92,-1561429768(%ebp)   #   dimension 4: 92 elements
    movl    $2,-1561429764(%ebp)    #   dimension 5: 2 elements

    # function body
    leal    -1561429784(%ebp), %eax #   0:     &()    t2 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t2
    pushl   %eax                   
    leal    -1551373608(%ebp), %eax #   2:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   4:     call   t4 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
l_f1_2_while_cond:
    movl    $97, %eax               #   6:     if     97 < 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_3_while_body      
    jmp     l_f1_1                  #   7:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   9:     goto   2_while_cond
l_f1_1:
    movl    $99, %eax               #  11:     if     99 # 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  12:     goto   7_if_false
l_f1_6_if_true:
    movl    $62327, %eax            #  14:     return 62327
    jmp     l_f1_exit              
l_f1_11_while_cond:
    jmp     l_f1_10                 #  16:     goto   10
    jmp     l_f1_11_while_cond      #  17:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_5                  #  19:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $1561429772, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v1       <bool> %ebp-33 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t3 <- t2, 98083
    movl    $98083, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t4 <- t3, 96309
    movl    $96309, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t4
    movl    %eax, -32(%ebp)        
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $75851, %eax            #   5:     if     75851 >= 19452 goto 3
    movl    $19452, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_5                  #   9:     goto   5
l_f2_4:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f2_5:
    movzbl  -26(%ebp), %eax         #  13:     assign v1 <- t6
    movb    %al, -33(%ebp)         

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
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
    movl    $37382, %eax            #   0:     if     37382 > 64632 goto 1_if_true
    movl    $64632, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $100, %eax              #   3:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   4:     call   WriteChar
    addl    $4, %esp               
    call    WriteLn                 #   5:     call   WriteLn
    movl    $98, %eax               #   6:     if     98 > 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   9:     goto   6
l_test_8_if_false:
l_test_6:
    call    dummyCHARfunc           #  12:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
l_test_12_while_cond:
    jmp     l_test_11               #  17:     goto   11
    jmp     l_test_16_if_false      #  18:     goto   16_if_false
    jmp     l_test_14               #  19:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_12_while_cond    #  22:     goto   12_while_cond
l_test_11:
l_test_18_while_cond:
    jmp     l_test_17               #  25:     goto   17
    movl    $0, %eax                #  26:     if     0 # 0 goto 22_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_22_if_true      
    jmp     l_test_23_if_false      #  27:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  29:     goto   21
l_test_23_if_false:
l_test_21:
    call    dummyBOOLfunc           #  32:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_28_if_false      #  33:     goto   28_if_false
    jmp     l_test_26               #  34:     goto   26
l_test_28_if_false:
l_test_26:
    jmp     l_test_18_while_cond    #  37:     goto   18_while_cond
l_test_17:

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
