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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
    movl    $99, %eax               #   3:     if     99 = 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
l_f0_7_while_cond:
    jmp     l_f0_6                  #   7:     goto   6
    jmp     l_f0_7_while_cond       #   8:     goto   7_while_cond
l_f0_6:
    movl    $100, %eax              #  10:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  11:     goto   3_while_cond
l_f0_2:

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
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t3       <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t4       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t5       <bool> %ebp-81 ]
    #    -82(%ebp)   1  [ $t6       <char> %ebp-82 ]
    #    -83(%ebp)   1  [ $t7       <bool> %ebp-83 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 2 of <array 1 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 10 of <array 9 of <array 4 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 3 of <array 1 of <array 6 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #    -93(%ebp)   1  [ $v4       <char> %ebp-93 ]
    #    -94(%ebp)   1  [ $v5       <bool> %ebp-94 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $16037, %eax            #   1:     if     16037 <= 16453 goto 2_while_body
    movl    $16453, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $97, %eax               #   4:     assign v4 <- 97
    movb    %al, -93(%ebp)         
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $0, %eax                #   7:     param  3 <- 0
    pushl   %eax                   
    movl    $25416, %eax            #   8:     param  2 <- 25416
    pushl   %eax                   
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_12                 #  10:     goto   12
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f1_12:
    movzbl  -53(%ebp), %eax         #  13:     param  1 <- t2
    pushl   %eax                   
    movl    $99, %eax               #  14:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  15:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -73(%ebp)         
    movl    $1, %eax                #  16:     param  3 <- 1
    pushl   %eax                   
    movl    $92173, %eax            #  17:     sub    t4 <- 92173, 23140
    movl    $23140, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  18:     param  2 <- t4
    pushl   %eax                   
    movl    $1, %eax                #  19:     if     1 # 0 goto 14
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_14                
    jmp     l_f1_15                 #  20:     goto   15
l_f1_14:
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f1_16                 #  23:     goto   16
l_f1_15:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -81(%ebp)         
l_f1_16:
    movzbl  -81(%ebp), %eax         #  27:     param  1 <- t5
    pushl   %eax                   
    movl    $100, %eax              #  28:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  29:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -82(%ebp)         
    movzbl  -73(%ebp), %eax         #  30:     if     t3 > t6 goto 6
    movzbl  -82(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_6                 
    jmp     l_f1_7                  #  31:     goto   7
l_f1_6:
    movl    $1, %eax                #  33:     assign t7 <- 1
    movb    %al, -83(%ebp)         
    jmp     l_f1_8                  #  34:     goto   8
l_f1_7:
    movl    $0, %eax                #  36:     assign t7 <- 0
    movb    %al, -83(%ebp)         
l_f1_8:
    movl    $2, %eax                #  38:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  39:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  40:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $4322, %eax             #  41:     mul    t9 <- 4322, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  42:     add    t10 <- t9, 26204
    movl    $26204, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  44:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  45:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  46:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  47:     add    t13 <- t12, 67788
    movl    $67788, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  49:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  50:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  51:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  52:     add    t16 <- t15, 21427
    movl    $21427, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  54:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  55:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  56:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  57:     add    t19 <- t18, 26003
    movl    $26003, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  58:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  59:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  60:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  61:     add    t22 <- t20, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  62:     add    t23 <- v3, t22
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -83(%ebp), %eax         #  63:     assign @t23 <- t7
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyProcedure          #  64:     call   dummyProcedure

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -26(%ebp)   1  [ $v3       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $1, %eax                #   0:     param  3 <- 1
    pushl   %eax                   
    movl    $35012, %eax            #   1:     param  2 <- 35012
    pushl   %eax                   
    movl    $1, %eax                #   2:     param  1 <- 1
    pushl   %eax                   
    movl    $99, %eax               #   3:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #   4:     call   t2 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   5:     if     98 > t2 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   6:     goto   2
l_f2_1:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  13:     assign v3 <- t3
    movb    %al, -26(%ebp)         
    movl    $15448, %eax            #  14:     add    t4 <- 15448, 41653
    movl    $41653, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t5 <- t4, 20872
    movl    $20872, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     assign v2 <- t5
    movl    %eax, 12(%ebp)         
    call    dummyBOOLfunc           #  17:     call   t6 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    jmp     l_test_exit            
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 41673
    movl    $41673, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v0 <- t1
    movl    %eax, v0               
    movl    $99, %eax               #   4:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
