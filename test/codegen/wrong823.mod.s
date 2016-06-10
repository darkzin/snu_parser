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
    #    -13(%ebp)   1  [ $t13      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 9 of <array 10 of <array 2 of <array 5 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t13 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $31824, %eax            #   1:     assign v3 <- 31824
    movl    %eax, 16(%ebp)         
    call    ReadInt                 #   2:     call   t14 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t14
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 6 of <array 5 of <array 6 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp+20 ]
    #    -20(%ebp)   4  [ $v5       <int> %ebp-20 ]

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
    movl    $82392, %eax            #   0:     assign v5 <- 82392
    movl    %eax, -20(%ebp)        
    jmp     l_f1_2                  #   1:     goto   2
l_f1_2:
    movl    $1, %eax                #   3:     assign t13 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   4:     goto   4
    movl    $0, %eax                #   5:     assign t13 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #   7:     assign v2 <- t13
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #   8:     call   t14 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     return t14
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
    #    -16(%ebp)   4  [ $t13      <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t15      <ptr(4) to <array 3 of <array 6 of <array 5 of <array 6 of <array 5 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t16      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t17      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t18      <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t20      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t21      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t22      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t23      <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t24      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t25      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t26      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t27      <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t28      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t29      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t30      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t31      <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t32      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t33      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t34      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t35      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t36      <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t37      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t38      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t39      <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 5 of <array 6 of <array 3 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 4 of <array 4 of <array 8 of <array 5 of <int>>>>>>> %ebp+20 ]
    #   -2840(%ebp)  2724  [ $v5       <array 3 of <array 6 of <array 5 of <array 6 of <array 5 of <char>>>>>> %ebp-2840 ]
    #   -12080(%ebp)  9240  [ $v6       <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>> %ebp-12080 ]
    #   -12081(%ebp)   1  [ $v7       <char> %ebp-12081 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12072, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3018, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2840(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-2836(%ebp)          #   dimension 1: 3 elements
    movl    $6,-2832(%ebp)          #   dimension 2: 6 elements
    movl    $5,-2828(%ebp)          #   dimension 3: 5 elements
    movl    $6,-2824(%ebp)          #   dimension 4: 6 elements
    movl    $5,-2820(%ebp)          #   dimension 5: 5 elements
    movl    $5,-12080(%ebp)         # local array 'v6': 5 dimensions
    movl    $8,-12076(%ebp)         #   dimension 1: 8 elements
    movl    $6,-12072(%ebp)         #   dimension 2: 6 elements
    movl    $8,-12068(%ebp)         #   dimension 3: 8 elements
    movl    $4,-12064(%ebp)         #   dimension 4: 4 elements
    movl    $6,-12060(%ebp)         #   dimension 5: 6 elements

    # function body
    leal    -12080(%ebp), %eax      #   0:     &()    t13 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t13
    pushl   %eax                   
    movl    $98, %eax               #   2:     param  2 <- 98
    pushl   %eax                   
    movl    $98, %eax               #   3:     if     98 <= 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   4:     goto   2
l_f2_1:
    movl    $1, %eax                #   6:     assign t14 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
