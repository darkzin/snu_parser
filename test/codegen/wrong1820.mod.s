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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
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
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -109(%ebp)   1  [ $t34      <bool> %ebp-109 ]
    #   -110(%ebp)   1  [ $t8       <bool> %ebp-110 ]
    #   -111(%ebp)   1  [ $t9       <char> %ebp-111 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 60 of <array 5 of <array 56 of <array 63 of <array 34 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 40 of <array 10 of <array 19 of <array 15 of <array 77 of <char>>>>>>> %ebp+12 ]
    #   -112(%ebp)   1  [ $v3       <char> %ebp-112 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
    jmp     l_f0_3                  #   2:     goto   3
l_f0_5_if_false:
l_f0_3:
    movl    $0, %eax                #   5:     return 0
    jmp     l_f0_exit              
    movl    $99, %eax               #   6:     if     99 > 100 goto 8
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_8                 
    jmp     l_f0_9                  #   7:     goto   9
l_f0_8:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -110(%ebp)        
    jmp     l_f0_10                 #  10:     goto   10
l_f0_9:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -110(%ebp)        
l_f0_10:
    movzbl  -110(%ebp), %eax        #  14:     return t8
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  15:     call   t9 <- dummyCHARfunc
    movb    %al, -111(%ebp)        
    jmp     l_f0_0                  #  16:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  19:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $26644, %eax            #  23:     mul    t12 <- 26644, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $37298, %eax            #  24:     sub    t13 <- 37298, 50358
    movl    $50358, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     sub    t14 <- t13, 16360
    movl    $16360, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     sub    t15 <- t14, 31282
    movl    $31282, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t16 <- t15, 13395
    movl    $13395, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t17 <- t12, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  30:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  31:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  32:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     add    t20 <- t19, 53490
    movl    $53490, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  35:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  36:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  37:     mul    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  38:     add    t23 <- t22, 77250
    movl    $77250, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  40:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  41:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  42:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  43:     add    t26 <- t25, 64973
    movl    $64973, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  44:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  45:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  46:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  47:     add    t29 <- t27, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    12(%ebp), %eax          #  48:     add    t30 <- v2, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movzbl  -13(%ebp), %eax         #  49:     assign @t30 <- t10
    movl    -96(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $86675, %eax            #  50:     div    t31 <- 86675, 96388
    movl    $96388, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  51:     div    t32 <- t31, 73365
    movl    $73365, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    $55696, %eax            #  52:     sub    t33 <- 55696, t32
    movl    -104(%ebp), %ebx       
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  53:     if     t33 # 81142 goto 15
    movl    $81142, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_15                
    jmp     l_f0_16                 #  54:     goto   16
l_f0_15:
    movl    $1, %eax                #  56:     assign t34 <- 1
    movb    %al, -109(%ebp)        
    jmp     l_f0_17                 #  57:     goto   17
l_f0_16:
    movl    $0, %eax                #  59:     assign t34 <- 0
    movb    %al, -109(%ebp)        
l_f0_17:
    movzbl  -109(%ebp), %eax        #  61:     return t34
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $100, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 88 of <array 86 of <array 14 of <array 15 of <array 71 of <char>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_2_if_true          #   1:     goto   2_if_true
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $95188, %eax            #   4:     return 95188
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyBOOLfunc           #   8:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t9 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  10:     goto   8_if_false
l_f1_7_if_true:
    movl    $99, %eax               #  12:     if     99 >= 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  13:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  15:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_6                  #  18:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 65 of <array 55 of <array 33 of <array 26 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 23 of <array 91 of <array 34 of <array 31 of <array 25 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     assign v2 <- t8
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #   2:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   3:     assign v1 <- t9
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   4:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t10 < 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   6:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_2                  #   8:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 40 of <array 10 of <array 19 of <array 15 of <array 77 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 60 of <array 5 of <array 56 of <array 63 of <array 34 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <bool> %ebp-38 ]

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
    jmp     l_test_exit            
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
l_test_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     if     t0 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   6:     goto   3_while_cond
    call    dummyINTfunc            #   7:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t2 <- t1, 81582
    movl    $81582, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     div    t3 <- t2, 77022
    movl    $77022, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     assign v1 <- t3
    movl    %eax, v1               
    leal    v3, %eax                #  11:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     param  1 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  13:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  15:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
l_test_9_while_cond:
    jmp     l_test_12               #  17:     goto   12
l_test_12:
    movl    $1, %eax                #  19:     assign t7 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_test_14               #  20:     goto   14
    movl    $0, %eax                #  21:     assign t7 <- 0
    movb    %al, -38(%ebp)         
l_test_14:
    movl    $1, %eax                #  23:     if     1 = t7 goto 10_while_body
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  24:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  26:     goto   9_while_cond
l_test_8:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <array 60 of <array 5 of <array 56 of <array 63 of <array 34 of <bool>>>>>>
    .long    5
    .long   60
    .long    5
    .long   56
    .long   63
    .long   34
    .skip 35985600
v3:                                 # <array 40 of <array 10 of <array 19 of <array 15 of <array 77 of <char>>>>>>
    .long    5
    .long   40
    .long   10
    .long   19
    .long   15
    .long   77
    .skip 8778000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
