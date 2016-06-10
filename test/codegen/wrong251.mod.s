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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 5 of <array 7 of <array 3 of <array 10 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_1                  #   2:     goto   1
    movl    $1, %eax                #   3:     if     1 # 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_5                 
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #  11:     return t6
    jmp     l_f0_exit              
    call    ReadInt                 #  12:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_2_while_cond       #  13:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_11                 #  15:     goto   11
    jmp     l_f0_11                 #  16:     goto   11
    jmp     l_f0_12                 #  17:     goto   12
    jmp     l_f0_12                 #  18:     goto   12
l_f0_11:
    movl    $1, %eax                #  20:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_13                 #  21:     goto   13
l_f0_12:
    movl    $0, %eax                #  23:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f0_13:
    movzbl  -21(%ebp), %eax         #  25:     return t8
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -37(%ebp)   1  [ $v2       <bool> %ebp-37 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     mul    t6 <- t5, 87302
    movl    $87302, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     div    t7 <- t6, 65715
    movl    $65715, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $20097, %eax            #   3:     if     20097 = t7 goto 1_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #   9:     if     98 > 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
l_f1_5:
    movl    $1, %eax                #  11:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f1_7                  #  12:     goto   7
    movl    $0, %eax                #  13:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f1_7:
    movzbl  -29(%ebp), %eax         #  15:     assign v2 <- t8
    movb    %al, -37(%ebp)         
    call    ReadInt                 #  16:     call   t9 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $78979, %eax            #  17:     mul    t10 <- 78979, t9
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 1 of <array 8 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     assign v2 <- 97
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   2:     if     98 < 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   6:     goto   7_while_cond
l_f2_10_while_cond:
    movl    $98, %eax               #   8:     if     98 = 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_11_while_body     
    jmp     l_f2_9                  #   9:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_2                  #  13:     goto   2
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    movl    $80438, %eax            #   2:     if     80438 >= 53378 goto 2_if_true
    movl    $53378, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    movl    $97, %eax               #   5:     assign v0 <- 97
    movb    %al, v0                
    call    ReadInt                 #   6:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   8:     goto   8_while_cond
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $56314, %eax            #  10:     if     56314 < 20049 goto 12_if_true
    movl    $20049, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_12_if_true      
    jmp     l_test_13_if_false      #  11:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  13:     goto   11
l_test_13_if_false:
l_test_11:
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  17:     goto   16_while_cond
l_test_19_while_cond:
    movl    $0, %eax                #  19:     if     0 # 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_20_while_body   
    jmp     l_test_18               #  20:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  22:     goto   19_while_cond
l_test_18:
    jmp     l_test_exit            
    jmp     l_test_1                #  25:     goto   1
l_test_3_if_false:
l_test_1:
l_test_24_while_cond:
    movl    $1, %eax                #  29:     if     1 # 0 goto 25_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_25_while_body   
    jmp     l_test_23               #  30:     goto   23
l_test_25_while_body:
l_test_28_while_cond:
    jmp     l_test_27               #  33:     goto   27
    jmp     l_test_28_while_cond    #  34:     goto   28_while_cond
l_test_27:
    jmp     l_test_32_if_false      #  36:     goto   32_if_false
    jmp     l_test_30               #  37:     goto   30
l_test_32_if_false:
l_test_30:
    call    dummyINTfunc            #  40:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_test_24_while_cond    #  41:     goto   24_while_cond
l_test_23:
    jmp     l_test_exit            
    jmp     l_test_39               #  44:     goto   39
    jmp     l_test_39               #  45:     goto   39
    jmp     l_test_39               #  46:     goto   39
    jmp     l_test_39               #  47:     goto   39
    jmp     l_test_36               #  48:     goto   36
l_test_39:
    jmp     l_test_37               #  50:     goto   37
l_test_36:
    movl    $1, %eax                #  52:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_38               #  53:     goto   38
l_test_37:
    movl    $0, %eax                #  55:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_38:
    movzbl  -29(%ebp), %eax         #  57:     assign v1 <- t4
    movb    %al, v1                
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
