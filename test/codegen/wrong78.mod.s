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
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
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
    #    -85(%ebp)   1  [ $t28      <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t29      <char> %ebp-86 ]
    #    -92(%ebp)   4  [ $t3       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t4       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t5       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t6       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t7       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t8       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t9       <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 1 of <array 5 of <array 9 of <char>>>>>>> %ebp+8 ]
    #   -117(%ebp)   1  [ $v1       <char> %ebp-117 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $108, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $27, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $10357, %eax            #   1:     add    t3 <- 10357, 45743
    movl    $45743, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #   2:     add    t4 <- t3, 78729
    movl    $78729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   3:     add    t5 <- t4, 47521
    movl    $47521, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   4:     sub    t6 <- t5, 22144
    movl    $22144, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   5:     sub    t7 <- t6, 20606
    movl    $20606, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   6:     sub    t8 <- t7, 45437
    movl    $45437, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #   7:     add    t9 <- t8, 78451
    movl    $78451, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $12837, %eax            #   8:     if     12837 <= t9 goto 2_while_body
    movl    -116(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_while_body:
    call    ReadInt                 #  11:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  14:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $284, %eax              #  18:     mul    t13 <- 284, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t14 <- t13, 24110
    movl    $24110, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t17 <- t16, 33741
    movl    $33741, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  28:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  29:     add    t20 <- t19, 10725
    movl    $10725, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  33:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  34:     add    t23 <- t22, 25732
    movl    $25732, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  35:     mul    t24 <- t23, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  37:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  38:     add    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t27 <- v0, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -17(%ebp), %eax         #  40:     assign @t27 <- t11
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $53794, %eax            #  41:     if     53794 >= 30979 goto 7_if_true
    movl    $30979, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  42:     goto   8_if_false
l_f0_7_if_true:
    call    dummyBOOLfunc           #  44:     call   t28 <- dummyBOOLfunc
    movb    %al, -85(%ebp)         
    movl    $48019, %eax            #  45:     return 48019
    jmp     l_f0_exit              
    movl    $66433, %eax            #  46:     return 66433
    jmp     l_f0_exit              
    movl    $41542, %eax            #  47:     return 41542
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  48:     call   t29 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    jmp     l_f0_6                  #  49:     goto   6
l_f0_8_if_false:
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $108, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]

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
    movl    $30104, %eax            #   0:     div    t3 <- 30104, 25456
    movl    $25456, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 59255
    movl    $59255, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_4                  #   3:     goto   4
l_f1_4:
    jmp     l_f1_1                  #   5:     goto   1
l_f1_1:
    jmp     l_f1_7_if_true          #   7:     goto   7_if_true
    jmp     l_f1_7_if_true          #   8:     goto   7_if_true
l_f1_7_if_true:
    movl    $73597, %eax            #  10:     return 73597
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  11:     goto   6
l_f1_6:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t3 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_3_while_body       #   4:     goto   3_while_body
    jmp     l_f2_3_while_body       #   5:     goto   3_while_body
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   7:     goto   2_while_cond
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
    jmp     l_test_3                #   3:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $97, %eax               #   6:     if     97 <= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7_if_true       
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   9:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  13:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_17_if_false      #  14:     goto   17_if_false
    jmp     l_test_15               #  15:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_18               #  18:     goto   18
l_test_18:
    movl    $59544, %eax            #  20:     if     59544 > 10573 goto 22_if_true
    movl    $10573, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_22_if_true      
    jmp     l_test_23_if_false      #  21:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  23:     goto   21
l_test_23_if_false:
l_test_21:
    movl    $98, %eax               #  26:     if     98 > 99 goto 26_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_26_if_true      
    jmp     l_test_27_if_false      #  27:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  29:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_10               #  32:     goto   10
l_test_10:
    jmp     l_test_1_while_cond     #  34:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #  36:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $48092, %eax            #  37:     assign v0 <- 48092
    movl    %eax, v0               
l_test_32_while_cond:
    movl    $0, %eax                #  39:     if     0 # 0 goto 33_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_33_while_body   
    jmp     l_test_31               #  40:     goto   31
l_test_33_while_body:
    jmp     l_test_35               #  42:     goto   35
l_test_35:
    jmp     l_test_exit            
    movl    $99, %eax               #  45:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_42_if_false      #  46:     goto   42_if_false
    jmp     l_test_40               #  47:     goto   40
l_test_42_if_false:
l_test_40:
    call    dummyCHARfunc           #  50:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_32_while_cond    #  51:     goto   32_while_cond
l_test_31:
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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
