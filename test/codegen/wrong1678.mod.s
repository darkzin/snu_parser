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
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    movl    $96996, %eax            #   0:     add    t1 <- 96996, 92172
    movl    $92172, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 22506
    movl    $22506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $91665, %eax            #   2:     div    t3 <- 91665, 36487
    movl    $36487, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t4 <- t2, t3
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t4
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   5:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movl    $51862, %eax            #   6:     if     51862 >= 44196 goto 3_if_true
    movl    $44196, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   7:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_2                  #   9:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 76 of <array 48 of <array 47 of <array 97 of <char>>>>>>> %ebp+12 ]
    #    -89(%ebp)   1  [ $v2       <char> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $50036, %eax            #   5:     mul    t3 <- 50036, t2
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $4926, %eax             #   6:     sub    t4 <- 4926, 36289
    movl    $36289, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   7:     sub    t5 <- t4, 24928
    movl    $24928, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #   8:     add    t6 <- t3, t5
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  12:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  13:     add    t9 <- t8, 61066
    movl    $61066, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -88(%ebp), %eax         #  17:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     add    t12 <- t11, 246
    movl    $246, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t14 <- t12, t13
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     add    t15 <- t14, 22796
    movl    $22796, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  26:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  27:     add    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  28:     add    t19 <- v1, t18
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movzbl  -13(%ebp), %eax         #  29:     assign @t19 <- t1
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $62372, %eax            #  30:     assign v0 <- 62372
    movl    %eax, 8(%ebp)          

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $62145, %eax            #   1:     if     62145 >= 32239 goto 2_while_body
    movl    $32239, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $100, %eax              #   4:     assign v1 <- 100
    movb    %al, 12(%ebp)          
    movl    $92810, %eax            #   5:     if     92810 > 41548 goto 6
    movl    $41548, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6                 
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  13:     return t1
    jmp     l_f2_exit              
    movl    $36531, %eax            #  14:     if     36531 = 99568 goto 11
    movl    $99568, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_12                 #  15:     goto   12
l_f2_11:
    movl    $1, %eax                #  17:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_13                 #  18:     goto   13
l_f2_12:
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_13:
    movzbl  -14(%ebp), %eax         #  22:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    jmp     l_f2_1_while_cond       #  23:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  25:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  26:     if     t3 <= 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  27:     goto   17_if_false
l_f2_16_if_true:
    movl    $97, %eax               #  29:     assign v1 <- 97
    movb    %al, 12(%ebp)          
l_f2_21_while_cond:
    jmp     l_f2_20                 #  31:     goto   20
    jmp     l_f2_21_while_cond      #  32:     goto   21_while_cond
l_f2_20:
    jmp     l_f2_15                 #  34:     goto   15
l_f2_17_if_false:
l_f2_15:
    movl    $98, %eax               #  37:     if     98 = 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  38:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_29_if_false        #  40:     goto   29_if_false
    jmp     l_f2_27                 #  41:     goto   27
l_f2_29_if_false:
l_f2_27:
    movl    $1, %eax                #  44:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    leal    _str_1, %eax            #  45:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  46:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  47:     call   WriteStr
    addl    $4, %esp               
l_f2_33_while_cond:
    jmp     l_f2_32                 #  49:     goto   32
    jmp     l_f2_33_while_cond      #  50:     goto   33_while_cond
l_f2_32:
    jmp     l_f2_23                 #  52:     goto   23
l_f2_25_if_false:
l_f2_23:

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $99, %eax               #   5:     if     99 > 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
    movl    $84985, %eax            #  12:     if     84985 = 92917 goto 10_if_true
    movl    $92917, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #  13:     goto   11_if_false
l_test_10_if_true:
    movl    $27920, %eax            #  15:     if     27920 <= 33536 goto 14_if_true
    movl    $33536, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14_if_true      
    jmp     l_test_15_if_false      #  16:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  18:     goto   13
l_test_15_if_false:
l_test_13:
l_test_18_while_cond:
    jmp     l_test_17               #  22:     goto   17
    jmp     l_test_18_while_cond    #  23:     goto   18_while_cond
l_test_17:
l_test_21_while_cond:
    jmp     l_test_20               #  26:     goto   20
    jmp     l_test_21_while_cond    #  27:     goto   21_while_cond
l_test_20:
    jmp     l_test_9                #  29:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_25_if_false      #  32:     goto   25_if_false
l_test_27_while_cond:
    movl    $99317, %eax            #  34:     if     99317 >= 3713 goto 28_while_body
    movl    $3713, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_28_while_body   
    jmp     l_test_26               #  35:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  37:     goto   27_while_cond
l_test_26:
l_test_31_while_cond:
    jmp     l_test_31_while_cond    #  40:     goto   31_while_cond
l_test_34_while_cond:
    movl    $14654, %eax            #  42:     if     14654 > 19089 goto 35_while_body
    movl    $19089, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_35_while_body   
    jmp     l_test_33               #  43:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  45:     goto   34_while_cond
l_test_33:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_23               #  49:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $90361, %eax            #  52:     assign v0 <- 90361
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $98, %eax               #  54:     if     98 = 97 goto 42
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_42              
    jmp     l_test_43               #  55:     goto   43
l_test_42:
    movl    $1, %eax                #  57:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_44               #  58:     goto   44
l_test_43:
    movl    $0, %eax                #  60:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_44:
    movzbl  -13(%ebp), %eax         #  62:     assign v1 <- t0
    movb    %al, v1                

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
