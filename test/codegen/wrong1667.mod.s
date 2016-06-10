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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 41 of <array 90 of <array 68 of <array 71 of <array 36 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -17(%ebp)   1  [ $v3       <bool> %ebp-17 ]

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
    jmp     l_f0_exit              
    movl    $0, %eax                #   1:     assign v3 <- 0
    movb    %al, -17(%ebp)         
    call    dummyINTfunc            #   2:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]

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
    jmp     l_f1_1                  #   0:     goto   1
l_f1_1:
    movl    $1, %eax                #   2:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_13                 #   7:     goto   13
l_f1_13:
    jmp     l_f1_6                  #   9:     goto   6
    jmp     l_f1_6                  #  10:     goto   6
    jmp     l_f1_6                  #  11:     goto   6
l_f1_6:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #  14:     goto   8
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t3
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #  18:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t3       <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t4       <bool> %ebp-66 ]
    #    -67(%ebp)   1  [ $t5       <bool> %ebp-67 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 70 of <array 90 of <array 22 of <array 60 of <array 48 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -85(%ebp)   1  [ $v4       <bool> %ebp-85 ]

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
    call    f1                      #   0:     call   t2 <- f1
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
    movl    $100, %eax              #   2:     if     100 >= 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $90664, %eax            #   5:     if     90664 = 94516 goto 6
    movl    $94516, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -65(%ebp)         
l_f2_8:
    movzbl  -65(%ebp), %eax         #  13:     return t3
    jmp     l_f2_exit              
    movl    $98, %eax               #  14:     assign v3 <- 98
    movb    %al, 20(%ebp)          
    jmp     l_f2_1                  #  15:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $100, %eax              #  18:     if     100 > 98 goto 12_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  19:     goto   13_if_false
l_f2_12_if_true:
    movl    $99, %eax               #  21:     if     99 < 100 goto 16
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_16                
    jmp     l_f2_17                 #  22:     goto   17
l_f2_16:
    movl    $1, %eax                #  24:     assign t4 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f2_18                 #  25:     goto   18
l_f2_17:
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -66(%ebp)         
l_f2_18:
    movzbl  -66(%ebp), %eax         #  29:     return t4
    jmp     l_f2_exit              
    movl    $40142, %eax            #  30:     if     40142 = 82928 goto 21
    movl    $82928, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_21                
    jmp     l_f2_22                 #  31:     goto   22
l_f2_21:
    movl    $1, %eax                #  33:     assign t5 <- 1
    movb    %al, -67(%ebp)         
    jmp     l_f2_23                 #  34:     goto   23
l_f2_22:
    movl    $0, %eax                #  36:     assign t5 <- 0
    movb    %al, -67(%ebp)         
l_f2_23:
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  39:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  40:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $75156, %eax            #  41:     mul    t7 <- 75156, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  42:     add    t8 <- t7, 19332
    movl    $19332, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  45:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  46:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  47:     add    t11 <- t10, 56156
    movl    $56156, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  49:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  50:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  51:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  52:     add    t14 <- t13, 79886
    movl    $79886, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  54:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  55:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  56:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  57:     add    t17 <- t16, 63359
    movl    $63359, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  58:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  59:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  60:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  61:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  62:     add    t21 <- v1, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movzbl  -67(%ebp), %eax         #  63:     assign @t21 <- t5
    movl    -64(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_11                 #  64:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_2_while_cond     #   3:     goto   2_while_cond
l_test_1:
    movl    $100, %eax              #   5:     assign v0 <- 100
    movb    %al, v0                
    movl    $97, %eax               #   6:     if     97 < 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #   7:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #   9:     goto   10
l_test_12_if_false:
l_test_10:
l_test_15_while_cond:
    movl    $0, %eax                #  13:     if     0 = 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  14:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  16:     goto   15_while_cond
l_test_14:
    jmp     l_test_6                #  18:     goto   6
l_test_6:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  21:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  22:     assign v0 <- t1
    movb    %al, v0                

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
