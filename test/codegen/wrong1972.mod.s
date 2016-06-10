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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 66 of <array 22 of <array 15 of <array 7 of <array 95 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   1:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   1:     if     98 < 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
l_f1_2_if_true:
    jmp     l_f1_1                  #   3:     goto   1
l_f1_1:
    call    dummyCHARfunc           #   5:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   6:     return t6
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <bool> %ebp-17 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $91926, %eax            #   1:     if     91926 # 73583 goto 1
    movl    $73583, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_8                  #  10:     goto   8
    jmp     l_f2_8                  #  11:     goto   8
    jmp     l_f2_8                  #  12:     goto   8
    jmp     l_f2_8                  #  13:     goto   8
    jmp     l_f2_9                  #  14:     goto   9
l_f2_8:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_10                 #  17:     goto   10
l_f2_9:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_10:
    movzbl  -14(%ebp), %eax         #  21:     return t6
    jmp     l_f2_exit              
l_f2_17_while_cond:
    movl    $1, %eax                #  23:     if     1 # 0 goto 18_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_18_while_body     
    jmp     l_f2_16                 #  24:     goto   16
l_f2_18_while_body:
    movl    $69883, %eax            #  26:     if     69883 # 71295 goto 21
    movl    $71295, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_21                
    jmp     l_f2_22                 #  27:     goto   22
l_f2_21:
    movl    $1, %eax                #  29:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_23                 #  30:     goto   23
l_f2_22:
    movl    $0, %eax                #  32:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_23:
    movzbl  -15(%ebp), %eax         #  34:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_25                 #  35:     goto   25
l_f2_25:
    movl    $0, %eax                #  37:     assign v0 <- 0
    movb    %al, -17(%ebp)         
    movl    $1, %eax                #  38:     return 1
    jmp     l_f2_exit              
    movl    $7422, %eax             #  39:     if     7422 < 13928 goto 31_if_true
    movl    $13928, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_31_if_true        
    jmp     l_f2_32_if_false        #  40:     goto   32_if_false
l_f2_31_if_true:
    jmp     l_f2_30                 #  42:     goto   30
l_f2_32_if_false:
l_f2_30:
    call    dummyCHARfunc           #  45:     call   t8 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $19819, %eax            #  46:     if     19819 >= 37392 goto 36_if_true
    movl    $37392, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_36_if_true        
    jmp     l_f2_37_if_false        #  47:     goto   37_if_false
l_f2_36_if_true:
    jmp     l_f2_35                 #  49:     goto   35
l_f2_37_if_false:
l_f2_35:
l_f2_40_while_cond:
    movl    $91107, %eax            #  53:     if     91107 <= 99196 goto 41_while_body
    movl    $99196, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_41_while_body     
    jmp     l_f2_39                 #  54:     goto   39
l_f2_41_while_body:
    jmp     l_f2_40_while_cond      #  56:     goto   40_while_cond
l_f2_39:
    jmp     l_f2_17_while_cond      #  58:     goto   17_while_cond
l_f2_16:

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-32 ]

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
    jmp     l_test_0                #   0:     goto   0
l_test_0:
    call    WriteLn                 #   2:     call   WriteLn
l_test_7_while_cond:
    jmp     l_test_8_while_body     #   4:     goto   8_while_body
    call    dummyBOOLfunc           #   5:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t0 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   9:     goto   7_while_cond
l_test_6:
l_test_11_while_cond:
    movl    $58454, %eax            #  12:     div    t1 <- 58454, 7954
    movl    $7954, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     mul    t2 <- t1, 87479
    movl    $87479, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #  14:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t2 <= t3 goto 12_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_12_while_body   
    jmp     l_test_10               #  16:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  18:     goto   11_while_cond
l_test_10:
    leal    _str_1, %eax            #  20:     &()    t4 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  22:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
