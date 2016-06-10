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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t18      <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t19      <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 10 of <array 69 of <array 49 of <array 30 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 78 of <array 99 of <array 27 of <array 55 of <array 53 of <bool>>>>>>> %ebp+20 ]
    #    -88(%ebp)   4  [ $v5       <int> %ebp-88 ]

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
    movl    $1, %eax                #   0:     return 1
    jmp     l_f0_exit              
    movl    $100, %eax              #   1:     if     100 # 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $47260, %eax            #  10:     mul    t3 <- 47260, t2
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  11:     add    t4 <- t3, 26545
    movl    $26545, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  15:     mul    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  16:     add    t7 <- t6, 24229
    movl    $24229, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  20:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  21:     add    t10 <- t9, 75876
    movl    $75876, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  25:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 98439
    movl    $98439, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t14 <- t13, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  28:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  29:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  31:     add    t17 <- v1, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $2999, %eax             #  32:     assign @t17 <- 2999
    movl    -44(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $56383, %eax            #  33:     if     56383 <= 91749 goto 10
    movl    $91749, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  34:     goto   11
l_f0_10:
    movl    $1, %eax                #  36:     assign t18 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f0_12                 #  37:     goto   12
l_f0_11:
    movl    $0, %eax                #  39:     assign t18 <- 0
    movb    %al, -45(%ebp)         
l_f0_12:
    movzbl  -45(%ebp), %eax         #  41:     return t18
    jmp     l_f0_exit              
l_f0_15_while_cond:
    jmp     l_f0_14                 #  43:     goto   14
    jmp     l_f0_15_while_cond      #  44:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_0                  #  46:     goto   0
l_f0_0:
    jmp     l_f0_21                 #  48:     goto   21
    jmp     l_f0_21                 #  49:     goto   21
l_f0_21:
    movl    $1, %eax                #  51:     assign t19 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f0_23                 #  52:     goto   23
    movl    $0, %eax                #  53:     assign t19 <- 0
    movb    %al, -46(%ebp)         
l_f0_23:
    movl    $1, %eax                #  55:     if     1 = t19 goto 18_if_true
    movzbl  -46(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_18_if_true        
    jmp     l_f0_19_if_false        #  56:     goto   19_if_false
l_f0_18_if_true:
    movl    $1, %eax                #  58:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_17                 #  59:     goto   17
l_f0_19_if_false:
l_f0_17:
    call    dummyCHARfunc           #  62:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #  63:     assign v2 <- t20
    movb    %al, 12(%ebp)          

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -40(%ebp)   4  [ $v2       <int> %ebp-40 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $93012, %eax            #   1:     add    t2 <- 93012, 2346
    movl    $2346, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t3 <- t2, 91855
    movl    $91855, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t4 <- t3, 61039
    movl    $61039, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t5 <- t4, 99348
    movl    $99348, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t6 <- t5, 18206
    movl    $18206, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     assign v2 <- t6
    movl    %eax, -40(%ebp)        
    movl    $0, %eax                #   7:     if     0 = 0 goto 3_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   8:     goto   4_if_false
l_f1_3_if_true:
    movl    $100, %eax              #  10:     return 100
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  11:     call   t7 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  12:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  13:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 78 of <array 99 of <array 27 of <array 55 of <array 53 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 35 of <array 10 of <array 69 of <array 49 of <array 30 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #   -142002052(%ebp)  142002024  [ $v2       <array 35 of <array 10 of <array 69 of <array 49 of <array 30 of <int>>>>>> %ebp-142002052 ]
    #   -749762088(%ebp)  607760034  [ $v3       <array 78 of <array 99 of <array 27 of <array 55 of <array 53 of <bool>>>>>> %ebp-749762088 ]
    #   -749762089(%ebp)   1  [ $v4       <char> %ebp-749762089 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $749762080, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $187440520, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-142002052(%ebp)     # local array 'v2': 5 dimensions
    movl    $35,-142002048(%ebp)    #   dimension 1: 35 elements
    movl    $10,-142002044(%ebp)    #   dimension 2: 10 elements
    movl    $69,-142002040(%ebp)    #   dimension 3: 69 elements
    movl    $49,-142002036(%ebp)    #   dimension 4: 49 elements
    movl    $30,-142002032(%ebp)    #   dimension 5: 30 elements
    movl    $5,-749762088(%ebp)     # local array 'v3': 5 dimensions
    movl    $78,-749762084(%ebp)    #   dimension 1: 78 elements
    movl    $99,-749762080(%ebp)    #   dimension 2: 99 elements
    movl    $27,-749762076(%ebp)    #   dimension 3: 27 elements
    movl    $55,-749762072(%ebp)    #   dimension 4: 55 elements
    movl    $53,-749762068(%ebp)    #   dimension 5: 53 elements

    # function body
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t2
    movb    %al, 8(%ebp)           
    jmp     l_f2_9                  #   9:     goto   9
l_f2_9:
    leal    -749762088(%ebp), %eax  #  11:     &()    t3 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  3 <- t3
    pushl   %eax                   
    movl    $98, %eax               #  13:     param  2 <- 98
    pushl   %eax                   
    movl    $100, %eax              #  14:     param  1 <- 100
    pushl   %eax                   
    leal    -142002052(%ebp), %eax  #  15:     &()    t4 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  17:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movl    $97, %eax               #  18:     assign v4 <- 97
    movb    %al, -749762089(%ebp)  
    jmp     l_f2_6                  #  19:     goto   6
l_f2_6:
    call    dummyBOOLfunc           #  21:     call   t6 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         

l_f2_exit:
    # epilogue
    addl    $749762080, %esp        # remove locals
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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_5                #   4:     goto   5
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_5:
    movzbl  -14(%ebp), %eax         #   7:     assign v1 <- t1
    movb    %al, v1                
l_test_8_while_cond:
    jmp     l_test_7                #   9:     goto   7
    jmp     l_test_exit            
    jmp     l_test_8_while_cond     #  11:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
