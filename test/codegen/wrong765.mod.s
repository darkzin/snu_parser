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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 1 of <array 2 of <array 5 of <array 9 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_5_while_cond:
    jmp     l_f0_4                  #   4:     goto   4
    jmp     l_f0_5_while_cond       #   5:     goto   5_while_cond
l_f0_4:
l_f0_8_while_cond:
    movl    $98, %eax               #   8:     if     98 < 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #   9:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  11:     goto   8_while_cond
l_f0_7:
    call    dummyProcedure          #  13:     call   dummyProcedure
    jmp     l_f0_1                  #  14:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_13_while_cond:
    jmp     l_f0_15                 #  18:     goto   15
    jmp     l_f0_14_while_body      #  19:     goto   14_while_body
l_f0_15:
    jmp     l_f0_12                 #  21:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  23:     goto   13_while_cond
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 1 of <array 2 of <array 3 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 10 of <array 4 of <array 9 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 5 of <array 9 of <array 4 of <array 4 of <char>>>>>>> %ebp+16 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $99, %eax               #   2:     if     99 >= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    movl    $98, %eax               #   9:     if     98 < 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #  10:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  12:     goto   9_while_cond
l_f1_8:
    movl    $0, %eax                #  14:     if     0 # 0 goto 13
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_13                
    jmp     l_f1_14                 #  15:     goto   14
l_f1_13:
    movl    $1, %eax                #  17:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_15                 #  18:     goto   15
l_f1_14:
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_15:
    movzbl  -13(%ebp), %eax         #  22:     return t2
    jmp     l_f1_exit              
    leal    _str_1, %eax            #  23:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  25:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #  26:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_23                 #  28:     goto   23
l_f1_23:
    movl    $1, %eax                #  30:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_25                 #  31:     goto   25
    movl    $0, %eax                #  32:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_25:
    jmp     l_f1_28                 #  34:     goto   28
    jmp     l_f1_28                 #  35:     goto   28
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_29                 #  37:     goto   29
l_f1_28:
    movl    $0, %eax                #  39:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f1_29:
    movzbl  -21(%ebp), %eax         #  41:     if     t4 # t5 goto 19
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_19                
    jmp     l_f1_20                 #  42:     goto   20
l_f1_19:
    movl    $1, %eax                #  44:     assign t6 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_21                 #  45:     goto   21
l_f1_20:
    movl    $0, %eax                #  47:     assign t6 <- 0
    movb    %al, -23(%ebp)         
l_f1_21:
    movzbl  -23(%ebp), %eax         #  49:     return t6
    jmp     l_f1_exit              
l_f1_34_while_cond:
    movl    $54444, %eax            #  51:     if     54444 >= 91102 goto 35_while_body
    movl    $91102, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_35_while_body     
    jmp     l_f1_33                 #  52:     goto   33
l_f1_35_while_body:
    call    WriteLn                 #  54:     call   WriteLn
    jmp     l_f1_34_while_cond      #  55:     goto   34_while_cond
l_f1_33:

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
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t2       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t5       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t6       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t7       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t8       <ptr(4) to <array 2 of <array 1 of <array 2 of <array 5 of <array 9 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t9       <int> %ebp-68 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 2 of <array 4 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 9 of <array 10 of <array 3 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 9 of <array 6 of <array 1 of <array 7 of <bool>>>>>>> %ebp+20 ]
    #    -69(%ebp)   1  [ $v4       <char> %ebp-69 ]
    #   -276(%ebp)  204  [ $v5       <array 2 of <array 1 of <array 2 of <array 5 of <array 9 of <bool>>>>>> %ebp-276 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $264, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $66, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-276(%ebp)           # local array 'v5': 5 dimensions
    movl    $2,-272(%ebp)           #   dimension 1: 2 elements
    movl    $1,-268(%ebp)           #   dimension 2: 1 elements
    movl    $2,-264(%ebp)           #   dimension 3: 2 elements
    movl    $5,-260(%ebp)           #   dimension 4: 5 elements
    movl    $9,-256(%ebp)           #   dimension 5: 9 elements

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   1:     sub    t3 <- t2, 16594
    movl    $16594, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   2:     add    t4 <- t3, 68438
    movl    $68438, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   3:     add    t5 <- t4, 33109
    movl    $33109, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   4:     add    t6 <- t5, 10264
    movl    $10264, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     return t6
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $98, %eax               #   7:     if     98 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_while_body:
    movl    $40210, %eax            #  10:     return 40210
    jmp     l_f2_exit              
    call    dummyINTfunc            #  11:     call   t7 <- dummyINTfunc
    movl    %eax, -60(%ebp)        
    movl    $99, %eax               #  12:     assign v4 <- 99
    movb    %al, -69(%ebp)         
    leal    -276(%ebp), %eax        #  13:     &()    t8 <- v5
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  14:     param  1 <- t8
    pushl   %eax                   
    movl    $91002, %eax            #  15:     mul    t9 <- 91002, 73295
    movl    $73295, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  16:     mul    t10 <- t9, 17538
    movl    $17538, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     sub    t11 <- t10, 41459
    movl    $41459, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t12 <- t11, 2580
    movl    $2580, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t13 <- t12, 95092
    movl    $95092, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     if     t13 = 67889 goto 9
    movl    $67889, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_10                 #  21:     goto   10
l_f2_9:
    movl    $1, %eax                #  23:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_11                 #  24:     goto   11
l_f2_10:
    movl    $0, %eax                #  26:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f2_11:
    movzbl  -29(%ebp), %eax         #  28:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  29:     call   f0
    addl    $8, %esp               
    jmp     l_f2_2_while_cond       #  30:     goto   2_while_cond
l_f2_1:
    call    dummyINTfunc            #  32:     call   t15 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     return t15
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $264, %esp              # remove locals
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
l_test_2_while_cond:
    movl    $52477, %eax            #   2:     if     52477 > 71329 goto 3_while_body
    movl    $71329, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    jmp     l_test_7_if_true        #   8:     goto   7_if_true
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  11:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $87165, %eax            #  14:     add    t0 <- 87165, 67689
    movl    $67689, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t1 <- t0, 79098
    movl    $79098, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     assign v0 <- t1
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
