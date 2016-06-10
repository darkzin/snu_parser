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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 2 of <array 1 of <array 5 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 10 of <array 10 of <array 10 of <array 1 of <int>>>>>>> %ebp+20 ]

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
l_f0_4:
    jmp     l_f0_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t5
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   9:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_8_while_cond:
    movl    $88259, %eax            #  11:     if     88259 < 33852 goto 9_while_body
    movl    $33852, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_while_body:
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
    jmp     l_f0_11                 #  15:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_16_if_false        #  18:     goto   16_if_false
    jmp     l_f0_14                 #  19:     goto   14
l_f0_16_if_false:
l_f0_14:
    movl    $2175, %eax             #  22:     if     2175 <= 85022 goto 18_if_true
    movl    $85022, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  23:     goto   19_if_false
l_f0_18_if_true:
    jmp     l_f0_17                 #  25:     goto   17
l_f0_19_if_false:
l_f0_17:
    call    ReadInt                 #  28:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  29:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_8_while_cond       #  30:     goto   8_while_cond
l_f0_7:

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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 3 of <array 10 of <array 10 of <array 10 of <array 1 of <int>>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $t27      <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 9 of <array 2 of <array 1 of <array 5 of <array 5 of <bool>>>>>>> %ebp-88 ]
    #    -89(%ebp)   1  [ $t29      <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $t30      <bool> %ebp-90 ]
    #    -91(%ebp)   1  [ $t31      <bool> %ebp-91 ]
    #    -96(%ebp)   4  [ $t5       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t6       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 1 of <array 3 of <array 5 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 6 of <array 10 of <array 4 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 7 of <array 10 of <array 9 of <array 5 of <bool>>>>>>> %ebp+20 ]
    #   -113(%ebp)   1  [ $v4       <bool> %ebp-113 ]
    #   -588(%ebp)  474  [ $v5       <array 9 of <array 2 of <array 1 of <array 5 of <array 5 of <bool>>>>>> %ebp-588 ]
    #   -12612(%ebp)  12024  [ $v6       <array 3 of <array 10 of <array 10 of <array 10 of <array 1 of <int>>>>>> %ebp-12612 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12600, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3150, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-588(%ebp)           # local array 'v5': 5 dimensions
    movl    $9,-584(%ebp)           #   dimension 1: 9 elements
    movl    $2,-580(%ebp)           #   dimension 2: 2 elements
    movl    $1,-576(%ebp)           #   dimension 3: 1 elements
    movl    $5,-572(%ebp)           #   dimension 4: 5 elements
    movl    $5,-568(%ebp)           #   dimension 5: 5 elements
    movl    $5,-12612(%ebp)         # local array 'v6': 5 dimensions
    movl    $3,-12608(%ebp)         #   dimension 1: 3 elements
    movl    $10,-12604(%ebp)        #   dimension 2: 10 elements
    movl    $10,-12600(%ebp)        #   dimension 3: 10 elements
    movl    $10,-12596(%ebp)        #   dimension 4: 10 elements
    movl    $1,-12592(%ebp)         #   dimension 5: 1 elements

    # function body
    movl    $41264, %eax            #   0:     mul    t5 <- 41264, 47319
    movl    $47319, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   1:     div    t6 <- t5, 1828
    movl    $1828, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   2:     add    t7 <- t6, 43883
    movl    $43883, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   3:     sub    t8 <- t7, 51521
    movl    $51521, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   4:     sub    t9 <- t8, 54141
    movl    $54141, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -112(%ebp), %eax        #   8:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t12 <- t11, 80569
    movl    $80569, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  13:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t15 <- t14, 44308
    movl    $44308, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  18:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     add    t18 <- t17, 51794
    movl    $51794, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  23:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  24:     add    t21 <- t20, 16517
    movl    $16517, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  25:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  27:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  28:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t25 <- v1, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $97, %eax               #  30:     assign @t25 <- 97
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    leal    -12612(%ebp), %eax      #  31:     &()    t26 <- v6
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  32:     param  3 <- t26
    pushl   %eax                   
    movl    $41542, %eax            #  33:     if     41542 = 33518 goto 6
    movl    $33518, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #  34:     goto   7
l_f1_6:
    movl    $1, %eax                #  36:     assign t27 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f1_8                  #  37:     goto   8
l_f1_7:
    movl    $0, %eax                #  39:     assign t27 <- 0
    movb    %al, -81(%ebp)         
l_f1_8:
    movzbl  -81(%ebp), %eax         #  41:     param  2 <- t27
    pushl   %eax                   
    movl    $99, %eax               #  42:     param  1 <- 99
    pushl   %eax                   
    leal    -588(%ebp), %eax        #  43:     &()    t28 <- v5
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  44:     param  0 <- t28
    pushl   %eax                   
    call    f0                      #  45:     call   t29 <- f0
    addl    $16, %esp              
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #  46:     if     t29 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_3                  #  47:     goto   3
l_f1_5:
    movl    $1, %eax                #  49:     assign t30 <- 1
    movb    %al, -90(%ebp)         
    jmp     l_f1_4                  #  50:     goto   4
l_f1_3:
    movl    $0, %eax                #  52:     assign t30 <- 0
    movb    %al, -90(%ebp)         
l_f1_4:
    movzbl  -90(%ebp), %eax         #  54:     assign v4 <- t30
    movb    %al, -113(%ebp)        
    call    dummyBOOLfunc           #  55:     call   t31 <- dummyBOOLfunc
    movb    %al, -91(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12600, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #   6:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   7:     return t7
    jmp     l_f2_exit              

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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]

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
l_test_1_while_cond:
    jmp     l_test_1_while_cond     #   1:     goto   1_while_cond
    movl    $65811, %eax            #   2:     add    t0 <- 65811, 99540
    movl    $99540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t1 <- t0, 75509
    movl    $75509, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $97568, %eax            #   4:     if     97568 >= t1 goto 6
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_6               
    jmp     l_test_7                #   5:     goto   7
l_test_6:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_8                #   8:     goto   8
l_test_7:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_8:
    movzbl  -21(%ebp), %eax         #  12:     assign v0 <- t2
    movb    %al, v0                
l_test_11_while_cond:
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  15:     if     t3 # 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #  16:     goto   10
l_test_12_while_body:
    movl    $98, %eax               #  18:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_11_while_cond    #  19:     goto   11_while_cond
l_test_10:
    call    dummyCHARfunc           #  21:     call   t4 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  22:     assign v1 <- t4
    movb    %al, v1                

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