l_f2_2:
    movl    $0, %eax                #   9:     assign t14 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #  11:     param  1 <- t14
    pushl   %eax                   
    leal    -2840(%ebp), %eax       #  12:     &()    t15 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  0 <- t15
    pushl   %eax                   
    call    f1                      #  14:     call   t16 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  15:     return t16
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  16:     call   t17 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    leal    -12080(%ebp), %eax      #  17:     &()    t18 <- v6
    movl    %eax, -32(%ebp)        
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    leal    -12080(%ebp), %eax      #  19:     &()    t19 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  21:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    $32143, %eax            #  22:     mul    t21 <- 32143, t20
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     add    t22 <- t21, 39235
    movl    $39235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $3, %eax                #  24:     param  1 <- 3
    pushl   %eax                   
    leal    -12080(%ebp), %eax      #  25:     &()    t23 <- v6
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  27:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  28:     mul    t25 <- t22, t24
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     add    t26 <- t25, 30557
    movl    $30557, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    leal    -12080(%ebp), %eax      #  31:     &()    t27 <- v6
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  32:     param  0 <- t27
    pushl   %eax                   
    call    DIM                     #  33:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  34:     mul    t29 <- t26, t28
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  35:     add    t30 <- t29, 74010
    movl    $74010, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    leal    -12080(%ebp), %eax      #  37:     &()    t31 <- v6
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  38:     param  0 <- t31
    pushl   %eax                   
    call    DIM                     #  39:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  40:     mul    t33 <- t30, t32
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  41:     add    t34 <- t33, 30199
    movl    $30199, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  42:     mul    t35 <- t34, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    leal    -12080(%ebp), %eax      #  43:     &()    t36 <- v6
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  44:     param  0 <- t36
    pushl   %eax                   
    call    DOFS                    #  45:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -108(%ebp)       
    movl    -100(%ebp), %eax        #  46:     add    t38 <- t35, t37
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -32(%ebp), %eax         #  47:     add    t39 <- t18, t38
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movzbl  -26(%ebp), %eax         #  48:     assign @t39 <- t17
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $98, %eax               #  49:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  50:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $12072, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t10      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 3 of <array 6 of <array 5 of <array 6 of <array 5 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t2       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t3       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t4       <bool> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    movl    $97, %eax               #   1:     if     97 >= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   5:     if     100 > 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   6:     goto   8
l_test_7:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_9                #   9:     goto   9
l_test_8:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_9:
    movzbl  -14(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $97, %eax               #  17:     if     97 = 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  18:     goto   13_if_false
l_test_12_if_true:
    movl    $98, %eax               #  20:     if     98 <= 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_16              
    jmp     l_test_17               #  21:     goto   17
l_test_16:
    movl    $1, %eax                #  23:     assign t2 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_18               #  24:     goto   18
l_test_17:
    movl    $0, %eax                #  26:     assign t2 <- 0
    movb    %al, -22(%ebp)         
l_test_18:
    movzbl  -22(%ebp), %eax         #  28:     assign v0 <- t2
    movb    %al, v0                
    call    dummyCHARfunc           #  29:     call   t3 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  31:     call   t4 <- dummyBOOLfunc
    movb    %al, -24(%ebp)         
    call    dummyBOOLfunc           #  32:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_11               #  33:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $73243, %eax            #  36:     add    t6 <- 73243, 80414
    movl    $80414, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     sub    t7 <- t6, 24731
    movl    $24731, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  38:     sub    t8 <- t7, 10376
    movl    $10376, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  39:     assign v1 <- t8
    movl    %eax, v1               
    jmp     l_test_27_if_false      #  40:     goto   27_if_false
    leal    v3, %eax                #  41:     &()    t9 <- v3
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  42:     param  3 <- t9
    pushl   %eax                   
    movl    $99, %eax               #  43:     param  2 <- 99
    pushl   %eax                   
    movl    $97, %eax               #  44:     if     97 > 100 goto 29
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_29              
    jmp     l_test_30               #  45:     goto   30
l_test_29:
    movl    $1, %eax                #  47:     assign t10 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_31               #  48:     goto   31
l_test_30:
    movl    $0, %eax                #  50:     assign t10 <- 0
    movb    %al, -15(%ebp)         
l_test_31:
    movzbl  -15(%ebp), %eax         #  52:     param  1 <- t10
    pushl   %eax                   
    leal    v2, %eax                #  53:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  54:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  55:     call   t12 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    jmp     l_test_25               #  56:     goto   25
l_test_27_if_false:
l_test_25:
l_test_34_while_cond:
l_test_37_while_cond:
    movl    $100, %eax              #  61:     if     100 <= 97 goto 38_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_38_while_body   
    jmp     l_test_36               #  62:     goto   36
l_test_38_while_body:
    jmp     l_test_37_while_cond    #  64:     goto   37_while_cond
l_test_36:
    jmp     l_test_34_while_cond    #  66:     goto   34_while_cond

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 3 of <array 6 of <array 5 of <array 6 of <array 5 of <char>>>>>>
    .long    5
    .long    3
    .long    6
    .long    5
    .long    6
    .long    5
    .skip 2700
v3:                                 # <array 8 of <array 6 of <array 8 of <array 4 of <array 6 of <char>>>>>>
    .long    5
    .long    8
    .long    6
    .long    8
    .long    4
    .long    6
    .skip 9216








    # end of global data section
    #-----------------------------------------

    .end
##################################################
