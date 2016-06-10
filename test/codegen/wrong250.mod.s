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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 5 of <array 6 of <array 3 of <array 5 of <char>>>>>>> %ebp+8 ]
    #    -23(%ebp)   1  [ $v1       <bool> %ebp-23 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t3 = 29365 goto 2
    movl    $29365, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f0_4:
    movzbl  -21(%ebp), %eax         #  10:     assign v1 <- t4
    movb    %al, -23(%ebp)         
    movl    $1, %eax                #  11:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_9                  #  12:     goto   9
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f0_9:
    movzbl  -22(%ebp), %eax         #  15:     assign v1 <- t5
    movb    %al, -23(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 10 of <array 1 of <array 9 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 9 of <array 1 of <array 7 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]

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
l_f1_4_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
l_f1_3:
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   5:     goto   7_while_cond
    leal    _str_1, %eax            #   6:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
    movl    $40252, %eax            #   9:     return 40252
    jmp     l_f1_exit              
    movl    $26401, %eax            #  10:     return 26401
    jmp     l_f1_exit              
l_f1_13_while_cond:
    movl    $76653, %eax            #  12:     if     76653 < 33776 goto 14_while_body
    movl    $33776, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  13:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  15:     goto   13_while_cond
l_f1_12:
    movl    $0, %eax                #  17:     assign v3 <- 0
    movb    %al, -29(%ebp)         
    jmp     l_f1_0                  #  18:     goto   0
l_f1_0:
l_f1_18_while_cond:
    movl    $92655, %eax            #  21:     if     92655 > 44339 goto 19_while_body
    movl    $44339, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_19_while_body     
    jmp     l_f1_17                 #  22:     goto   17
l_f1_19_while_body:
    movl    $41505, %eax            #  24:     add    t3 <- 41505, 86762
    movl    $86762, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     sub    t4 <- t3, 43807
    movl    $43807, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     sub    t5 <- t4, 47746
    movl    $47746, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_18_while_cond      #  28:     goto   18_while_cond
l_f1_17:
    movl    $54875, %eax            #  30:     return 54875
    jmp     l_f1_exit              
l_f1_27_while_cond:
    movl    $98937, %eax            #  32:     if     98937 # 15000 goto 28_while_body
    movl    $15000, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_28_while_body     
    jmp     l_f1_26                 #  33:     goto   26
l_f1_28_while_body:
    jmp     l_f1_27_while_cond      #  35:     goto   27_while_cond
l_f1_26:
    movl    $76234, %eax            #  37:     if     76234 # 13540 goto 31_if_true
    movl    $13540, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_31_if_true        
    jmp     l_f1_32_if_false        #  38:     goto   32_if_false
l_f1_31_if_true:
    jmp     l_f1_30                 #  40:     goto   30
l_f1_32_if_false:
l_f1_30:
    jmp     l_f1_22                 #  43:     goto   22
l_f1_22:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t18      <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t19      <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 3 of <array 4 of <array 10 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 2 of <array 4 of <array 3 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 5 of <array 3 of <array 5 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #    -84(%ebp)   4  [ $v4       <int> %ebp-84 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $90886, %eax            #   2:     return 90886
    jmp     l_f2_exit              
    movl    $100, %eax              #   3:     if     100 # 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    movl    $46657, %eax            #  11:     if     46657 >= 7592 goto 9_if_true
    movl    $7592, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  12:     goto   10_if_false
l_f2_9_if_true:
    movl    $44256, %eax            #  14:     return 44256
    jmp     l_f2_exit              
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $56345, %eax            #  18:     mul    t3 <- 56345, t2
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  19:     add    t4 <- t3, 7412
    movl    $7412, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  23:     mul    t6 <- t4, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  24:     add    t7 <- t6, 29838
    movl    $29838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  28:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  29:     add    t10 <- t9, 75123
    movl    $75123, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  33:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t13 <- t12, 22455
    movl    $22455, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     mul    t14 <- t13, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  37:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  38:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t17 <- v0, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $34828, %eax            #  40:     assign @t17 <- 34828
    movl    -44(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_8                  #  41:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_15_while_cond:
    jmp     l_f2_19                 #  45:     goto   19
    movl    $1, %eax                #  46:     assign t18 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f2_20                 #  47:     goto   20
l_f2_19:
    movl    $0, %eax                #  49:     assign t18 <- 0
    movb    %al, -45(%ebp)         
l_f2_20:
    movl    $1, %eax                #  51:     if     1 # 1 goto 22
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_22                
    jmp     l_f2_23                 #  52:     goto   23
l_f2_22:
    movl    $1, %eax                #  54:     assign t19 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f2_24                 #  55:     goto   24
l_f2_23:
    movl    $0, %eax                #  57:     assign t19 <- 0
    movb    %al, -46(%ebp)         
l_f2_24:
    movzbl  -45(%ebp), %eax         #  59:     if     t18 = t19 goto 16_while_body
    movzbl  -46(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_16_while_body     
    jmp     l_f2_14                 #  60:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  62:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98945, %eax            #   2:     if     98945 <= 81704 goto 3_if_true
    movl    $81704, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
l_test_7_while_cond:
    movl    $98, %eax               #   6:     if     98 <= 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   9:     goto   7_while_cond
l_test_6:
    movl    $99, %eax               #  11:     assign v0 <- 99
    movb    %al, v0                
    leal    _str_2, %eax            #  12:     &()    t1 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  14:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_12               #  15:     goto   12
l_test_12:
    jmp     l_test_17_if_false      #  17:     goto   17_if_false
    jmp     l_test_15               #  18:     goto   15
l_test_17_if_false:
l_test_15:
    call    dummyProcedure          #  21:     call   dummyProcedure
    jmp     l_test_2                #  22:     goto   2
l_test_4_if_false:
l_test_2:

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
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
