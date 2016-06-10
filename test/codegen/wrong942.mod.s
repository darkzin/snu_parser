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
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
    movl    $97278, %eax            #   0:     sub    t1 <- 97278, 76564
    movl    $76564, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 59123
    movl    $59123, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 35138
    movl    $35138, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t4 <- t3, 54962
    movl    $54962, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     sub    t5 <- t4, 32402
    movl    $32402, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v3 <- t5
    movl    %eax, -40(%ebp)        
    jmp     l_f0_3_if_false         #   6:     goto   3_if_false
    movl    $5908, %eax             #   7:     return 5908
    jmp     l_f0_exit              
    movl    $64106, %eax            #   8:     assign v3 <- 64106
    movl    %eax, -40(%ebp)        
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -33(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -17(%ebp)   1  [ $v2       <bool> %ebp-17 ]

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
    movl    $84016, %eax            #   0:     if     84016 < 23406 goto 4
    movl    $23406, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_4                 
    jmp     l_f1_5                  #   1:     goto   5
l_f1_4:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   8:     if     t1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   9:     goto   2_if_false
l_f1_1_if_true:
    movl    $0, %eax                #  11:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_10                 #  15:     goto   10
    call    dummyBOOLfunc           #  16:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     if     t2 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  18:     goto   11
l_f1_10:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_12                 #  21:     goto   12
l_f1_11:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f1_12:
    movzbl  -15(%ebp), %eax         #  25:     return t3
    jmp     l_f1_exit              
l_f1_15_while_cond:
    jmp     l_f1_14                 #  27:     goto   14
    movl    $19886, %eax            #  28:     if     19886 # 69585 goto 18
    movl    $69585, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_18                
    jmp     l_f1_19                 #  29:     goto   19
l_f1_18:
    movl    $1, %eax                #  31:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_20                 #  32:     goto   20
l_f1_19:
    movl    $0, %eax                #  34:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f1_20:
    movzbl  -16(%ebp), %eax         #  36:     assign v2 <- t4
    movb    %al, -17(%ebp)         
l_f1_23_while_cond:
    jmp     l_f1_22                 #  38:     goto   22
    jmp     l_f1_23_while_cond      #  39:     goto   23_while_cond
l_f1_22:
    jmp     l_f1_15_while_cond      #  41:     goto   15_while_cond
l_f1_14:

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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 8 of <array 2 of <array 7 of <array 1 of <int>>>>>>> %ebp+16 ]

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
    movl    $8505, %eax             #   0:     if     8505 # 85765 goto 1_if_true
    movl    $85765, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    call    ReadInt                 #   3:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    jmp     l_f2_8_if_false         #   5:     goto   8_if_false
    jmp     l_f2_6                  #   6:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $61993, %eax            #   9:     return 61993
    jmp     l_f2_exit              
    movl    $28325, %eax            #  10:     return 28325
    jmp     l_f2_exit              
    call    ReadInt                 #  11:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $3745, %eax             #  15:     if     3745 < 92555 goto 13_if_true
    movl    $92555, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  16:     goto   14_if_false
l_f2_13_if_true:
    movl    $66754, %eax            #  18:     return 66754
    jmp     l_f2_exit              
l_f2_18_while_cond:
    jmp     l_f2_17                 #  20:     goto   17
    jmp     l_f2_18_while_cond      #  21:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_12                 #  23:     goto   12
l_f2_14_if_false:
l_f2_12:
l_f2_21_while_cond:
    jmp     l_f2_20                 #  27:     goto   20
    movl    $0, %eax                #  28:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    call    ReadInt                 #  29:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
l_f2_27_while_cond:
    jmp     l_f2_26                 #  31:     goto   26
    jmp     l_f2_27_while_cond      #  32:     goto   27_while_cond
l_f2_26:
    movl    $45165, %eax            #  34:     return 45165
    jmp     l_f2_exit              
    movl    $16047, %eax            #  35:     return 16047
    jmp     l_f2_exit              
    movl    $19982, %eax            #  36:     return 19982
    jmp     l_f2_exit              
    jmp     l_f2_21_while_cond      #  37:     goto   21_while_cond
l_f2_20:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, v0                
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   3:     goto   4_while_body
    jmp     l_test_4_while_body     #   4:     goto   4_while_body
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond
l_test_2:
    call    dummyCHARfunc           #   9:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  10:     assign v0 <- 97
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
