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
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 44 of <array 19 of <array 18 of <array 93 of <array 73 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 79 of <array 85 of <array 62 of <array 74 of <int>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $99, %eax               #   0:     assign v4 <- 99
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 13 of <array 98 of <array 28 of <array 57 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $48092, %eax            #   2:     mul    t4 <- 48092, 14751
    movl    $14751, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t5 <- t4, 83741
    movl    $83741, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t6 <- t5, 92397
    movl    $92397, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t6
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <ptr(4) to <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <ptr(4) to <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #    -97(%ebp)   1  [ $t3       <bool> %ebp-97 ]
    #   -104(%ebp)   4  [ $t30      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t4       <ptr(4) to <array 11 of <array 79 of <array 85 of <array 62 of <array 74 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t5       <ptr(4) to <array 44 of <array 19 of <array 18 of <array 93 of <array 73 of <int>>>>>>> %ebp-112 ]
    #   -116(%ebp)   4  [ $t6       <ptr(4) to <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <int> %ebp-120 ]
    #   -121(%ebp)   1  [ $t8       <bool> %ebp-121 ]
    #   -128(%ebp)   4  [ $t9       <ptr(4) to <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>>> %ebp-128 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 11 of <array 26 of <array 55 of <array 41 of <array 40 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #   -113710112(%ebp)  113709984  [ $v4       <array 84 of <array 65 of <array 89 of <array 26 of <array 9 of <bool>>>>>> %ebp-113710112 ]
    #   -522353624(%ebp)  408643512  [ $v5       <array 44 of <array 19 of <array 18 of <array 93 of <array 73 of <int>>>>>> %ebp-522353624 ]
    #   -1877924128(%ebp)  1355570504  [ $v6       <array 11 of <array 79 of <array 85 of <array 62 of <array 74 of <int>>>>>> %ebp-1877924128 ]
    #   -1877924129(%ebp)   1  [ $v7       <bool> %ebp-1877924129 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1877924120, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $469481030, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-113710112(%ebp)     # local array 'v4': 5 dimensions
    movl    $84,-113710108(%ebp)    #   dimension 1: 84 elements
    movl    $65,-113710104(%ebp)    #   dimension 2: 65 elements
    movl    $89,-113710100(%ebp)    #   dimension 3: 89 elements
    movl    $26,-113710096(%ebp)    #   dimension 4: 26 elements
    movl    $9,-113710092(%ebp)     #   dimension 5: 9 elements
    movl    $5,-522353624(%ebp)     # local array 'v5': 5 dimensions
    movl    $44,-522353620(%ebp)    #   dimension 1: 44 elements
    movl    $19,-522353616(%ebp)    #   dimension 2: 19 elements
    movl    $18,-522353612(%ebp)    #   dimension 3: 18 elements
    movl    $93,-522353608(%ebp)    #   dimension 4: 93 elements
    movl    $73,-522353604(%ebp)    #   dimension 5: 73 elements
    movl    $5,-1877924128(%ebp)    # local array 'v6': 5 dimensions
    movl    $11,-1877924124(%ebp)   #   dimension 1: 11 elements
    movl    $79,-1877924120(%ebp)   #   dimension 2: 79 elements
    movl    $85,-1877924116(%ebp)   #   dimension 3: 85 elements
    movl    $62,-1877924112(%ebp)   #   dimension 4: 62 elements
    movl    $74,-1877924108(%ebp)   #   dimension 5: 74 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movl    $97, %eax               #   1:     if     97 > t2 goto 1
    movzbl  -53(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -97(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -97(%ebp)         
l_f2_3:
    movzbl  -97(%ebp), %eax         #   9:     return t3
    jmp     l_f2_exit              
    leal    -1877924128(%ebp), %eax #  10:     &()    t4 <- v6
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  11:     param  2 <- t4
    pushl   %eax                   
    leal    -522353624(%ebp), %eax  #  12:     &()    t5 <- v5
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  13:     param  1 <- t5
    pushl   %eax                   
    leal    -113710112(%ebp), %eax  #  14:     &()    t6 <- v4
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  15:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  16:     call   t7 <- f0
    addl    $12, %esp              
    movl    %eax, -120(%ebp)       
    jmp     l_f2_7                  #  17:     goto   7
l_f2_7:
    movl    $1, %eax                #  19:     assign t8 <- 1
    movb    %al, -121(%ebp)        
    jmp     l_f2_9                  #  20:     goto   9
    movl    $0, %eax                #  21:     assign t8 <- 0
    movb    %al, -121(%ebp)        
l_f2_9:
    leal    -113710112(%ebp), %eax  #  23:     &()    t9 <- v4
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    leal    -113710112(%ebp), %eax  #  25:     &()    t10 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  26:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  27:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $8986, %eax             #  28:     mul    t12 <- 8986, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     add    t13 <- t12, 28758
    movl    $28758, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  30:     param  1 <- 3
    pushl   %eax                   
    leal    -113710112(%ebp), %eax  #  31:     &()    t14 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  34:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     add    t17 <- t16, 51564
    movl    $51564, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    leal    -113710112(%ebp), %eax  #  37:     &()    t18 <- v4
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  38:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  39:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  40:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     add    t21 <- t20, 90000
    movl    $90000, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  42:     param  1 <- 5
    pushl   %eax                   
    leal    -113710112(%ebp), %eax  #  43:     &()    t22 <- v4
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  44:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  45:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  46:     mul    t24 <- t21, t23
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  47:     add    t25 <- t24, 39539
    movl    $39539, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  48:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    -113710112(%ebp), %eax  #  49:     &()    t27 <- v4
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  50:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  51:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  52:     add    t29 <- t26, t28
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -128(%ebp), %eax        #  53:     add    t30 <- t9, t29
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movzbl  -121(%ebp), %eax        #  54:     assign @t30 <- t8
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $1877924120, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
    leal    _str_1, %eax            #   1:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_4                #   4:     goto   4
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_5:
    movzbl  -17(%ebp), %eax         #  10:     assign v0 <- t1
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
