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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    jmp     l_f0_3                  #   1:     goto   3
    jmp     l_f0_3                  #   2:     goto   3
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   4:     goto   4
l_f0_3:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #   8:     return t4
    jmp     l_f0_exit              
    movl    $97, %eax               #   9:     assign v1 <- 97
    movb    %al, -15(%ebp)         

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
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t3       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 86 of <array 53 of <array 16 of <array 53 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 91 of <array 81 of <array 95 of <array 85 of <array 34 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 65 of <array 26 of <array 62 of <array 54 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #    -81(%ebp)   1  [ $v5       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $v6       <char> %ebp-82 ]

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
    movl    $81874, %eax            #   0:     if     81874 < 64591 goto 1_if_true
    movl    $64591, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $87596, %eax            #   3:     if     87596 < 92626 goto 5
    movl    $92626, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -54(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -54(%ebp)         
l_f1_7:
    movl    $2, %eax                #  11:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $66721, %eax            #  14:     mul    t5 <- 66721, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  15:     add    t6 <- t5, 74861
    movl    $74861, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  19:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  20:     add    t9 <- t8, 77169
    movl    $77169, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  24:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     add    t12 <- t11, 86757
    movl    $86757, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  29:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t15 <- t14, 94978
    movl    $94978, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  32:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  33:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  34:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  35:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -54(%ebp), %eax         #  36:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $98, %eax               #  37:     if     98 # 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_10                
    jmp     l_f1_11                 #  38:     goto   11
l_f1_10:
    movl    $1, %eax                #  40:     assign t20 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_12                 #  41:     goto   12
l_f1_11:
    movl    $0, %eax                #  43:     assign t20 <- 0
    movb    %al, -53(%ebp)         
l_f1_12:
    movzbl  -53(%ebp), %eax         #  45:     assign v5 <- t20
    movb    %al, -81(%ebp)         
    jmp     l_f1_0                  #  46:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_16_if_false        #  49:     goto   16_if_false
    movl    $2419, %eax             #  50:     return 2419
    jmp     l_f1_exit              
    movl    $66747, %eax            #  51:     return 66747
    jmp     l_f1_exit              
    movl    $98, %eax               #  52:     assign v6 <- 98
    movb    %al, -82(%ebp)         
    jmp     l_f1_14                 #  53:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $98, %eax               #  56:     if     98 < 97 goto 21_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  57:     goto   22_if_false
l_f1_21_if_true:
    movl    $16032, %eax            #  59:     assign v4 <- 16032
    movl    %eax, 20(%ebp)         
    movl    $95093, %eax            #  60:     assign v4 <- 95093
    movl    %eax, 20(%ebp)         
    jmp     l_f1_20                 #  61:     goto   20
l_f1_22_if_false:
l_f1_20:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 79 of <array 22 of <array 47 of <array 97 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $1, %eax                #   1:     return 1
    jmp     l_f2_exit              
    movl    $14975, %eax            #   2:     if     14975 < 66314 goto 5_if_true
    movl    $66314, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $0, %eax                #   8:     if     0 = 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   9:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  17:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_14_while_cond:
    jmp     l_f2_13                 #  19:     goto   13
    jmp     l_f2_18_if_false        #  20:     goto   18_if_false
    jmp     l_f2_16                 #  21:     goto   16
l_f2_18_if_false:
l_f2_16:
l_f2_20_while_cond:
    movl    $67740, %eax            #  25:     if     67740 < 86748 goto 21_while_body
    movl    $86748, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_21_while_body     
    jmp     l_f2_19                 #  26:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  28:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_14_while_cond      #  30:     goto   14_while_cond
l_f2_13:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
l_test_7_while_cond:
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     if     t0 > t1 goto 8_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_8_while_body    
    jmp     l_test_6                #  11:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  13:     goto   7_while_cond
l_test_6:
    call    ReadInt                 #  15:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
