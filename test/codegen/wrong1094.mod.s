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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 93 of <array 45 of <array 10 of <array 48 of <array 58 of <int>>>>>>> %ebp+12 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   2:     goto   4
    jmp     l_f0_4                  #   3:     goto   4
    movl    $28612, %eax            #   4:     if     28612 >= 88614 goto 3
    movl    $88614, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_3                 
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_5                  #   8:     goto   5
l_f0_4:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_5:
    movzbl  -14(%ebp), %eax         #  12:     return t4
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 68 of <array 83 of <array 68 of <array 27 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_11_while_cond      #   8:     goto   11_while_cond
l_f1_14_while_cond:
    jmp     l_f1_13                 #  10:     goto   13
    jmp     l_f1_14_while_cond      #  11:     goto   14_while_cond
l_f1_13:
    call    dummyBOOLfunc           #  13:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_18_while_cond:
    movl    $1, %eax                #  15:     if     1 = 0 goto 19_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_19_while_body     
    jmp     l_f1_17                 #  16:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  18:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_7                  #  20:     goto   7
l_f1_7:

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
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 60 of <array 8 of <array 54 of <array 76 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -97(%ebp)   1  [ $v3       <bool> %ebp-97 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98, %eax               #   0:     if     98 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    movl    $99, %eax               #   4:     if     99 >= 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_6_while_body      
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $49406, %eax            #  12:     mul    t4 <- 49406, t3
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  13:     add    t5 <- t4, 92250
    movl    $92250, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  17:     mul    t7 <- t5, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  18:     add    t8 <- t7, 91516
    movl    $91516, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  22:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 12390
    movl    $12390, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  27:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  28:     add    t14 <- t13, 28327
    movl    $28327, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  31:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  32:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  33:     add    t18 <- v1, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $97, %eax               #  34:     assign @t18 <- 97
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $49168, %eax            #  35:     if     49168 >= 56650 goto 10
    movl    $56650, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10                
    jmp     l_f2_11                 #  36:     goto   11
l_f2_10:
    movl    $1, %eax                #  38:     assign t19 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f2_12                 #  39:     goto   12
l_f2_11:
    movl    $0, %eax                #  41:     assign t19 <- 0
    movb    %al, -49(%ebp)         
l_f2_12:
    movzbl  -49(%ebp), %eax         #  43:     assign v3 <- t19
    movb    %al, -97(%ebp)         
    movl    $97, %eax               #  44:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  45:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_17_if_false        #  48:     goto   17_if_false
    call    dummyINTfunc            #  49:     call   t20 <- dummyINTfunc
    movl    %eax, -56(%ebp)        
    jmp     l_f2_15                 #  50:     goto   15
l_f2_17_if_false:
l_f2_15:
l_f2_21_while_cond:
    movl    $66210, %eax            #  54:     mul    t21 <- 66210, 93167
    movl    $93167, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  55:     div    t22 <- t21, 49190
    movl    $49190, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  56:     mul    t23 <- t22, 86340
    movl    $86340, %ebx           
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  57:     if     t23 < 92807 goto 22_while_body
    movl    $92807, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_22_while_body     
    jmp     l_f2_20                 #  58:     goto   20
l_f2_22_while_body:
    movl    $15223, %eax            #  60:     if     15223 > 21355 goto 25_if_true
    movl    $21355, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_25_if_true        
    jmp     l_f2_26_if_false        #  61:     goto   26_if_false
l_f2_25_if_true:
    jmp     l_f2_24                 #  63:     goto   24
l_f2_26_if_false:
l_f2_24:
l_f2_29_while_cond:
    movl    $97, %eax               #  67:     if     97 # 100 goto 30_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_30_while_body     
    jmp     l_f2_28                 #  68:     goto   28
l_f2_30_while_body:
    jmp     l_f2_29_while_cond      #  70:     goto   29_while_cond
l_f2_28:
    jmp     l_f2_21_while_cond      #  72:     goto   21_while_cond
l_f2_20:

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 <= t0 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v1 <- t1
    movb    %al, v1                
    movl    $97, %eax               #  11:     assign v0 <- 97
    movb    %al, v0                
    call    WriteLn                 #  12:     call   WriteLn
    movl    $86697, %eax            #  13:     if     86697 > 63723 goto 12_if_true
    movl    $63723, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_12_if_true      
    jmp     l_test_13_if_false      #  14:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  16:     goto   11
l_test_13_if_false:
l_test_11:
    movl    $99, %eax               #  19:     if     99 < 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_if_true      
    jmp     l_test_17_if_false      #  20:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  22:     goto   15
l_test_17_if_false:
l_test_15:
    movl    $1, %eax                #  25:     assign v1 <- 1
    movb    %al, v1                
l_test_21_while_cond:
    movl    $97, %eax               #  27:     if     97 > 100 goto 22_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_22_while_body   
    jmp     l_test_20               #  28:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  30:     goto   21_while_cond
l_test_20:
    movl    $98, %eax               #  32:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_6                #  33:     goto   6
l_test_6:
    movl    $98, %eax               #  35:     if     98 <= 97 goto 26
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_26              
    jmp     l_test_27               #  36:     goto   27
l_test_26:
    movl    $1, %eax                #  38:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_28               #  39:     goto   28
l_test_27:
    movl    $0, %eax                #  41:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_28:
    movzbl  -15(%ebp), %eax         #  43:     assign v1 <- t2
    movb    %al, v1                

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
