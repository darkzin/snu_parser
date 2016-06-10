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
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -37(%ebp)   1  [ $v2       <char> %ebp-37 ]

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
    movl    $5118, %eax             #   0:     add    t6 <- 5118, 97563
    movl    $97563, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     sub    t7 <- t6, 23485
    movl    $23485, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     add    t8 <- t7, 70768
    movl    $70768, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     sub    t9 <- t8, 79032
    movl    $79032, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     add    t10 <- t9, 86919
    movl    $86919, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     return t10
    jmp     l_f0_exit              
    movl    $61300, %eax            #   6:     div    t11 <- 61300, 49177
    movl    $49177, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     return t11
    jmp     l_f0_exit              
    movl    $99, %eax               #   8:     assign v2 <- 99
    movb    %al, -37(%ebp)         

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <char> %ebp-62 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 77 of <array 43 of <array 96 of <array 97 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 42 of <array 27 of <array 68 of <array 68 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 51 of <array 68 of <array 72 of <array 34 of <array 29 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 16 of <array 8 of <array 92 of <array 43 of <char>>>>>>> %ebp+20 ]
    #    -84(%ebp)   4  [ $v5       <int> %ebp-84 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   6:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $7724, %eax             #   7:     mul    t7 <- 7724, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   8:     add    t8 <- t7, 7427
    movl    $7427, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  12:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t11 <- t10, 72818
    movl    $72818, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  17:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t14 <- t13, 59942
    movl    $59942, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t17 <- t16, 57501
    movl    $57501, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  26:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $16366, %eax            #  29:     assign @t21 <- 16366
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_0                  #  30:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_7_while_cond:
    jmp     l_f1_8_while_body       #  34:     goto   8_while_body
    jmp     l_f1_8_while_body       #  35:     goto   8_while_body
    jmp     l_f1_8_while_body       #  36:     goto   8_while_body
    jmp     l_f1_8_while_body       #  37:     goto   8_while_body
    call    dummyBOOLfunc           #  38:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  39:     if     t22 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_8_while_body      
    jmp     l_f1_6                  #  40:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  42:     goto   7_while_cond
l_f1_6:
    call    dummyCHARfunc           #  44:     call   t23 <- dummyCHARfunc
    movb    %al, -62(%ebp)         

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    movl    $60799, %eax            #   1:     if     60799 > 3001 goto 2_while_body
    movl    $3001, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $97, %eax               #   4:     return 97
    jmp     l_f2_exit              
    movl    $97, %eax               #   5:     return 97
    jmp     l_f2_exit              
    movl    $97, %eax               #   6:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   7:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $11157, %eax            #  10:     assign v1 <- 11157
    movl    %eax, 8(%ebp)          
    call    ReadInt                 #  11:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $80241, %eax            #  12:     mul    t7 <- 80241, t6
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     assign v1 <- t7
    movl    %eax, 8(%ebp)          

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]

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
    movl    $0, %eax                #   0:     if     0 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    movl    $95916, %eax            #   7:     assign v0 <- 95916
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_10_while_cond:
    jmp     l_test_9                #  10:     goto   9
    jmp     l_test_10_while_cond    #  11:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
l_test_14_while_cond:
    jmp     l_test_13               #  15:     goto   13
    jmp     l_test_14_while_cond    #  16:     goto   14_while_cond
l_test_13:
    jmp     l_test_0                #  18:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  21:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  22:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #  23:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_19_while_cond:
    movl    $100, %eax              #  26:     if     100 = 99 goto 20_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_20_while_body   
    jmp     l_test_18               #  27:     goto   18
l_test_20_while_body:
    movl    $97, %eax               #  29:     assign v1 <- 97
    movb    %al, v1                
    movl    $8410, %eax             #  30:     if     8410 <= 91982 goto 24
    movl    $91982, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_24              
    jmp     l_test_25               #  31:     goto   25
l_test_24:
    movl    $1, %eax                #  33:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_26               #  34:     goto   26
l_test_25:
    movl    $0, %eax                #  36:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_26:
    movzbl  -14(%ebp), %eax         #  38:     param  2 <- t1
    pushl   %eax                   
    movl    $340, %eax              #  39:     if     340 >= 87297 goto 28
    movl    $87297, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_28              
    jmp     l_test_29               #  40:     goto   29
l_test_28:
    movl    $1, %eax                #  42:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_30               #  43:     goto   30
l_test_29:
    movl    $0, %eax                #  45:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_30:
    movzbl  -15(%ebp), %eax         #  47:     param  1 <- t2
    pushl   %eax                   
    movl    $19132, %eax            #  48:     sub    t3 <- 19132, 79848
    movl    $79848, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  49:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  50:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_test_19_while_cond    #  51:     goto   19_while_cond
l_test_18:
    jmp     l_test_exit            
    movl    $34577, %eax            #  54:     if     34577 > 90243 goto 34
    movl    $90243, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_34              
    jmp     l_test_35               #  55:     goto   35
l_test_34:
    movl    $1, %eax                #  57:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_36               #  58:     goto   36
l_test_35:
    movl    $0, %eax                #  60:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_test_36:
    movzbl  -22(%ebp), %eax         #  62:     assign v2 <- t5
    movb    %al, v2                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
