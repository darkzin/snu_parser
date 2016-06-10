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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -22(%ebp)   1  [ $v3       <char> %ebp-22 ]

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
    movl    $100, %eax              #   0:     if     100 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $100, %eax              #   3:     assign v3 <- 100
    movb    %al, -22(%ebp)         
    call    dummyCHARfunc           #   4:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #   5:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $64069, %eax            #   9:     if     64069 <= 48042 goto 8
    movl    $48042, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8                 
    jmp     l_f0_9                  #  10:     goto   9
l_f0_8:
    movl    $1, %eax                #  12:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_10                 #  13:     goto   10
l_f0_9:
    movl    $0, %eax                #  15:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f0_10:
    movzbl  -21(%ebp), %eax         #  17:     assign v1 <- t9
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #  18:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  19:     assign v3 <- t10
    movb    %al, -22(%ebp)         

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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 54 of <array 66 of <array 34 of <array 78 of <array 64 of <char>>>>>>> %ebp+12 ]
    #    -33(%ebp)   1  [ $v3       <bool> %ebp-33 ]

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
    movl    $97, %eax               #   0:     if     97 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_5_while_cond:
    movl    $34759, %eax            #   7:     div    t7 <- 34759, 53406
    movl    $53406, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     div    t8 <- t7, 4178
    movl    $4178, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $81335, %eax            #   9:     add    t9 <- 81335, 89805
    movl    $89805, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     sub    t10 <- t9, 92419
    movl    $92419, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -28(%ebp), %eax         #  11:     if     t8 < t10 goto 6_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #  12:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  14:     goto   5_while_cond
l_f1_4:
    movl    $63274, %eax            #  16:     if     63274 >= 90378 goto 13
    movl    $90378, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_13                
    jmp     l_f1_10                 #  17:     goto   10
l_f1_13:
    jmp     l_f1_10                 #  19:     goto   10
    jmp     l_f1_10                 #  20:     goto   10
    movl    $1, %eax                #  21:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_11                 #  22:     goto   11
l_f1_10:
    movl    $0, %eax                #  24:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_11:
    movzbl  -17(%ebp), %eax         #  26:     assign v3 <- t11
    movb    %al, -33(%ebp)         

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 54 of <array 66 of <array 34 of <array 78 of <array 64 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #   -604910648(%ebp)  604910616  [ $v1       <array 54 of <array 66 of <array 34 of <array 78 of <array 64 of <char>>>>>> %ebp-604910648 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $604910636, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $151227659, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-604910648(%ebp)     # local array 'v1': 5 dimensions
    movl    $54,-604910644(%ebp)    #   dimension 1: 54 elements
    movl    $66,-604910640(%ebp)    #   dimension 2: 66 elements
    movl    $34,-604910636(%ebp)    #   dimension 3: 34 elements
    movl    $78,-604910632(%ebp)    #   dimension 4: 78 elements
    movl    $64,-604910628(%ebp)    #   dimension 5: 64 elements

    # function body
    leal    _str_1, %eax            #   0:     &()    t7 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $73196, %eax            #   3:     if     73196 # 81926 goto 6_if_true
    movl    $81926, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   4:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_1                  #   9:     goto   1
l_f2_1:
    leal    -604910648(%ebp), %eax  #  11:     &()    t8 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  1 <- t8
    pushl   %eax                   
    movl    $54361, %eax            #  13:     sub    t9 <- 54361, 68413
    movl    $68413, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t10 <- t9, 23993
    movl    $23993, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  16:     call   t11 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  17:     if     t11 = 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  18:     goto   11_if_false
l_f2_10_if_true:
    call    WriteLn                 #  20:     call   WriteLn
    jmp     l_f2_9                  #  21:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $604910636, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    movl    $40006, %eax            #   0:     if     40006 >= 25946 goto 1_if_true
    movl    $25946, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_6_if_true        #   7:     goto   6_if_true
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
l_test_6_if_true:
l_test_10_while_cond:
    movl    $15941, %eax            #  11:     if     15941 = 83122 goto 11_while_body
    movl    $83122, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  12:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
l_test_14_while_cond:
    jmp     l_test_13               #  17:     goto   13
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_19_if_false      #  21:     goto   19_if_false
    jmp     l_test_17               #  22:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_5                #  25:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    movl    $19281, %eax            #  29:     sub    t0 <- 19281, 97299
    movl    $97299, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     add    t1 <- t0, 20632
    movl    $20632, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     add    t2 <- t1, 41993
    movl    $41993, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     assign v1 <- t2
    movl    %eax, v1               
    movl    $64538, %eax            #  33:     div    t3 <- 64538, 17384
    movl    $17384, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     div    t4 <- t3, 90414
    movl    $90414, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     if     t4 < 96804 goto 23_if_true
    movl    $96804, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_23_if_true      
    jmp     l_test_24_if_false      #  36:     goto   24_if_false
l_test_23_if_true:
    movl    $93899, %eax            #  38:     assign v1 <- 93899
    movl    %eax, v1               
    call    dummyINTfunc            #  39:     call   t5 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    $20117, %eax            #  40:     if     20117 = 25569 goto 29
    movl    $25569, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_29              
    jmp     l_test_30               #  41:     goto   30
l_test_29:
    movl    $1, %eax                #  43:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_31               #  44:     goto   31
l_test_30:
    movl    $0, %eax                #  46:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_31:
    movzbl  -37(%ebp), %eax         #  48:     assign v0 <- t6
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_22               #  50:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
