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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 68 of <array 52 of <array 90 of <array 41 of <bool>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t5
    movb    %al, -15(%ebp)         
    jmp     l_f0_4                  #   2:     goto   4
l_f0_4:
    movl    $99, %eax               #   4:     if     99 >= 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   5:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_if_false:
l_f0_7:
l_f0_12_while_cond:
    movl    $54822, %eax            #  11:     if     54822 <= 49672 goto 13_while_body
    movl    $49672, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_13_while_body     
    jmp     l_f0_11                 #  12:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  14:     goto   12_while_cond
l_f0_11:
    movl    $50969, %eax            #  16:     return 50969
    jmp     l_f0_exit              
    movl    $98, %eax               #  17:     assign v2 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f0_1                  #  18:     goto   1
l_f0_1:
    call    dummyBOOLfunc           #  20:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t23      <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t5       <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 22 of <array 20 of <array 58 of <array 63 of <array 79 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 14 of <array 11 of <array 30 of <array 59 of <array 17 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -104(%ebp)   4  [ $v4       <int> %ebp-104 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_4_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
l_f1_3:
    movl    $99104, %eax            #   4:     assign v4 <- 99104
    movl    %eax, -104(%ebp)       
    movl    $98, %eax               #   5:     if     98 > 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_8                 
    jmp     l_f1_9                  #   6:     goto   9
l_f1_8:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f1_10                 #   9:     goto   10
l_f1_9:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -81(%ebp)         
l_f1_10:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $86275, %eax            #  16:     mul    t7 <- 86275, t6
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  17:     add    t8 <- t7, 54251
    movl    $54251, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  21:     mul    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 77800
    movl    $77800, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t14 <- t13, 69657
    movl    $69657, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t17 <- t16, 61425
    movl    $61425, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  34:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  35:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  36:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  37:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -81(%ebp), %eax         #  38:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyINTfunc            #  39:     call   t22 <- dummyINTfunc
    movl    %eax, -64(%ebp)        
    jmp     l_f1_0                  #  40:     goto   0
l_f1_0:
    call    dummyBOOLfunc           #  42:     call   t23 <- dummyBOOLfunc
    movb    %al, -65(%ebp)         
    movl    $30856, %eax            #  43:     assign v4 <- 30856
    movl    %eax, -104(%ebp)       
    movl    $15823, %eax            #  44:     mul    t24 <- 15823, 33238
    movl    $33238, %ebx           
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  45:     mul    t25 <- t24, 5548
    movl    $5548, %ebx            
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  46:     div    t26 <- t25, 41558
    movl    $41558, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    $4176, %eax             #  47:     if     4176 < t26 goto 19_if_true
    movl    -80(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  48:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_18                 #  50:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_14                 #  53:     goto   14
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t5 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_4                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_4:
    jmp     l_f2_2                  #   4:     goto   2
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  10:     return t6
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  11:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t8 <- dummyBOOLfunc
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 14 of <array 11 of <array 30 of <array 59 of <array 17 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 22 of <array 20 of <array 58 of <array 63 of <array 79 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    movl    $100, %eax              #   0:     if     100 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_6_if_false       #   3:     goto   6_if_false
    jmp     l_test_4                #   4:     goto   4
l_test_6_if_false:
l_test_4:
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   8:     goto   8_while_cond
    movl    $100, %eax              #   9:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $0, %eax                #  14:     param  2 <- 0
    pushl   %eax                   
    leal    v2, %eax                #  15:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  1 <- t0
    pushl   %eax                   
    leal    v1, %eax                #  17:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  19:     call   t2 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  20:     if     t2 <= 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  21:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  23:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_exit            
    jmp     l_test_18               #  27:     goto   18
    jmp     l_test_18               #  28:     goto   18
    jmp     l_test_18               #  29:     goto   18
    jmp     l_test_18               #  30:     goto   18
    call    f2                      #  31:     call   t3 <- f2
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  32:     if     t3 = 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_18              
    jmp     l_test_19               #  33:     goto   19
l_test_18:
    movl    $1, %eax                #  35:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_20               #  36:     goto   20
l_test_19:
    movl    $0, %eax                #  38:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_test_20:
    movzbl  -23(%ebp), %eax         #  40:     assign v3 <- t4
    movb    %al, v3                

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 22 of <array 20 of <array 58 of <array 63 of <array 79 of <char>>>>>>
    .long    5
    .long   22
    .long   20
    .long   58
    .long   63
    .long   79
    .skip 127013040
v2:                                 # <array 14 of <array 11 of <array 30 of <array 59 of <array 17 of <bool>>>>>>
    .long    5
    .long   14
    .long   11
    .long   30
    .long   59
    .long   17
    .skip 4633860
v3:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
