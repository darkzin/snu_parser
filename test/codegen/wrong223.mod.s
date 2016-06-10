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
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_6_if_false         #   1:     goto   6_if_false
    jmp     l_f0_4                  #   2:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $30828, %eax            #   5:     assign v0 <- 30828
    movl    %eax, -28(%ebp)        
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_12_while_cond:
    jmp     l_f0_11                 #  10:     goto   11
    jmp     l_f0_12_while_cond      #  11:     goto   12_while_cond
l_f0_11:
    movl    $83247, %eax            #  13:     add    t2 <- 83247, 61837
    movl    $61837, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     sub    t3 <- t2, 24781
    movl    $24781, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  16:     goto   8
l_f0_8:
    jmp     l_f0_17_if_false        #  18:     goto   17_if_false
l_f0_19_while_cond:
    movl    $98, %eax               #  20:     if     98 >= 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_20_while_body     
    jmp     l_f0_18                 #  21:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  23:     goto   19_while_cond
l_f0_18:
    call    dummyCHARfunc           #  25:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $58821, %eax            #  26:     return 58821
    jmp     l_f0_exit              
    movl    $30487, %eax            #  27:     return 30487
    jmp     l_f0_exit              
l_f0_26_while_cond:
    movl    $20719, %eax            #  29:     if     20719 > 53742 goto 27_while_body
    movl    $53742, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_27_while_body     
    jmp     l_f0_25                 #  30:     goto   25
l_f0_27_while_body:
    jmp     l_f0_26_while_cond      #  32:     goto   26_while_cond
l_f0_25:
    call    dummyBOOLfunc           #  34:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f0_15                 #  35:     goto   15
l_f0_17_if_false:
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 8 of <array 2 of <array 1 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t2
    jmp     l_f1_exit              
    movl    $100, %eax              #   3:     return 100
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 7 of <array 5 of <array 7 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -37(%ebp)   1  [ $v4       <bool> %ebp-37 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $98, %eax               #   4:     if     98 > 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  12:     assign v4 <- t2
    movb    %al, -37(%ebp)         
    movl    $0, %eax                #  13:     return 0
    jmp     l_f2_exit              
    movl    $6140, %eax             #  14:     if     6140 <= 19031 goto 14
    movl    $19031, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_14                
    jmp     l_f2_15                 #  15:     goto   15
l_f2_14:
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  18:     goto   16
l_f2_15:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movzbl  -14(%ebp), %eax         #  22:     return t3
    jmp     l_f2_exit              
    call    dummyINTfunc            #  23:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_9                  #  24:     goto   9
l_f2_9:
    jmp     l_f2_1_while_cond       #  26:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_23                 #  28:     goto   23
    jmp     l_f2_23                 #  29:     goto   23
    jmp     l_f2_24                 #  30:     goto   24
l_f2_23:
    movl    $1, %eax                #  32:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_25                 #  33:     goto   25
l_f2_24:
    movl    $0, %eax                #  35:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_25:
    movl    $0, %eax                #  37:     if     0 # t5 goto 20_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  38:     goto   21_if_false
l_f2_20_if_true:
    movl    $61311, %eax            #  40:     mul    t6 <- 61311, 38154
    movl    $38154, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  41:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #  42:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_19                 #  43:     goto   19
l_f2_21_if_false:
l_f2_19:
    movl    $42283, %eax            #  46:     sub    t7 <- 42283, 23514
    movl    $23514, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  47:     add    t8 <- t7, 30562
    movl    $30562, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  48:     if     t8 < 44245 goto 30_if_true
    movl    $44245, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_30_if_true        
    jmp     l_f2_31_if_false        #  49:     goto   31_if_false
l_f2_30_if_true:
    jmp     l_f2_35_if_false        #  51:     goto   35_if_false
    jmp     l_f2_33                 #  52:     goto   33
l_f2_35_if_false:
l_f2_33:
l_f2_37_while_cond:
    jmp     l_f2_37_while_cond      #  56:     goto   37_while_cond
    jmp     l_f2_29                 #  57:     goto   29
l_f2_31_if_false:
l_f2_29:

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <char>>> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   1:     call   dummyProcedure
    leal    _str_1, %eax            #   2:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
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

    # scope: test
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
