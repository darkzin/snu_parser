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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $84286, %eax            #   6:     div    t3 <- 84286, 25258
    movl    $25258, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     div    t4 <- t3, 48997
    movl    $48997, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t5 <- t4, 69233
    movl    $69233, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     assign v1 <- t5
    movl    %eax, 12(%ebp)         
l_f0_6_while_cond:
    jmp     l_f0_5                  #  11:     goto   5
    jmp     l_f0_5                  #  12:     goto   5
    jmp     l_f0_5                  #  13:     goto   5
    jmp     l_f0_6_while_cond       #  14:     goto   6_while_cond
l_f0_5:

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
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <ptr(4) to <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t4       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <ptr(4) to <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>>> %ebp-108 ]
    #   -109(%ebp)   1  [ $t7       <char> %ebp-109 ]
    #   -116(%ebp)   4  [ $t8       <ptr(4) to <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <ptr(4) to <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>>> %ebp-120 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -124(%ebp)   4  [ $v1       <int> %ebp-124 ]
    #   -50137204(%ebp)  50137080  [ $v2       <array 58 of <array 6 of <array 46 of <array 36 of <array 87 of <char>>>>>> %ebp-50137204 ]
    #   -50137205(%ebp)   1  [ $v3       <char> %ebp-50137205 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $50137196, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12534299, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-50137204(%ebp)      # local array 'v2': 5 dimensions
    movl    $58,-50137200(%ebp)     #   dimension 1: 58 elements
    movl    $6,-50137196(%ebp)      #   dimension 2: 6 elements
    movl    $46,-50137192(%ebp)     #   dimension 3: 46 elements
    movl    $36,-50137188(%ebp)     #   dimension 4: 36 elements
    movl    $87,-50137184(%ebp)     #   dimension 5: 87 elements

    # function body
    movl    $13907, %eax            #   0:     mul    t3 <- 13907, 60581
    movl    $60581, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $32343, %eax            #   1:     add    t4 <- 32343, t3
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   2:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
    call    ReadInt                 #   4:     call   t5 <- ReadInt
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   5:     assign v1 <- t5
    movl    %eax, -124(%ebp)       
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $100, %eax              #   9:     if     100 >= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  10:     goto   7_if_false
l_f1_6_if_true:
l_f1_10_while_cond:
    jmp     l_f1_9                  #  13:     goto   9
    jmp     l_f1_10_while_cond      #  14:     goto   10_while_cond
l_f1_9:
    movl    $31870, %eax            #  16:     param  2 <- 31870
    pushl   %eax                   
    movl    $20672, %eax            #  17:     param  1 <- 20672
    pushl   %eax                   
    leal    -50137204(%ebp), %eax   #  18:     &()    t6 <- v2
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  19:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  20:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -109(%ebp)        
l_f1_14_while_cond:
    jmp     l_f1_13                 #  22:     goto   13
    leal    -50137204(%ebp), %eax   #  23:     &()    t8 <- v2
    movl    %eax, -116(%ebp)       
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    leal    -50137204(%ebp), %eax   #  25:     &()    t9 <- v2
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  26:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  27:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $57788, %eax            #  28:     mul    t11 <- 57788, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     add    t12 <- t11, 44127
    movl    $44127, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    leal    -50137204(%ebp), %eax   #  31:     &()    t13 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  33:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  34:     mul    t15 <- t12, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     add    t16 <- t15, 91736
    movl    $91736, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    leal    -50137204(%ebp), %eax   #  37:     &()    t17 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  38:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  39:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  40:     mul    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  41:     add    t20 <- t19, 99842
    movl    $99842, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  42:     param  1 <- 5
    pushl   %eax                   
    leal    -50137204(%ebp), %eax   #  43:     &()    t21 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  45:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  46:     mul    t23 <- t20, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  47:     add    t24 <- t23, 96236
    movl    $96236, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  48:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    -50137204(%ebp), %eax   #  49:     &()    t26 <- v2
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  50:     param  0 <- t26
    pushl   %eax                   
    call    DOFS                    #  51:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  52:     add    t28 <- t25, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -116(%ebp), %eax        #  53:     add    t29 <- t8, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $99, %eax               #  54:     assign @t29 <- 99
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_14_while_cond      #  55:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_5                  #  57:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $50137196, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]

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
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $100, %eax              #   3:     assign v3 <- 100
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   4:     if     98 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   7:     goto   5
l_f2_7_if_false:
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  11:     goto   10_while_cond
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $98, %eax               #  15:     assign v3 <- 98
    movb    %al, -21(%ebp)         
    jmp     l_f2_14                 #  16:     goto   14
l_f2_14:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_16                 #  19:     goto   16
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_16:
    movzbl  -13(%ebp), %eax         #  22:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  23:     call   t4 <- f1
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $51848, %eax            #   0:     sub    t0 <- 51848, 5313
    movl    $5313, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 72554
    movl    $72554, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 92760
    movl    $92760, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $100, %eax              #   7:     if     100 = 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
    jmp     l_test_2                #   8:     goto   2
l_test_4_while_body:
    movl    $73918, %eax            #  10:     if     73918 >= 4972 goto 7_if_true
    movl    $4972, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #  11:     goto   8_if_false
l_test_7_if_true:
    movl    $38304, %eax            #  13:     if     38304 > 8954 goto 11_if_true
    movl    $8954, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #  14:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  16:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_exit            
    jmp     l_test_6                #  20:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_3_while_cond     #  23:     goto   3_while_cond
l_test_2:
    call    dummyProcedure          #  25:     call   dummyProcedure
    jmp     l_test_exit            
    jmp     l_test_16               #  27:     goto   16
l_test_16:
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
