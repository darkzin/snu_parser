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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -54(%ebp)   1  [ $t20      <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 4 of <array 1 of <array 6 of <array 4 of <char>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v1       <char> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    jmp     l_f0_7_if_false         #   1:     goto   7_if_false
    jmp     l_f0_5                  #   2:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #   5:     goto   0
l_f0_0:
    movl    $97, %eax               #   7:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #   9:     call   t3 <- ReadInt
    movl    %eax, -60(%ebp)        
    movl    $72272, %eax            #  10:     if     72272 <= t3 goto 10_if_true
    movl    -60(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
l_f0_10_if_true:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $18952, %eax            #  16:     mul    t5 <- 18952, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  17:     add    t6 <- t5, 39935
    movl    $39935, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  21:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  22:     add    t9 <- t8, 61528
    movl    $61528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  25:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  26:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     add    t12 <- t11, 28506
    movl    $28506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  31:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t15 <- t14, 82914
    movl    $82914, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  35:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  36:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $97, %eax               #  38:     assign @t19 <- 97
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97, %eax               #  39:     if     97 < 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  40:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  42:     goto   14
l_f0_16_if_false:
l_f0_14:
    call    dummyBOOLfunc           #  45:     call   t20 <- dummyBOOLfunc
    movb    %al, -54(%ebp)         
    movl    $100, %eax              #  46:     if     100 < 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  47:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  49:     goto   19
l_f0_21_if_false:
l_f0_19:
    jmp     l_f0_9                  #  52:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 9 of <array 2 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 2 of <array 3 of <array 1 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    movl    $80276, %eax            #   2:     if     80276 >= 61049 goto 3_while_body
    movl    $61049, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_3_while_body       #   3:     goto   3_while_body
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    leal    _str_1, %eax            #   8:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 1 of <array 8 of <array 9 of <array 2 of <array 6 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <ptr(4) to <array 2 of <array 2 of <array 3 of <array 1 of <array 1 of <bool>>>>>>> %ebp-56 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 10 of <array 10 of <array 10 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 3 of <array 2 of <array 4 of <int>>>>>>> %ebp+12 ]
    #   -944(%ebp)  888  [ $v2       <array 1 of <array 8 of <array 9 of <array 2 of <array 6 of <char>>>>>> %ebp-944 ]
    #   -980(%ebp)  36  [ $v3       <array 2 of <array 2 of <array 3 of <array 1 of <array 1 of <bool>>>>>> %ebp-980 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $968, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $242, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-944(%ebp)           # local array 'v2': 5 dimensions
    movl    $1,-940(%ebp)           #   dimension 1: 1 elements
    movl    $8,-936(%ebp)           #   dimension 2: 8 elements
    movl    $9,-932(%ebp)           #   dimension 3: 9 elements
    movl    $2,-928(%ebp)           #   dimension 4: 2 elements
    movl    $6,-924(%ebp)           #   dimension 5: 6 elements
    movl    $5,-980(%ebp)           # local array 'v3': 5 dimensions
    movl    $2,-976(%ebp)           #   dimension 1: 2 elements
    movl    $2,-972(%ebp)           #   dimension 2: 2 elements
    movl    $3,-968(%ebp)           #   dimension 3: 3 elements
    movl    $1,-964(%ebp)           #   dimension 4: 1 elements
    movl    $1,-960(%ebp)           #   dimension 5: 1 elements

    # function body
    movl    $73847, %eax            #   0:     add    t2 <- 73847, 95729
    movl    $95729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     sub    t3 <- t2, 62897
    movl    $62897, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     add    t4 <- t3, 56636
    movl    $56636, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     sub    t5 <- t4, 64178
    movl    $64178, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $62346, %eax            #   6:     mul    t6 <- 62346, 69352
    movl    $69352, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   7:     mul    t7 <- t6, 22174
    movl    $22174, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     sub    t8 <- t7, 60318
    movl    $60318, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   9:     return t8
    jmp     l_f2_exit              
    movl    $100, %eax              #  10:     param  3 <- 100
    pushl   %eax                   
    leal    -980(%ebp), %eax        #  11:     &()    t9 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  12:     param  2 <- t9
    pushl   %eax                   
    movl    $59392, %eax            #  13:     if     59392 >= 36561 goto 3
    movl    $36561, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #  14:     goto   4
l_f2_3:
    movl    $1, %eax                #  16:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_5                  #  17:     goto   5
l_f2_4:
    movl    $0, %eax                #  19:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_5:
    movzbl  -13(%ebp), %eax         #  21:     param  1 <- t10
    pushl   %eax                   
    leal    -944(%ebp), %eax        #  22:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  24:     call   t12 <- f1
    addl    $16, %esp              
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $968, %esp              # remove locals
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 # 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $59479, %eax            #   8:     if     59479 < 95551 goto 7_if_true
    movl    $95551, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    movl    $98, %eax               #  12:     if     98 <= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_12_while_body   
    jmp     l_test_10               #  13:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  15:     goto   11_while_cond
l_test_10:
    movl    $97, %eax               #  17:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_6                #  18:     goto   6
l_test_8_if_false:
l_test_6:
    call    dummyBOOLfunc           #  21:     call   t1 <- dummyBOOLfunc
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
