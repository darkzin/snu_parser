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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 99 of <array 9 of <array 3 of <array 64 of <array 72 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    jmp     l_f0_3                  #   0:     goto   3
l_f0_3:
    jmp     l_f0_exit              
l_f0_8_while_cond:
    movl    $5374, %eax             #   4:     if     5374 >= 33933 goto 9_while_body
    movl    $33933, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_while_body      
    jmp     l_f0_7                  #   5:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   7:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_0:
    call    dummyINTfunc            #  11:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #  12:     call   t11 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #   -101(%ebp)   1  [ $t32      <char> %ebp-101 ]
    #   -102(%ebp)   1  [ $t33      <bool> %ebp-102 ]
    #   -103(%ebp)   1  [ $t34      <bool> %ebp-103 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 34 of <array 17 of <array 2 of <array 20 of <array 13 of <int>>>>>>> %ebp+8 ]
    #   -108(%ebp)   4  [ $v1       <int> %ebp-108 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $22740, %eax            #   0:     sub    t10 <- 22740, 58136
    movl    $58136, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $32914, %eax            #   1:     div    t11 <- 32914, 16792
    movl    $16792, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t12 <- t11, 57390
    movl    $57390, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t13 <- t12, 85558
    movl    $85558, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     mul    t14 <- t13, 45756
    movl    $45756, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t15 <- t10, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    $74155, %eax            #   9:     mul    t17 <- 74155, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  10:     add    t18 <- t17, 27633
    movl    $27633, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  14:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  15:     add    t21 <- t20, 89969
    movl    $89969, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  19:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  20:     add    t24 <- t23, 71969
    movl    $71969, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  24:     mul    t26 <- t24, t25
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  25:     add    t27 <- t26, 64436
    movl    $64436, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  26:     mul    t28 <- t27, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  28:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  29:     add    t30 <- t28, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    8(%ebp), %eax           #  30:     add    t31 <- v0, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -36(%ebp), %eax         #  31:     assign @t31 <- t15
    movl    -100(%ebp), %edi       
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  32:     call   t32 <- dummyCHARfunc
    movb    %al, -101(%ebp)        
    movl    $97, %eax               #  33:     if     97 >= t32 goto 2
    movzbl  -101(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jge     l_f1_2                 
    jmp     l_f1_3                  #  34:     goto   3
l_f1_2:
    movl    $1, %eax                #  36:     assign t33 <- 1
    movb    %al, -102(%ebp)        
    jmp     l_f1_4                  #  37:     goto   4
l_f1_3:
    movl    $0, %eax                #  39:     assign t33 <- 0
    movb    %al, -102(%ebp)        
l_f1_4:
    movzbl  -102(%ebp), %eax        #  41:     return t33
    jmp     l_f1_exit              
l_f1_7_while_cond:
l_f1_11_while_cond:
    movl    $99, %eax               #  44:     if     99 <= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  45:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  47:     goto   11_while_cond
l_f1_10:
    movl    $99, %eax               #  49:     if     99 # 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  50:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  52:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_20_if_false        #  55:     goto   20_if_false
    jmp     l_f1_18                 #  56:     goto   18
l_f1_20_if_false:
l_f1_18:
    movl    $99, %eax               #  59:     if     99 > 100 goto 22
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_22                
    jmp     l_f1_23                 #  60:     goto   23
l_f1_22:
    movl    $1, %eax                #  62:     assign t34 <- 1
    movb    %al, -103(%ebp)        
    jmp     l_f1_24                 #  63:     goto   24
l_f1_23:
    movl    $0, %eax                #  65:     assign t34 <- 0
    movb    %al, -103(%ebp)        
l_f1_24:
    movzbl  -103(%ebp), %eax        #  67:     return t34
    jmp     l_f1_exit              
    movl    $0, %eax                #  68:     return 0
    jmp     l_f1_exit              
    movl    $97, %eax               #  69:     if     97 < 99 goto 28_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_28_if_true        
    jmp     l_f1_29_if_false        #  70:     goto   29_if_false
l_f1_28_if_true:
    jmp     l_f1_27                 #  72:     goto   27
l_f1_29_if_false:
l_f1_27:
    jmp     l_f1_7_while_cond       #  75:     goto   7_while_cond

l_f1_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 54 of <array 28 of <array 49 of <array 35 of <array 13 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 90 of <array 50 of <array 74 of <array 38 of <array 29 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 74 of <array 41 of <array 53 of <array 43 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 97 of <array 15 of <array 56 of <array 54 of <array 62 of <char>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <bool> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $59788, %eax            #   1:     return 59788
    jmp     l_f2_exit              
    movl    $1, %eax                #   2:     assign v4 <- 1
    movb    %al, -18(%ebp)         
    movl    $35412, %eax            #   3:     return 35412
    jmp     l_f2_exit              
    movl    $99, %eax               #   4:     if     99 # 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #   5:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #   7:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  11:     goto   15_while_cond
    movl    $72016, %eax            #  12:     if     72016 > 22412 goto 18_if_true
    movl    $22412, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  13:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  15:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_4                  #  18:     goto   4
l_f2_4:
    jmp     l_f2_1                  #  20:     goto   1
l_f2_1:
l_f2_22_while_cond:
    call    dummyCHARfunc           #  23:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  24:     if     98 < t11 goto 23_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_23_while_body     
    jmp     l_f2_21                 #  25:     goto   21
l_f2_23_while_body:
    jmp     l_f2_22_while_cond      #  27:     goto   22_while_cond
l_f2_21:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 97 of <array 15 of <array 56 of <array 54 of <array 62 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 58 of <array 74 of <array 41 of <array 53 of <array 43 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 90 of <array 50 of <array 74 of <array 38 of <array 29 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 54 of <array 28 of <array 49 of <array 35 of <array 13 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <char> %ebp-37 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 < t1 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    jmp     l_test_8                #   9:     goto   8
l_test_8:
    movl    $1, %eax                #  11:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_10               #  12:     goto   10
    movl    $0, %eax                #  13:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_10:
    movzbl  -15(%ebp), %eax         #  15:     if     t2 # 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_6_while_body    
    jmp     l_test_4                #  16:     goto   4
l_test_6_while_body:
    call    dummyBOOLfunc           #  18:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    jmp     l_test_5_while_cond     #  19:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    leal    v3, %eax                #  22:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  3 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t5 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  2 <- t5
    pushl   %eax                   
    leal    v1, %eax                #  26:     &()    t6 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     param  1 <- t6
    pushl   %eax                   
    leal    v0, %eax                #  28:     &()    t7 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  29:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  30:     call   t8 <- f2
    addl    $16, %esp              
    movl    %eax, -36(%ebp)        
    call    dummyCHARfunc           #  31:     call   t9 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  32:     assign v4 <- t9
    movb    %al, v4                

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
v0:                                 # <array 54 of <array 28 of <array 49 of <array 35 of <array 13 of <char>>>>>>
    .long    5
    .long   54
    .long   28
    .long   49
    .long   35
    .long   13
    .skip 33710040
v1:                                 # <array 90 of <array 50 of <array 74 of <array 38 of <array 29 of <char>>>>>>
    .long    5
    .long   90
    .long   50
    .long   74
    .long   38
    .long   29
    .skip 366966000
v2:                                 # <array 58 of <array 74 of <array 41 of <array 53 of <array 43 of <char>>>>>>
    .long    5
    .long   58
    .long   74
    .long   41
    .long   53
    .long   43
    .skip 401040188
v3:                                 # <array 97 of <array 15 of <array 56 of <array 54 of <array 62 of <char>>>>>>
    .long    5
    .long   97
    .long   15
    .long   56
    .long   54
    .long   62
    .skip 272795040
v4:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
