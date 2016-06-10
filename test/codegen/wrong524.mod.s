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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 9 of <array 5 of <array 3 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    leal    _str_1, %eax            #   0:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_2_if_true          #   3:     goto   2_if_true
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   7:     goto   5
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
l_f0_5:
    movl    $85130, %eax            #  10:     if     85130 >= 86609 goto 9
    movl    $86609, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9                 
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f0_11:
    movzbl  -17(%ebp), %eax         #  18:     assign v4 <- t4
    movb    %al, 20(%ebp)          
    jmp     l_f0_1                  #  19:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyBOOLfunc           #  22:     call   t5 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     return 100
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $53077, %eax            #   3:     if     53077 # 92762 goto 4_while_body
    movl    $92762, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_4_while_body      
    jmp     l_f1_2                  #   4:     goto   2
l_f1_4_while_body:
    movl    $58142, %eax            #   6:     assign v1 <- 58142
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   7:     assign v2 <- 0
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #   8:     return 97
    jmp     l_f1_exit              
    movl    $99, %eax               #   9:     return 99
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  10:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t4       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t5       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t6       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t7       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t8       <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t9       <int> %ebp-124 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 9 of <array 4 of <array 1 of <char>>>>>>> %ebp+8 ]
    #   -125(%ebp)   1  [ $v2       <char> %ebp-125 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $116, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     if     100 >= 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
l_f2_8_while_cond:
    movl    $76638, %eax            #   8:     if     76638 >= 99033 goto 9_while_body
    movl    $99033, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_9_while_body      
    jmp     l_f2_7                  #   9:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  11:     goto   8_while_cond
l_f2_7:
    movl    $2, %eax                #  13:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $73388, %eax            #  16:     mul    t4 <- 73388, t3
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  17:     add    t5 <- t4, 25324
    movl    $25324, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $3, %eax                #  18:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  21:     mul    t7 <- t5, t6
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  22:     add    t8 <- t7, 58222
    movl    $58222, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $4, %eax                #  23:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  26:     mul    t10 <- t8, t9
    movl    -124(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  27:     add    t11 <- t10, 66882
    movl    $66882, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  28:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  31:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t14 <- t13, 13430
    movl    $13430, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  35:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  36:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  37:     add    t18 <- v1, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $97, %eax               #  38:     assign @t18 <- 97
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_13_while_cond:
    movl    $97, %eax               #  40:     if     97 >= 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_14_while_body     
    jmp     l_f2_12                 #  41:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  43:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_0                  #  45:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $7558, %eax             #  48:     mul    t19 <- 7558, 89603
    movl    $89603, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  49:     div    t20 <- t19, 50048
    movl    $50048, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  50:     mul    t21 <- t20, 77220
    movl    $77220, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  51:     div    t22 <- t21, 49981
    movl    $49981, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  52:     mul    t23 <- t22, 9661
    movl    $9661, %ebx            
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  53:     add    t24 <- t23, 52850
    movl    $52850, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  54:     sub    t25 <- t24, 37332
    movl    $37332, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  55:     sub    t26 <- t25, 63551
    movl    $63551, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  56:     sub    t27 <- t26, 3538
    movl    $3538, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  57:     return t27
    jmp     l_f2_exit              
    movl    $59617, %eax            #  58:     sub    t28 <- 59617, 99030
    movl    $99030, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $88978, %eax            #  59:     div    t29 <- 88978, 33282
    movl    $33282, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  60:     sub    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  61:     return t30
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $116, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_0                #   2:     goto   0
l_test_0:
l_test_6_while_cond:
    movl    $97, %eax               #   5:     if     97 <= 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_exit            
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:
    call    dummyCHARfunc           #  11:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  12:     assign v0 <- t1
    movb    %al, v0                
    call    dummyBOOLfunc           #  13:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movl    $100, %eax              #  14:     assign v0 <- 100
    movb    %al, v0                
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
