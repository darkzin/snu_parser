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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    movl    $64295, %eax            #   0:     mul    t5 <- 64295, 15786
    movl    $15786, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $68553, %eax            #   1:     add    t6 <- 68553, t5
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t6 > 47 goto 1
    movl    $47, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v2 <- t7
    movb    %al, -29(%ebp)         
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #  13:     goto   9_while_cond
    movl    $68840, %eax            #  14:     return 68840
    jmp     l_f0_exit              
    jmp     l_f0_5                  #  15:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $26986, %eax            #  18:     add    t8 <- 26986, 2994
    movl    $2994, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     return t8
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 14 of <array 68 of <array 35 of <array 43 of <array 50 of <char>>>>>>> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     if     t5 >= 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    movl    $79571, %eax            #  11:     if     79571 # 23173 goto 13_if_true
    movl    $23173, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  12:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  14:     goto   12
l_f1_14_if_false:
l_f1_12:
    call    dummyCHARfunc           #  17:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  18:     return 0
    jmp     l_f1_exit              
    jmp     l_f1_8                  #  19:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    dummyCHARfunc           #  22:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t24      <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t5       <char> %ebp-70 ]
    #    -71(%ebp)   1  [ $t6       <bool> %ebp-71 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 19 of <array 57 of <array 54 of <array 19 of <array 12 of <bool>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v2       <bool> %ebp-85 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
    jmp     l_f2_1_if_true          #   2:     goto   1_if_true
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -70(%ebp)         
    movl    $100, %eax              #   9:     if     100 = t5 goto 7
    movzbl  -70(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #  10:     goto   8
l_f2_7:
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -71(%ebp)         
    jmp     l_f2_9                  #  13:     goto   9
l_f2_8:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -71(%ebp)         
l_f2_9:
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $66266, %eax            #  20:     mul    t8 <- 66266, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  21:     add    t9 <- t8, 51509
    movl    $51509, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  25:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     add    t12 <- t11, 43294
    movl    $43294, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  30:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $20109, %eax            #  31:     div    t15 <- 20109, 68335
    movl    $68335, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  32:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  36:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     add    t19 <- t18, 21091
    movl    $21091, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  38:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  40:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  41:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  42:     add    t23 <- v1, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -71(%ebp), %eax         #  43:     assign @t23 <- t6
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_12_while_cond:
    call    dummyCHARfunc           #  45:     call   t24 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movl    $99, %eax               #  46:     if     99 <= t24 goto 13_while_body
    movzbl  -69(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_13_while_body     
    jmp     l_f2_11                 #  47:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  49:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 19 of <array 57 of <array 54 of <array 19 of <array 12 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 19 of <array 57 of <array 54 of <array 19 of <array 12 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 = 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $100, %eax              #   4:     assign v0 <- 100
    movb    %al, v0                
    movl    $98, %eax               #   5:     if     98 > 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_if_true       
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_exit            
    jmp     l_test_6                #   9:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_1                #  12:     goto   1
l_test_3_if_false:
l_test_1:
    leal    v1, %eax                #  15:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  17:     call   t2 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  18:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_14_if_false      #  19:     goto   14_if_false
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  21:     goto   16_while_cond
    jmp     l_test_12               #  22:     goto   12
l_test_14_if_false:
l_test_12:
    leal    v1, %eax                #  25:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  27:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -29(%ebp)         

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    .align   4
v1:                                 # <array 19 of <array 57 of <array 54 of <array 19 of <array 12 of <bool>>>>>>
    .long    5
    .long   19
    .long   57
    .long   54
    .long   19
    .long   12
    .skip 13333896








    # end of global data section
    #-----------------------------------------

    .end
##################################################
