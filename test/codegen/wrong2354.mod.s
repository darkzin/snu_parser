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
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 53 of <array 4 of <array 44 of <array 79 of <array 52 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     param  0 <- t9
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   3:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_3_while_cond:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   6:     goto   5
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_3_while_cond       #   9:     goto   3_while_cond

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 53 of <array 4 of <array 44 of <array 79 of <array 52 of <int>>>>>>> %ebp-28 ]
    #   -153277748(%ebp)  153277720  [ $v0       <array 53 of <array 4 of <array 44 of <array 79 of <array 52 of <int>>>>>> %ebp-153277748 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $153277736, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $38319434, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-153277748(%ebp)     # local array 'v0': 5 dimensions
    movl    $53,-153277744(%ebp)    #   dimension 1: 53 elements
    movl    $4,-153277740(%ebp)     #   dimension 2: 4 elements
    movl    $44,-153277736(%ebp)    #   dimension 3: 44 elements
    movl    $79,-153277732(%ebp)    #   dimension 4: 79 elements
    movl    $52,-153277728(%ebp)    #   dimension 5: 52 elements

    # function body
    leal    -153277748(%ebp), %eax  #   0:     &()    t9 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #   2:     call   t10 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t10 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_1_if_true          #   4:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_0                  #   6:     goto   0
l_f1_0:
    jmp     l_f1_7_if_false         #   8:     goto   7_if_false
    movl    $100, %eax              #   9:     return 100
    jmp     l_f1_exit              
    call    dummyINTfunc            #  10:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_5                  #  11:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyBOOLfunc           #  14:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f1_exit:
    # epilogue
    addl    $153277736, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -13(%ebp)   1  [ $v2       <bool> %ebp-13 ]

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
    movl    $62612, %eax            #   0:     if     62612 = 27229 goto 1_if_true
    movl    $27229, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $70340, %eax            #   3:     if     70340 > 96984 goto 5_if_true
    movl    $96984, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_8                  #   9:     goto   8
l_f2_8:
l_f2_12_while_cond:
    movl    $57933, %eax            #  12:     if     57933 >= 59618 goto 13_while_body
    movl    $59618, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_13_while_body     
    jmp     l_f2_11                 #  13:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  15:     goto   12_while_cond
l_f2_11:
    jmp     l_f2_0                  #  17:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_16_while_cond:
    movl    $1624, %eax             #  21:     assign v0 <- 1624
    movl    %eax, 8(%ebp)          
    jmp     l_f2_16_while_cond      #  22:     goto   16_while_cond
    jmp     l_f2_21_if_false        #  23:     goto   21_if_false
    jmp     l_f2_24_if_false        #  24:     goto   24_if_false
    jmp     l_f2_22                 #  25:     goto   22
l_f2_24_if_false:
l_f2_22:
    movl    $98, %eax               #  28:     return 98
    jmp     l_f2_exit              
    movl    $98, %eax               #  29:     return 98
    jmp     l_f2_exit              
    movl    $0, %eax                #  30:     assign v2 <- 0
    movb    %al, -13(%ebp)         
    jmp     l_f2_19                 #  31:     goto   19
l_f2_21_if_false:
l_f2_19:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <char> %ebp-37 ]

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
l_test_1_while_cond:
    jmp     l_test_4                #   1:     goto   4
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_4:
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
    movl    $97, %eax               #   6:     if     97 < 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
l_test_8_if_true:
    leal    _str_1, %eax            #   9:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_7                #  12:     goto   7
l_test_9_if_false:
l_test_7:
l_test_13_while_cond:
    movl    $98, %eax               #  16:     if     98 < 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    jmp     l_test_exit            
    jmp     l_test_13_while_cond    #  20:     goto   13_while_cond
l_test_12:
    call    dummyBOOLfunc           #  22:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_test_19_while_cond:
    call    dummyCHARfunc           #  24:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $65020, %eax            #  25:     if     65020 >= 89778 goto 23
    movl    $89778, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_23              
    jmp     l_test_24               #  26:     goto   24
l_test_23:
    movl    $1, %eax                #  28:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_25               #  29:     goto   25
l_test_24:
    movl    $0, %eax                #  31:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_25:
    movzbl  -19(%ebp), %eax         #  33:     assign v0 <- t3
    movb    %al, v0                
    jmp     l_test_19_while_cond    #  34:     goto   19_while_cond
    movl    $99, %eax               #  35:     param  1 <- 99
    pushl   %eax                   
    movl    $64357, %eax            #  36:     div    t4 <- 64357, 25505
    movl    $25505, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     mul    t5 <- t4, 90897
    movl    $90897, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     mul    t6 <- t5, 78135
    movl    $78135, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     sub    t7 <- t6, 12612
    movl    $12612, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  40:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  41:     call   t8 <- f2
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  42:     assign v1 <- t8
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
