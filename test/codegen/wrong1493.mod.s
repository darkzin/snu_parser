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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 67 of <array 42 of <array 99 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 48 of <array 100 of <array 49 of <array 34 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 14 of <array 99 of <array 92 of <array 64 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 46 of <array 56 of <array 43 of <array 75 of <array 11 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_9_if_false         #   9:     goto   9_if_false
    call    ReadInt                 #  10:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $38868, %eax            #  11:     if     38868 <= 76295 goto 12_if_true
    movl    $76295, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  12:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  14:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_7                  #  17:     goto   7
l_f0_9_if_false:
l_f0_7:
    call    dummyCHARfunc           #  20:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  21:     if     t5 > 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_16                
    jmp     l_f0_17                 #  22:     goto   17
l_f0_16:
    movl    $1, %eax                #  24:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_18                 #  25:     goto   18
l_f0_17:
    movl    $0, %eax                #  27:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f0_18:
    movzbl  -22(%ebp), %eax         #  29:     return t6
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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 47 of <array 11 of <array 39 of <array 2 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    movl    $97, %eax               #   2:     if     97 # 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    leal    _str_1, %eax            #   5:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_10                 #  10:     goto   10
l_f1_10:
    movl    $1, %eax                #  12:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_9                  #  13:     goto   9
    movl    $0, %eax                #  14:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f1_9:
    movzbl  -21(%ebp), %eax         #  16:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -54(%ebp)   1  [ $t21      <char> %ebp-54 ]
    #    -55(%ebp)   1  [ $t3       <char> %ebp-55 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 31 of <array 87 of <array 98 of <array 47 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -55(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   3:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $85614, %eax            #   4:     mul    t5 <- 85614, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   5:     add    t6 <- t5, 4609
    movl    $4609, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #   9:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  10:     add    t9 <- t8, 11506
    movl    $11506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  14:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t12 <- t11, 67436
    movl    $67436, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     add    t15 <- t14, 51634
    movl    $51634, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  23:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -55(%ebp), %eax         #  26:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  27:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  28:     return t20
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  29:     call   t21 <- dummyCHARfunc
    movb    %al, -54(%ebp)         
    movzbl  -54(%ebp), %eax         #  30:     param  0 <- t21
    pushl   %eax                   
    call    WriteChar               #  31:     call   WriteChar
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 2 of <array 47 of <array 11 of <array 39 of <array 2 of <int>>>>>>> %ebp-20 ]
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
    movl    $0, %eax                #   0:     if     0 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_4                #   3:     goto   4
l_test_4:
    jmp     l_test_exit            
    movl    $38017, %eax            #   6:     if     38017 >= 41417 goto 9_if_true
    movl    $41417, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_9_if_true       
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #   9:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyINTfunc            #  15:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    leal    v0, %eax                #  16:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  18:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $1, %eax                #  19:     if     1 # 0 goto 15_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_15_if_true      
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
l_test_15_if_true:
    call    dummyProcedure          #  22:     call   dummyProcedure
    jmp     l_test_14               #  23:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_exit            

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <array 2 of <array 47 of <array 11 of <array 39 of <array 2 of <int>>>>>>
    .long    5
    .long    2
    .long   47
    .long   11
    .long   39
    .long    2
    .skip 322608








    # end of global data section
    #-----------------------------------------

    .end
##################################################
