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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 37 of <array 12 of <array 95 of <array 51 of <char>>>>>>> %ebp+12 ]
    #    -53(%ebp)   1  [ $v2       <bool> %ebp-53 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $69935, %eax            #   0:     mul    t3 <- 69935, 93229
    movl    $93229, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     mul    t4 <- t3, 85526
    movl    $85526, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     mul    t5 <- t4, 94346
    movl    $94346, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     mul    t6 <- t5, 26111
    movl    $26111, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t7 <- t6, 65483
    movl    $65483, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     sub    t8 <- t7, 38957
    movl    $38957, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   6:     add    t9 <- t8, 45293
    movl    $45293, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   7:     add    t10 <- t9, 25667
    movl    $25667, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     if     t10 > 28802 goto 1_if_true
    movl    $28802, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   9:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $1, %eax                #  14:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_7                  #  15:     goto   7
    movl    $0, %eax                #  16:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_7:
    movzbl  -17(%ebp), %eax         #  18:     assign v2 <- t11
    movb    %al, -53(%ebp)         
l_f0_10_while_cond:
    movl    $100, %eax              #  20:     if     100 = 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  21:     goto   9
l_f0_11_while_body:
    leal    _str_1, %eax            #  23:     &()    t12 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #  25:     call   WriteStr
    addl    $4, %esp               
l_f0_15_while_cond:
    movl    $54410, %eax            #  27:     if     54410 <= 5640 goto 16_while_body
    movl    $5640, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_16_while_body     
    jmp     l_f0_14                 #  28:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  30:     goto   15_while_cond
l_f0_14:
l_f0_19_while_cond:
    jmp     l_f0_18                 #  33:     goto   18
    jmp     l_f0_19_while_cond      #  34:     goto   19_while_cond
