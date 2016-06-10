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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_3_if_true          #   2:     goto   3_if_true
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
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
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t35      <int> %ebp-116 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 65 of <array 99 of <array 93 of <array 86 of <array 40 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 52 of <array 13 of <array 12 of <array 98 of <array 19 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #   -117(%ebp)   1  [ $v4       <bool> %ebp-117 ]

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
    movl    $85134, %eax            #   0:     add    t10 <- 85134, 13396
    movl    $13396, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t11 <- t10, 52022
    movl    $52022, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   2:     call   t12 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t11 = t12 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_3:
    movzbl  -25(%ebp), %eax         #  11:     return t13
    jmp     l_f1_exit              
l_f1_6_while_cond:
    call    ReadInt                 #  13:     call   t14 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t15 <- t14, 90381
    movl    $90381, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     sub    t16 <- t15, 17234
    movl    $17234, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     add    t17 <- t16, 56035
    movl    $56035, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     if     t17 < 34112 goto 7_while_body
    movl    $34112, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_while_body      
    jmp     l_f1_5                  #  18:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  20:     goto   6_while_cond
l_f1_5:
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    $55140, %eax            #  25:     mul    t19 <- 55140, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    $80771, %eax            #  26:     sub    t20 <- 80771, 24121
    movl    $24121, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     add    t21 <- t20, 63216
    movl    $63216, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t22 <- t19, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  32:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  33:     add    t25 <- t24, 79429
    movl    $79429, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  37:     mul    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  38:     add    t28 <- t27, 72569
    movl    $72569, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  41:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  42:     mul    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  43:     add    t31 <- t30, 73756
    movl    $73756, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  44:     mul    t32 <- t31, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    8(%ebp), %eax           #  45:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  46:     call   t33 <- DOFS
    addl    $4, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  47:     add    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    8(%ebp), %eax           #  48:     add    t35 <- v1, t34
    movl    -112(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $0, %eax                #  49:     assign @t35 <- 0
    movl    -116(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $108, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 53 of <array 21 of <array 23 of <array 64 of <array 64 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 48 of <array 75 of <array 79 of <array 92 of <bool>>>>>>> %ebp+20 ]

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
    movl    $98, %eax               #   0:     if     98 >= 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t10
    movb    %al, 8(%ebp)           
    movl    $100, %eax              #   9:     if     100 > 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6                 
    jmp     l_f2_7                  #  10:     goto   7
l_f2_6:
    movl    $1, %eax                #  12:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  13:     goto   8
l_f2_7:
    movl    $0, %eax                #  15:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  17:     return t11
    jmp     l_f2_exit              
    jmp     l_f2_12                 #  18:     goto   12
    movl    $1, %eax                #  19:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_13                 #  20:     goto   13
l_f2_12:
    movl    $0, %eax                #  22:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_13:
    movzbl  -15(%ebp), %eax         #  24:     return t12
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 52 of <array 13 of <array 12 of <array 98 of <array 19 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <ptr(4) to <array 65 of <array 99 of <array 93 of <array 86 of <array 40 of <bool>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <bool> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
    movl    $79804, %eax            #   3:     sub    t1 <- 79804, 8309
    movl    $8309, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 78655
    movl    $78655, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t3 <- t2, 12071
    movl    $12071, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t4 <- t3, 54010
    movl    $54010, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     add    t5 <- t4, 26291
    movl    $26291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     add    t6 <- t5, 21437
    movl    $21437, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
    movl    $23593, %eax            #  11:     param  2 <- 23593
    pushl   %eax                   
    leal    v2, %eax                #  12:     &()    t7 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  13:     param  1 <- t7
    pushl   %eax                   
    leal    v1, %eax                #  14:     &()    t8 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  15:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  16:     call   t9 <- f1
    addl    $12, %esp              
    movb    %al, -49(%ebp)         
    movl    $100, %eax              #  17:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v1:                                 # <array 65 of <array 99 of <array 93 of <array 86 of <array 40 of <bool>>>>>>
    .long    5
    .long   65
    .long   99
    .long   93
    .long   86
    .long   40
    .skip 2058685200
v2:                                 # <array 52 of <array 13 of <array 12 of <array 98 of <array 19 of <int>>>>>>
    .long    5
    .long   52
    .long   13
    .long   12
    .long   98
    .long   19
    .skip 60418176








    # end of global data section
    #-----------------------------------------

    .end
##################################################
