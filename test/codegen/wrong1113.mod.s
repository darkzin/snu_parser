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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 9 of <array 56 of <array 99 of <array 32 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 3 of <array 11 of <array 19 of <array 24 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -36(%ebp)   4  [ $v3       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98192, %eax            #   0:     sub    t2 <- 98192, 50671
    movl    $50671, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v3 <- t2
    movl    %eax, -36(%ebp)        
    movl    $96053, %eax            #   2:     if     96053 < 38787 goto 2_if_true
    movl    $38787, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   6:     goto   5
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
l_f0_9_while_cond:
    jmp     l_f0_8                  #  10:     goto   8
    jmp     l_f0_9_while_cond       #  11:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_1                  #  13:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_12_while_cond:
    movl    $27466, %eax            #  17:     mul    t3 <- 27466, 9229
    movl    $9229, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     div    t4 <- t3, 70427
    movl    $70427, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t5 <- t4, 86266
    movl    $86266, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $57288, %eax            #  20:     sub    t6 <- 57288, 42598
    movl    $42598, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  21:     if     t5 < t6 goto 13_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_13_while_body     
    jmp     l_f0_11                 #  22:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  24:     goto   12_while_cond
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 4 of <array 48 of <array 20 of <array 40 of <char>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_3                  #   2:     goto   3
    jmp     l_f1_2_while_body       #   3:     goto   2_while_body
l_f1_3:
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     if     t2 < 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_7                 
    jmp     l_f1_8                  #  11:     goto   8
l_f1_7:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  14:     goto   9
l_f1_8:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  18:     assign v1 <- t3
    movb    %al, -21(%ebp)         
    jmp     l_f1_13_if_false        #  19:     goto   13_if_false
    call    ReadInt                 #  20:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  21:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  22:     call   WriteChar
    addl    $4, %esp               
    movl    $16654, %eax            #  23:     assign v2 <- 16654
    movl    %eax, -28(%ebp)        
    jmp     l_f1_17                 #  24:     goto   17
l_f1_17:
    jmp     l_f1_11                 #  26:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -64(%ebp)   4  [ $t21      <ptr(4) to <array 2 of <array 4 of <array 48 of <array 20 of <array 40 of <char>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t3       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t4       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t5       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t6       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 90 of <array 61 of <array 77 of <array 24 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -108(%ebp)   4  [ $v3       <int> %ebp-108 ]
    #   -307332(%ebp)  307224  [ $v4       <array 2 of <array 4 of <array 48 of <array 20 of <array 40 of <char>>>>>> %ebp-307332 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $307320, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $76830, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-307332(%ebp)        # local array 'v4': 5 dimensions
    movl    $2,-307328(%ebp)        #   dimension 1: 2 elements
    movl    $4,-307324(%ebp)        #   dimension 2: 4 elements
    movl    $48,-307320(%ebp)       #   dimension 3: 48 elements
    movl    $20,-307316(%ebp)       #   dimension 4: 20 elements
    movl    $40,-307312(%ebp)       #   dimension 5: 40 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $35552, %eax            #   1:     return 35552
    jmp     l_f2_exit              
    movl    $57256, %eax            #   2:     if     57256 > 98507 goto 5_if_true
    movl    $98507, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    movl    $33493, %eax            #   8:     assign v3 <- 33493
    movl    %eax, -108(%ebp)       
    movl    $42766, %eax            #   9:     return 42766
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_16                 #  13:     goto   16
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_17                 #  15:     goto   17
l_f2_16:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f2_17:
    movl    $0, %eax                #  19:     if     0 # t2 goto 11
    movzbl  -53(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_11                
    jmp     l_f2_12                 #  20:     goto   12
l_f2_11:
    movl    $1, %eax                #  22:     assign t3 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_13                 #  23:     goto   13
l_f2_12:
    movl    $0, %eax                #  25:     assign t3 <- 0
    movb    %al, -77(%ebp)         
l_f2_13:
    movl    $24013, %eax            #  27:     sub    t4 <- 24013, 94469
    movl    $94469, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  30:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  31:     mul    t6 <- t4, t5
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  32:     add    t7 <- t6, 11047
    movl    $11047, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  36:     mul    t9 <- t7, t8
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  37:     add    t10 <- t9, 33893
    movl    $33893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  38:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  41:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  42:     add    t13 <- t12, 21780
    movl    $21780, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  43:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  45:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  46:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  47:     add    t16 <- t15, 89546
    movl    $89546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  48:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  49:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  50:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  51:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  52:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -77(%ebp), %eax         #  53:     assign @t20 <- t3
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    leal    -307332(%ebp), %eax     #  54:     &()    t21 <- v4
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  55:     param  0 <- t21
    pushl   %eax                   
    call    f1                      #  56:     call   t22 <- f1
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  57:     div    t23 <- t22, 41928
    movl    $41928, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  58:     mul    t24 <- t23, 76571
    movl    $76571, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  59:     return t24
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $307320, %esp           # remove locals
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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   2:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
