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
    #    -13(%ebp)   1  [ $t29      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t30      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t31      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t32      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t33      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t34      <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 3 of <array 6 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 10 of <array 5 of <array 9 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t29 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    jmp     l_f0_1                  #   2:     goto   1
    jmp     l_f0_2_while_cond       #   3:     goto   2_while_cond
l_f0_1:
    movl    $91838, %eax            #   5:     sub    t30 <- 91838, 28753
    movl    $28753, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t31 <- t30, 81031
    movl    $81031, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     add    t32 <- t31, 24902
    movl    $24902, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     sub    t33 <- t32, 95668
    movl    $95668, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     sub    t34 <- t33, 32450
    movl    $32450, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     return t34
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t29      <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 2 of <array 10 of <array 5 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t29 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     assign v1 <- 99
    movb    %al, -14(%ebp)         
    movl    $97376, %eax            #   2:     param  0 <- 97376
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t29      <ptr(4) to <array 2 of <array 6 of <array 10 of <array 5 of <array 9 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t30      <ptr(4) to <array 1 of <array 8 of <array 3 of <array 6 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t31      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 1 of <array 5 of <array 3 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 3 of <array 6 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp+16 ]
    #   -1488(%ebp)  1464  [ $v3       <array 1 of <array 8 of <array 3 of <array 6 of <array 10 of <char>>>>>> %ebp-1488 ]
    #   -6912(%ebp)  5424  [ $v4       <array 2 of <array 6 of <array 10 of <array 5 of <array 9 of <bool>>>>>> %ebp-6912 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6900, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1725, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1488(%ebp)          # local array 'v3': 5 dimensions
    movl    $1,-1484(%ebp)          #   dimension 1: 1 elements
    movl    $8,-1480(%ebp)          #   dimension 2: 8 elements
    movl    $3,-1476(%ebp)          #   dimension 3: 3 elements
    movl    $6,-1472(%ebp)          #   dimension 4: 6 elements
    movl    $10,-1468(%ebp)         #   dimension 5: 10 elements
    movl    $5,-6912(%ebp)          # local array 'v4': 5 dimensions
    movl    $2,-6908(%ebp)          #   dimension 1: 2 elements
    movl    $6,-6904(%ebp)          #   dimension 2: 6 elements
    movl    $10,-6900(%ebp)         #   dimension 3: 10 elements
    movl    $5,-6896(%ebp)          #   dimension 4: 5 elements
    movl    $9,-6892(%ebp)          #   dimension 5: 9 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   4:     goto   6_while_cond
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    leal    -6912(%ebp), %eax       #   7:     &()    t29 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  1 <- t29
    pushl   %eax                   
    leal    -1488(%ebp), %eax       #   9:     &()    t30 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t30
    pushl   %eax                   
    call    f0                      #  11:     call   t31 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $75698, %eax            #  12:     if     75698 > 90543 goto 10_if_true
    movl    $90543, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    movl    $93003, %eax            #  15:     if     93003 <= 7823 goto 14_if_true
    movl    $7823, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  16:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  18:     goto   13
l_f2_15_if_false:
l_f2_13:
l_f2_18_while_cond:
    movl    $9284, %eax             #  22:     if     9284 < 1129 goto 19_while_body
    movl    $1129, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_19_while_body     
    jmp     l_f2_17                 #  23:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  25:     goto   18_while_cond
l_f2_17:
    movl    $16497, %eax            #  27:     return 16497
    jmp     l_f2_exit              
    movl    $77903, %eax            #  28:     return 77903
    jmp     l_f2_exit              
    movl    $23184, %eax            #  29:     if     23184 > 60840 goto 24_if_true
    movl    $60840, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  30:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  32:     goto   23
l_f2_25_if_false:
l_f2_23:
    jmp     l_f2_9                  #  35:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $6900, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <ptr(4) to <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 3 of <array 3 of <array 6 of <array 10 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <ptr(4) to <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <ptr(4) to <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 9 of <array 1 of <array 5 of <array 3 of <array 1 of <char>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t4       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t5       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t6       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <ptr(4) to <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <int> %ebp-128 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $116, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #   1:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    movl    $52926, %eax            #   4:     if     52926 = 77149 goto 4_if_true
    movl    $77149, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_4_if_true       
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_exit            
    leal    v2, %eax                #   8:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  2 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  10:     &()    t2 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  11:     param  1 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  12:     &()    t3 <- v0
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  13:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  14:     call   t4 <- f2
    addl    $12, %esp              
    movl    %eax, -108(%ebp)       
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
    jmp     l_test_3                #  17:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $29030, %eax            #  20:     mul    t5 <- 29030, 70246
    movl    $70246, %ebx           
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  21:     add    t6 <- t5, 64662
    movl    $64662, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    leal    v2, %eax                #  22:     &()    t7 <- v2
    movl    %eax, -120(%ebp)       
    movl    $2, %eax                #  23:     param  1 <- 2
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t8 <- v2
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  25:     param  0 <- t8
    pushl   %eax                   
    call    DIM                     #  26:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    $88308, %eax            #  27:     mul    t10 <- 88308, t9
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t11 <- t10, 2010
    movl    $2010, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    leal    v2, %eax                #  30:     &()    t12 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     param  0 <- t12
    pushl   %eax                   
    call    DIM                     #  32:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  33:     mul    t14 <- t11, t13
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     add    t15 <- t14, 2633
    movl    $2633, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  35:     param  1 <- 4
    pushl   %eax                   
    leal    v2, %eax                #  36:     &()    t16 <- v2
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  37:     param  0 <- t16
    pushl   %eax                   
    call    DIM                     #  38:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  39:     mul    t18 <- t15, t17
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  40:     add    t19 <- t18, 13726
    movl    $13726, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t20 <- v2
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  43:     param  0 <- t20
    pushl   %eax                   
    call    DIM                     #  44:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -60(%ebp), %eax         #  45:     mul    t22 <- t19, t21
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  46:     add    t23 <- t22, 90500
    movl    $90500, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  47:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    v2, %eax                #  48:     &()    t25 <- v2
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  49:     param  0 <- t25
    pushl   %eax                   
    call    DOFS                    #  50:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  51:     add    t27 <- t24, t26
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -120(%ebp), %eax        #  52:     add    t28 <- t7, t27
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -116(%ebp), %eax        #  53:     assign @t28 <- t6
    movl    -100(%ebp), %edi       
    movl    %eax, (%edi)           

l_test_exit:
    # epilogue
    addl    $116, %esp              # remove locals
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
v0:                                 # <array 9 of <array 1 of <array 5 of <array 3 of <array 1 of <char>>>>>>
    .long    5
    .long    9
    .long    1
    .long    5
    .long    3
    .long    1
    .skip  135
    .align   4
v1:                                 # <array 3 of <array 3 of <array 3 of <array 6 of <array 10 of <bool>>>>>>
    .long    5
    .long    3
    .long    3
    .long    3
    .long    6
    .long   10
    .skip 1620
v2:                                 # <array 10 of <array 8 of <array 4 of <array 10 of <array 2 of <int>>>>>>
    .long    5
    .long   10
    .long    8
    .long    4
    .long   10
    .long    2
    .skip 25600
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
