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
    #    -13(%ebp)   1  [ $t13      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 5 of <array 7 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 8 of <array 3 of <array 2 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t13 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t13
    jmp     l_f0_exit              
    movl    $97, %eax               #   2:     if     97 >= 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    call    ReadInt                 #   5:     call   t14 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $35027, %eax            #   9:     div    t15 <- 35027, 39645
    movl    $39645, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v4 <- t15
    movl    %eax, -28(%ebp)        

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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t17      <bool> %ebp-29 ]

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
    call    dummyINTfunc            #   0:     call   t13 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t14 <- t13, 57360
    movl    $57360, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t15 <- t14, 39102
    movl    $39102, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t16 <- t15, 34670
    movl    $34670, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     param  0 <- t16
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_3_if_false         #   6:     goto   3_if_false
    jmp     l_f1_6_if_false         #   7:     goto   6_if_false
    movl    $10230, %eax            #   8:     return 10230
    jmp     l_f1_exit              
    jmp     l_f1_4                  #   9:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_9_while_cond:
    call    dummyBOOLfunc           #  16:     call   t17 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  17:     if     t17 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10_while_body     
    jmp     l_f1_8                  #  18:     goto   8
l_f1_10_while_body:
    jmp     l_f1_13_if_false        #  20:     goto   13_if_false
    jmp     l_f1_11                 #  21:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_9_while_cond       #  24:     goto   9_while_cond
l_f1_8:

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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t17      <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 2 of <array 4 of <array 10 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -30(%ebp)   1  [ $v2       <bool> %ebp-30 ]

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
l_f2_1_while_cond:
    movl    $80301, %eax            #   1:     if     80301 = 91385 goto 2_while_body
    movl    $91385, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
l_f2_0:
l_f2_7_while_cond:
    movl    $70026, %eax            #   7:     add    t13 <- 70026, 65868
    movl    $65868, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     sub    t14 <- t13, 72090
    movl    $72090, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   9:     call   t15 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t16 <- t14, t15
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     if     t16 < 40557 goto 8_while_body
    movl    $40557, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #  12:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  14:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_15                 #  16:     goto   15
    jmp     l_f2_11                 #  17:     goto   11
l_f2_15:
    jmp     l_f2_11                 #  19:     goto   11
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $1, %eax                #  22:     assign t17 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_13                 #  23:     goto   13
l_f2_12:
    movl    $0, %eax                #  25:     assign t17 <- 0
    movb    %al, -29(%ebp)         
l_f2_13:
    movzbl  -29(%ebp), %eax         #  27:     assign v2 <- t17
    movb    %al, -30(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 10 of <array 8 of <array 3 of <array 2 of <array 1 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 1 of <array 7 of <array 5 of <array 7 of <array 3 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t12      <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t2       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 8 of <array 3 of <array 2 of <array 1 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t5       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t6       <ptr(4) to <array 1 of <array 7 of <array 5 of <array 7 of <array 3 of <bool>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t7       <char> %ebp-49 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <int> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $0, %eax                #   0:     if     0 # 0 goto 4_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_4_if_true       
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   3:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $97, %eax               #   6:     if     97 # 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_8_if_true       
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   9:     goto   7
l_test_9_if_false:
l_test_7:
l_test_12_while_cond:
    movl    $95614, %eax            #  13:     if     95614 < 36740 goto 13_while_body
    movl    $36740, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  16:     goto   12_while_cond
l_test_11:
    call    dummyCHARfunc           #  18:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $32402, %eax            #  19:     if     32402 # 21409 goto 17_if_true
    movl    $21409, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  20:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  22:     goto   16
l_test_18_if_false:
l_test_16:
    leal    _str_1, %eax            #  25:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  27:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_0                #  28:     goto   0
l_test_0:
    call    dummyCHARfunc           #  30:     call   t2 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    jmp     l_test_24_if_false      #  31:     goto   24_if_false
    movl    $97, %eax               #  32:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_22               #  33:     goto   22
l_test_24_if_false:
l_test_22:
    leal    v2, %eax                #  36:     &()    t3 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     param  2 <- t3
    pushl   %eax                   
    movl    $75630, %eax            #  38:     add    t4 <- 75630, 51358
    movl    $51358, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $80015, %eax            #  39:     if     80015 < t4 goto 27
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_27              
    jmp     l_test_28               #  40:     goto   28
l_test_27:
    movl    $1, %eax                #  42:     assign t5 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_29               #  43:     goto   29
l_test_28:
    movl    $0, %eax                #  45:     assign t5 <- 0
    movb    %al, -41(%ebp)         
l_test_29:
    movzbl  -41(%ebp), %eax         #  47:     param  1 <- t5
    pushl   %eax                   
    leal    v1, %eax                #  48:     &()    t6 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  49:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  50:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -49(%ebp)         
    movl    $90206, %eax            #  51:     add    t8 <- 90206, 48564
    movl    $48564, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  52:     sub    t9 <- t8, 3623
    movl    $3623, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  53:     assign v3 <- t9
    movl    %eax, v3               
l_test_33_while_cond:
    jmp     l_test_32               #  55:     goto   32
    leal    v2, %eax                #  56:     &()    t10 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  57:     param  2 <- t10
    pushl   %eax                   
    movl    $1, %eax                #  58:     param  1 <- 1
    pushl   %eax                   
    leal    v1, %eax                #  59:     &()    t11 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  60:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  61:     call   t12 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movl    $94353, %eax            #  62:     if     94353 = 78279 goto 38_if_true
    movl    $78279, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_38_if_true      
    jmp     l_test_39_if_false      #  63:     goto   39_if_false
l_test_38_if_true:
    jmp     l_test_37               #  65:     goto   37
l_test_39_if_false:
l_test_37:
    jmp     l_test_33_while_cond    #  68:     goto   33_while_cond
l_test_32:

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <array 1 of <array 7 of <array 5 of <array 7 of <array 3 of <bool>>>>>>
    .long    5
    .long    1
    .long    7
    .long    5
    .long    7
    .long    3
    .skip  735
    .align   4
v2:                                 # <array 10 of <array 8 of <array 3 of <array 2 of <array 1 of <bool>>>>>>
    .long    5
    .long   10
    .long    8
    .long    3
    .long    2
    .long    1
    .skip  480
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
