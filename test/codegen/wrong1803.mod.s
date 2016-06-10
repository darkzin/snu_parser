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
    #    -13(%ebp)   1  [ $t27      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t28      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <bool> %ebp-15 ]

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
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_0                  #   1:     goto   0
l_f0_0:
    call    dummyCHARfunc           #   3:     call   t27 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   4:     call   t28 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     return t28
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
    #    -16(%ebp)   4  [ $t27      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t28      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t29      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t30      <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 32 of <array 73 of <array 87 of <array 33 of <array 69 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_1_while_cond       #   2:     goto   1_while_cond
l_f1_0:
    movl    $43975, %eax            #   4:     add    t27 <- 43975, 25213
    movl    $25213, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $79793, %eax            #   5:     mul    t28 <- 79793, 40573
    movl    $40573, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   6:     if     t27 <= t28 goto 8
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_8                 
    jmp     l_f1_9                  #   7:     goto   9
l_f1_8:
    movl    $1, %eax                #   9:     assign t29 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_10                 #  10:     goto   10
l_f1_9:
    movl    $0, %eax                #  12:     assign t29 <- 0
    movb    %al, -21(%ebp)         
l_f1_10:
    movzbl  -21(%ebp), %eax         #  14:     return t29
    jmp     l_f1_exit              
    leal    _str_1, %eax            #  15:     &()    t30 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  0 <- t30
    pushl   %eax                   
    call    WriteStr                #  17:     call   WriteStr
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t27      <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   1:     return 98
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t27 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     return t27
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t2       <bool> %ebp-61 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <ptr(4) to <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t4       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <ptr(4) to <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <ptr(4) to <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>> %ebp-108 ]
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
    movl    $57745, %eax            #   0:     param  1 <- 57745
    pushl   %eax                   
    leal    v1, %eax                #   1:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   3:     call   t1 <- f2
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movl    $97, %eax               #   4:     if     97 = t1 goto 1
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   5:     goto   2
l_test_1:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_test_3                #   8:     goto   3
l_test_2:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -61(%ebp)         
l_test_3:
    movzbl  -61(%ebp), %eax         #  12:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $77199, %eax            #  14:     div    t3 <- 77199, 73802
    movl    $73802, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  15:     mul    t4 <- t3, 89263
    movl    $89263, %ebx           
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    leal    v1, %eax                #  16:     &()    t5 <- v1
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  17:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  18:     &()    t6 <- v1
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  19:     param  0 <- t6
    pushl   %eax                   
    call    DIM                     #  20:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $64785, %eax            #  21:     mul    t8 <- 64785, t7
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  22:     add    t9 <- t8, 55033
    movl    $55033, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  24:     &()    t10 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  26:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -120(%ebp), %eax        #  27:     mul    t12 <- t9, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     add    t13 <- t12, 86425
    movl    $86425, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  29:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  30:     &()    t14 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  32:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  33:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t17 <- t16, 59080
    movl    $59080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  36:     &()    t18 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  37:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  38:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  39:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  40:     add    t21 <- t20, 38958
    movl    $38958, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  41:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v1, %eax                #  42:     &()    t23 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  43:     param  0 <- t23
    pushl   %eax                   
    call    DOFS                    #  44:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  45:     add    t25 <- t22, t24
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -104(%ebp), %eax        #  46:     add    t26 <- t5, t25
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -100(%ebp), %eax        #  47:     assign @t26 <- t4
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <array 10 of <array 24 of <array 62 of <array 77 of <array 79 of <int>>>>>>
    .long    5
    .long   10
    .long   24
    .long   62
    .long   77
    .long   79
    .skip 362060160
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
