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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 47 of <array 36 of <array 98 of <array 91 of <array 30 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 58 of <array 60 of <array 89 of <array 97 of <array 82 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]
    #    -13(%ebp)   1  [ $v6       <bool> %ebp-13 ]

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
    jmp     l_f0_exit              
    movl    $1, %eax                #   1:     if     1 = 0 goto 2_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    movl    $0, %eax                #   4:     assign v6 <- 0
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   5:     assign v5 <- 97
    movb    %al, 20(%ebp)          
    jmp     l_f0_exit              
    jmp     l_f0_8                  #   7:     goto   8
l_f0_8:
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
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
    #    -13(%ebp)   1  [ $t28      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t29      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 34 of <array 34 of <array 15 of <array 93 of <array 75 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]
    #    -20(%ebp)   4  [ $v6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v7       <bool> %ebp-21 ]

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
    movl    $70684, %eax            #   0:     assign v6 <- 70684
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #   1:     if     100 >= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $1, %eax                #   7:     assign v7 <- 1
    movb    %al, -21(%ebp)         
    call    dummyProcedure          #   8:     call   dummyProcedure
    jmp     l_f1_0                  #   9:     goto   0
l_f1_0:
    call    dummyCHARfunc           #  11:     call   t28 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     return t28
    jmp     l_f1_exit              
l_f1_12_while_cond:
    call    dummyCHARfunc           #  14:     call   t29 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     if     t29 > 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_13_while_body     
    jmp     l_f1_11                 #  16:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  18:     goto   12_while_cond
l_f1_11:

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
    #    -16(%ebp)   4  [ $t28      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t29      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t30      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 18 of <array 81 of <array 42 of <array 39 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 46 of <array 33 of <array 44 of <array 3 of <array 71 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 88 of <array 18 of <array 77 of <array 18 of <array 82 of <bool>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $70623, %eax            #   1:     add    t28 <- 70623, 57352
    movl    $57352, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t29 <- t28, 74304
    movl    $74304, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t30 <- t29, 10065
    movl    $10065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $27180, %eax            #   4:     if     27180 # t30 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_5                  #  11:     goto   5
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  13:     goto   6_while_cond
l_f2_5:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <ptr(4) to <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <ptr(4) to <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t27      <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t3       <ptr(4) to <array 34 of <array 34 of <array 15 of <array 93 of <array 75 of <bool>>>>>>> %ebp-96 ]
    #    -97(%ebp)   1  [ $t4       <char> %ebp-97 ]
    #   -104(%ebp)   4  [ $t5       <ptr(4) to <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <ptr(4) to <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]

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
l_test_1_while_cond:
    jmp     l_test_1_while_cond     #   1:     goto   1_while_cond
    movl    $91183, %eax            #   2:     if     91183 # 71639 goto 6_if_true
    movl    $71639, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   3:     goto   7_if_false
l_test_6_if_true:
    call    dummyCHARfunc           #   5:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $0, %eax                #  10:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_15               #  11:     goto   15
l_test_15:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_17               #  14:     goto   17
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_17:
    movzbl  -14(%ebp), %eax         #  17:     if     t1 = 0 goto 12_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  18:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_21               #  20:     goto   21
l_test_21:
    movl    $82374, %eax            #  22:     if     82374 >= 68456 goto 25_if_true
    movl    $68456, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_25_if_true      
    jmp     l_test_26_if_false      #  23:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  25:     goto   24
l_test_26_if_false:
l_test_24:
l_test_29_while_cond:
    jmp     l_test_28               #  29:     goto   28
    jmp     l_test_29_while_cond    #  30:     goto   29_while_cond
l_test_28:
    jmp     l_test_exit            
l_test_33_while_cond:
    jmp     l_test_33_while_cond    #  34:     goto   33_while_cond
l_test_36_while_cond:
    jmp     l_test_35               #  36:     goto   35
    jmp     l_test_36_while_cond    #  37:     goto   36_while_cond
l_test_35:
    movl    $1, %eax                #  39:     if     1 # 1 goto 39_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_39_if_true      
    jmp     l_test_40_if_false      #  40:     goto   40_if_false
l_test_39_if_true:
    jmp     l_test_38               #  42:     goto   38
l_test_40_if_false:
l_test_38:
    movl    $98, %eax               #  45:     param  3 <- 98
    pushl   %eax                   
    movl    $99, %eax               #  46:     param  2 <- 99
    pushl   %eax                   
    leal    v3, %eax                #  47:     &()    t2 <- v3
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  48:     param  1 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  49:     &()    t3 <- v2
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  50:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  51:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -97(%ebp)         
    leal    v3, %eax                #  52:     &()    t5 <- v3
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  53:     param  1 <- 2
    pushl   %eax                   
    leal    v3, %eax                #  54:     &()    t6 <- v3
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  55:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  56:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $18761, %eax            #  57:     mul    t8 <- 18761, t7
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  58:     add    t9 <- t8, 80221
    movl    $80221, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  59:     param  1 <- 3
    pushl   %eax                   
    leal    v3, %eax                #  60:     &()    t10 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  61:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  62:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -120(%ebp), %eax        #  63:     mul    t12 <- t9, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  64:     add    t13 <- t12, 57073
    movl    $57073, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  65:     param  1 <- 4
    pushl   %eax                   
    leal    v3, %eax                #  66:     &()    t14 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  67:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  68:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  69:     mul    t16 <- t13, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  70:     add    t17 <- t16, 95606
    movl    $95606, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    leal    v3, %eax                #  72:     &()    t18 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  73:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  74:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  75:     mul    t20 <- t17, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  76:     add    t21 <- t20, 1700
    movl    $1700, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  77:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    leal    v3, %eax                #  78:     &()    t23 <- v3
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  79:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  80:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  81:     add    t25 <- t22, t24
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -104(%ebp), %eax        #  82:     add    t26 <- t5, t25
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $100, %eax              #  83:     assign @t26 <- 100
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  84:     call   t27 <- dummyBOOLfunc
    movb    %al, -89(%ebp)         
    jmp     l_test_11               #  85:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $108, %esp              # remove locals
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
    .align   4
v2:                                 # <array 34 of <array 34 of <array 15 of <array 93 of <array 75 of <bool>>>>>>
    .long    5
    .long   34
    .long   34
    .long   15
    .long   93
    .long   75
    .skip 120946500
v3:                                 # <array 81 of <array 58 of <array 27 of <array 64 of <array 20 of <char>>>>>>
    .long    5
    .long   81
    .long   58
    .long   27
    .long   64
    .long   20
    .skip 162362880








    # end of global data section
    #-----------------------------------------

    .end
##################################################
