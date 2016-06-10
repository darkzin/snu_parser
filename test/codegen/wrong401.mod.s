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
    #    -13(%ebp)   1  [ $t28      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t29      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t30      <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <char> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t28 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t28
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $62533, %eax            #   3:     if     62533 > 46157 goto 3_while_body
    movl    $46157, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    call    dummyINTfunc            #   6:     call   t29 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_7_while_cond:
    movl    $98, %eax               #   8:     if     98 <= 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  11:     goto   7_while_cond
l_f0_6:
    movl    $99, %eax               #  13:     assign v1 <- 99
    movb    %al, -22(%ebp)         
    movl    $98, %eax               #  14:     return 98
    jmp     l_f0_exit              
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  16:     goto   13_while_cond
    jmp     l_f0_2_while_cond       #  17:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #  19:     call   t30 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  20:     return t30
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
    #    -16(%ebp)   4  [ $t28      <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 3 of <array 10 of <array 4 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 8 of <array 8 of <array 1 of <array 5 of <bool>>>>>>> %ebp+16 ]

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
    movl    $60932, %eax            #   0:     param  0 <- 60932
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    call    dummyINTfunc            #   2:     call   t28 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_3_while_cond:
    movl    $20270, %eax            #   4:     if     20270 <= 98621 goto 6_if_true
    movl    $98621, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   5:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  11:     goto   10_while_cond
    jmp     l_f1_3_while_cond       #  12:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t28      <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t29      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t30      <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 8 of <array 7 of <array 1 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 8 of <array 1 of <array 1 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -11244(%ebp)  11224  [ $v3       <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>> %ebp-11244 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $11232, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2808, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11244(%ebp)         # local array 'v3': 5 dimensions
    movl    $4,-11240(%ebp)         #   dimension 1: 4 elements
    movl    $7,-11236(%ebp)         #   dimension 2: 7 elements
    movl    $8,-11232(%ebp)         #   dimension 3: 8 elements
    movl    $10,-11228(%ebp)        #   dimension 4: 10 elements
    movl    $5,-11224(%ebp)         #   dimension 5: 5 elements

    # function body
    leal    -11244(%ebp), %eax      #   0:     &()    t28 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t28
    pushl   %eax                   
    call    f0                      #   2:     call   t29 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movl    $97, %eax               #   3:     if     97 = t29 goto 1_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   4:     goto   2_if_false
l_f2_1_if_true:
    call    dummyProcedure          #   6:     call   dummyProcedure
    call    dummyBOOLfunc           #   7:     call   t30 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_6                  #   9:     goto   6
    jmp     l_f2_7_while_cond       #  10:     goto   7_while_cond
l_f2_6:
    movl    $97, %eax               #  12:     if     97 = 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  19:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $63896, %eax            #  22:     if     63896 > 92704 goto 15_if_true
    movl    $92704, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  23:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_18                 #  25:     goto   18
l_f2_18:
    jmp     l_f2_exit              
    jmp     l_f2_14                 #  28:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $11232, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $112, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $28, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    leal    v0, %eax                #   1:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #   3:     call   t1 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    movl    $57338, %eax            #   5:     mul    t2 <- 57338, 48388
    movl    $48388, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   6:     if     t2 = 47367 goto 4
    movl    $47367, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_4               
    jmp     l_test_5                #   7:     goto   5
l_test_4:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_test_6                #  10:     goto   6
l_test_5:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -97(%ebp)         
l_test_6:
    leal    v0, %eax                #  14:     &()    t4 <- v0
    movl    %eax, -104(%ebp)       
    movl    $93170, %eax            #  15:     sub    t5 <- 93170, 39731
    movl    $39731, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  16:     add    t6 <- t5, 64871
    movl    $64871, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    leal    v0, %eax                #  18:     &()    t7 <- v0
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  19:     param  0 <- t7
    pushl   %eax                   
    call    DIM                     #  20:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -112(%ebp), %eax        #  21:     mul    t9 <- t6, t8
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  22:     add    t10 <- t9, 75565
    movl    $75565, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    leal    v0, %eax                #  24:     &()    t11 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  27:     mul    t13 <- t10, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     add    t14 <- t13, 60561
    movl    $60561, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    leal    v0, %eax                #  30:     &()    t15 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  32:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  33:     mul    t17 <- t14, t16
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t18 <- t17, 17120
    movl    $17120, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    leal    v0, %eax                #  36:     &()    t19 <- v0
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  37:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  38:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -56(%ebp), %eax         #  39:     mul    t21 <- t18, t20
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  40:     add    t22 <- t21, 3614
    movl    $3614, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  41:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    v0, %eax                #  42:     &()    t24 <- v0
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  43:     param  0 <- t24
    pushl   %eax                   
    call    DOFS                    #  44:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  45:     add    t26 <- t23, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -104(%ebp), %eax        #  46:     add    t27 <- t4, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movzbl  -97(%ebp), %eax         #  47:     assign @t27 <- t3
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $112, %esp              # remove locals
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
v0:                                 # <array 4 of <array 7 of <array 8 of <array 10 of <array 5 of <bool>>>>>>
    .long    5
    .long    4
    .long    7
    .long    8
    .long   10
    .long    5
    .skip 11200
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
