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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t14      <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 62 of <array 56 of <array 23 of <array 19 of <array 49 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -23(%ebp)   1  [ $v4       <bool> %ebp-23 ]

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
    jmp     l_f0_4                  #   0:     goto   4
    jmp     l_f0_5                  #   1:     goto   5
l_f0_4:
    movl    $1, %eax                #   3:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $0, %eax                #   6:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movl    $1, %eax                #   8:     if     1 = t11 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   9:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $1, %eax                #  15:     assign v4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f0_exit              
    movl    $45627, %eax            #  17:     if     45627 # 44680 goto 15_if_true
    movl    $44680, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  18:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  20:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_20_if_false        #  23:     goto   20_if_false
    jmp     l_f0_18                 #  24:     goto   18
l_f0_20_if_false:
l_f0_18:
    call    dummyINTfunc            #  27:     call   t12 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  28:     assign v3 <- 99
    movb    %al, 20(%ebp)          
    jmp     l_f0_0                  #  29:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $100, %eax              #  32:     if     100 # 98 goto 24
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_24                
    jmp     l_f0_25                 #  33:     goto   25
l_f0_24:
    movl    $1, %eax                #  35:     assign t13 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_26                 #  36:     goto   26
l_f0_25:
    movl    $0, %eax                #  38:     assign t13 <- 0
    movb    %al, -21(%ebp)         
l_f0_26:
    movzbl  -21(%ebp), %eax         #  40:     assign v4 <- t13
    movb    %al, -23(%ebp)         
l_f0_29_while_cond:
    movl    $73539, %eax            #  42:     if     73539 > 61440 goto 30_while_body
    movl    $61440, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_30_while_body     
    jmp     l_f0_28                 #  43:     goto   28
l_f0_30_while_body:
    call    dummyBOOLfunc           #  45:     call   t14 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movl    $1, %eax                #  46:     assign v4 <- 1
    movb    %al, -23(%ebp)         
    movl    $0, %eax                #  47:     assign v4 <- 0
    movb    %al, -23(%ebp)         
    movl    $97, %eax               #  48:     assign v3 <- 97
    movb    %al, 20(%ebp)          
    jmp     l_f0_29_while_cond      #  49:     goto   29_while_cond
l_f0_28:

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t14      <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t15      <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 75 of <array 25 of <array 45 of <array 45 of <array 36 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_1                  #   1:     goto   1
    jmp     l_f1_1                  #   2:     goto   1
l_f1_1:
    movl    $1, %eax                #   4:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     return t11
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   9:     call   t12 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     if     t12 # 98 goto 8
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_8                 
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $1, %eax                #  13:     assign t13 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_10                 #  14:     goto   10
l_f1_9:
    movl    $0, %eax                #  16:     assign t13 <- 0
    movb    %al, -15(%ebp)         
l_f1_10:
    movzbl  -15(%ebp), %eax         #  18:     return t13
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  19:     call   t14 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #  20:     if     98 <= t14 goto 13
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_13                
    jmp     l_f1_14                 #  21:     goto   14
l_f1_13:
    movl    $1, %eax                #  23:     assign t15 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_15                 #  24:     goto   15
l_f1_14:
    movl    $0, %eax                #  26:     assign t15 <- 0
    movb    %al, -17(%ebp)         
l_f1_15:
    movzbl  -17(%ebp), %eax         #  28:     return t15
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]

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
    call    dummyBOOLfunc           #   0:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   2:     goto   3_while_body
    jmp     l_f2_3_while_body       #   3:     goto   3_while_body
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   5:     goto   2_while_cond
    jmp     l_f2_7                  #   6:     goto   7
    call    dummyBOOLfunc           #   7:     call   t12 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     if     t12 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $1, %eax                #  11:     assign t13 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $0, %eax                #  14:     assign t13 <- 0
    movb    %al, -15(%ebp)         
l_f2_9:
    movzbl  -15(%ebp), %eax         #  16:     assign v0 <- t13
    movb    %al, -16(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t4       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t5       <char> %ebp-34 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $25355, %eax            #   0:     add    t0 <- 25355, 59989
    movl    $59989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 51399
    movl    $51399, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 84451
    movl    $84451, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t3 <- t2, 81413
    movl    $81413, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     if     t3 > 64776 goto 1_if_true
    movl    $64776, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   5:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   7:     if     97 <= 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #   8:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #  10:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  16:     call   t4 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    call    dummyCHARfunc           #  17:     call   t5 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
l_test_11_while_cond:
    movl    $29417, %eax            #  19:     mul    t6 <- 29417, 93319
    movl    $93319, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     div    t7 <- t6, 45918
    movl    $45918, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t8 <- t7, 69385
    movl    $69385, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t9 <- t8, 94832
    movl    $94832, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     add    t10 <- t9, 14619
    movl    $14619, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     if     t10 >= 88873 goto 12_while_body
    movl    $88873, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #  25:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  27:     goto   11_while_cond
l_test_10:

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