l_f0_18:
    movl    $0, %eax                #  36:     assign v2 <- 0
    movb    %al, -53(%ebp)         
    jmp     l_f0_10_while_cond      #  37:     goto   10_while_cond
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 25 of <array 74 of <array 96 of <array 20 of <array 48 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 87 of <array 5 of <array 45 of <array 89 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 47 of <array 32 of <array 8 of <array 1 of <array 55 of <int>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v4 <- t3
    movb    %al, -15(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #   3:     goto   1
l_f1_5_while_cond:
    jmp     l_f1_4                  #   5:     goto   4
    movl    $0, %eax                #   6:     if     0 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8                 
    jmp     l_f1_9                  #   7:     goto   9
l_f1_8:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_10                 #  10:     goto   10
l_f1_9:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_10:
    movzbl  -14(%ebp), %eax         #  14:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_5_while_cond       #  15:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_2_while_cond       #  17:     goto   2_while_cond
l_f1_1:
l_f1_13_while_cond:
    jmp     l_f1_15                 #  20:     goto   15
    jmp     l_f1_15                 #  21:     goto   15
    jmp     l_f1_14_while_body      #  22:     goto   14_while_body
l_f1_15:
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  25:     goto   13_while_cond

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 47 of <array 32 of <array 8 of <array 1 of <array 55 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 87 of <array 5 of <array 45 of <array 89 of <array 9 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 25 of <array 74 of <array 96 of <array 20 of <array 48 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #   -681984072(%ebp)  681984024  [ $v0       <array 25 of <array 74 of <array 96 of <array 20 of <array 48 of <int>>>>>> %ebp-681984072 ]
    #   -697663672(%ebp)  15679599  [ $v1       <array 87 of <array 5 of <array 45 of <array 89 of <array 9 of <bool>>>>>> %ebp-697663672 ]
    #   -700310736(%ebp)  2647064  [ $v2       <array 47 of <array 32 of <array 8 of <array 1 of <array 55 of <int>>>>>> %ebp-700310736 ]
    #   -700310737(%ebp)   1  [ $v3       <bool> %ebp-700310737 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $700310728, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $175077682, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-681984072(%ebp)     # local array 'v0': 5 dimensions
    movl    $25,-681984068(%ebp)    #   dimension 1: 25 elements
    movl    $74,-681984064(%ebp)    #   dimension 2: 74 elements
    movl    $96,-681984060(%ebp)    #   dimension 3: 96 elements
    movl    $20,-681984056(%ebp)    #   dimension 4: 20 elements
    movl    $48,-681984052(%ebp)    #   dimension 5: 48 elements
    movl    $5,-697663672(%ebp)     # local array 'v1': 5 dimensions
    movl    $87,-697663668(%ebp)    #   dimension 1: 87 elements
    movl    $5,-697663664(%ebp)     #   dimension 2: 5 elements
    movl    $45,-697663660(%ebp)    #   dimension 3: 45 elements
    movl    $89,-697663656(%ebp)    #   dimension 4: 89 elements
    movl    $9,-697663652(%ebp)     #   dimension 5: 9 elements
    movl    $5,-700310736(%ebp)     # local array 'v2': 5 dimensions
    movl    $47,-700310732(%ebp)    #   dimension 1: 47 elements
    movl    $32,-700310728(%ebp)    #   dimension 2: 32 elements
    movl    $8,-700310724(%ebp)     #   dimension 3: 8 elements
    movl    $1,-700310720(%ebp)     #   dimension 4: 1 elements
    movl    $55,-700310716(%ebp)    #   dimension 5: 55 elements

    # function body
    leal    -700310736(%ebp), %eax  #   0:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  3 <- t3
    pushl   %eax                   
    leal    -697663672(%ebp), %eax  #   2:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     param  2 <- t4
    pushl   %eax                   
    movl    $75265, %eax            #   4:     param  1 <- 75265
    pushl   %eax                   
    leal    -681984072(%ebp), %eax  #   5:     &()    t5 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   7:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
l_f2_2_while_cond:
    movl    $80711, %eax            #   9:     mul    t7 <- 80711, 60239
    movl    $60239, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     if     t7 <= 97152 goto 3_while_body
    movl    $97152, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #  11:     goto   1
l_f2_3_while_body:
    call    dummyCHARfunc           #  13:     call   t8 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movl    $100, %eax              #  14:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  15:     goto   2_while_cond
l_f2_1:
    movl    $88631, %eax            #  17:     div    t9 <- 88631, 59088
    movl    $59088, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  18:     div    t10 <- t9, 93812
    movl    $93812, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     if     t10 = 77815 goto 8
    movl    $77815, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_8                 
    jmp     l_f2_9                  #  20:     goto   9
l_f2_8:
    movl    $1, %eax                #  22:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_10                 #  23:     goto   10
l_f2_9:
    movl    $0, %eax                #  25:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_10:
    movzbl  -17(%ebp), %eax         #  27:     assign v3 <- t11
    movb    %al, -700310737(%ebp)  

l_f2_exit:
    # epilogue
    addl    $700310728, %esp        # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $4408, %eax             #   5:     if     4408 >= 99822 goto 6_if_true
    movl    $99822, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
l_test_10_while_cond:
    jmp     l_test_9                #  14:     goto   9
    jmp     l_test_exit            
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
    call    dummyINTfunc            #  18:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_test_16_while_cond:
    jmp     l_test_15               #  20:     goto   15
    movl    $98, %eax               #  21:     if     98 = 98 goto 19
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_19              
    jmp     l_test_20               #  22:     goto   20
l_test_19:
    movl    $1, %eax                #  24:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_21               #  25:     goto   21
l_test_20:
    movl    $0, %eax                #  27:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_21:
    movzbl  -21(%ebp), %eax         #  29:     assign v0 <- t2
    movb    %al, v0                
l_test_24_while_cond:
    movl    $1, %eax                #  31:     if     1 # 1 goto 25_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_25_while_body   
    jmp     l_test_23               #  32:     goto   23
l_test_25_while_body:
    movl    $99, %eax               #  34:     if     99 < 100 goto 28_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_28_if_true      
    jmp     l_test_29_if_false      #  35:     goto   29_if_false
l_test_28_if_true:
    jmp     l_test_27               #  37:     goto   27
l_test_29_if_false:
l_test_27:
    movl    $1, %eax                #  40:     if     1 # 0 goto 32_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_32_if_true      
    jmp     l_test_33_if_false      #  41:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  43:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_24_while_cond    #  46:     goto   24_while_cond
l_test_23:
    jmp     l_test_16_while_cond    #  48:     goto   16_while_cond
l_test_15:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
