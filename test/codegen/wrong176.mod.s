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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $42337, %eax            #   3:     add    t4 <- 42337, 83975
    movl    $83975, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t5 <- t4, 66405
    movl    $66405, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $7051, %eax             #   5:     add    t6 <- 7051, 41745
    movl    $41745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t7 <- t6, 54597
    movl    $54597, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     sub    t8 <- t7, 25063
    movl    $25063, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -24(%ebp), %eax         #   8:     if     t5 <= t8 goto 3_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_3_while_body      
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #  11:     goto   2_while_cond
l_f0_1:
    call    dummyINTfunc            #  13:     call   t9 <- dummyINTfunc
    movl    %eax, -40(%ebp)        

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -105(%ebp)   1  [ $t4       <char> %ebp-105 ]
    #   -112(%ebp)   4  [ $t5       <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp-112 ]
    #   -113(%ebp)   1  [ $t6       <char> %ebp-113 ]
    #   -120(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t9       <int> %ebp-128 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 7 of <array 4 of <array 1 of <array 3 of <int>>>>>>> %ebp+16 ]
    #   -3224(%ebp)  3096  [ $v3       <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>> %ebp-3224 ]
    #   -3228(%ebp)   4  [ $v4       <int> %ebp-3228 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3216, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $804, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3224(%ebp)          # local array 'v3': 5 dimensions
    movl    $6,-3220(%ebp)          #   dimension 1: 6 elements
    movl    $4,-3216(%ebp)          #   dimension 2: 4 elements
    movl    $1,-3212(%ebp)          #   dimension 3: 1 elements
    movl    $8,-3208(%ebp)          #   dimension 4: 8 elements
    movl    $4,-3204(%ebp)          #   dimension 5: 4 elements

    # function body
l_f1_1_while_cond:
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   2:     if     t3 # 24196 goto 2_while_body
    movl    $24196, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -105(%ebp)        
    movl    $33457, %eax            #   6:     if     33457 <= 69281 goto 6_if_true
    movl    $69281, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   7:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
l_f1_10_while_cond:
    leal    -3224(%ebp), %eax       #  15:     &()    t5 <- v3
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  16:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  17:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -113(%ebp)        
    movl    $100, %eax              #  18:     if     100 # t6 goto 11_while_body
    movzbl  -113(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jne     l_f1_11_while_body     
    jmp     l_f1_9                  #  19:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  21:     goto   10_while_cond
l_f1_9:
    leal    -3224(%ebp), %eax       #  23:     &()    t7 <- v3
    movl    %eax, -120(%ebp)       
    call    ReadInt                 #  24:     call   t8 <- ReadInt
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  25:     mul    t9 <- t8, 3350
    movl    $3350, %ebx            
    imull   %ebx                   
    movl    %eax, -128(%ebp)       
    movl    -128(%ebp), %eax        #  26:     mul    t10 <- t9, 2637
    movl    $2637, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  27:     param  1 <- 2
    pushl   %eax                   
    leal    -3224(%ebp), %eax       #  28:     &()    t11 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  30:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  31:     mul    t13 <- t10, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t14 <- t13, 54001
    movl    $54001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  33:     param  1 <- 3
    pushl   %eax                   
    leal    -3224(%ebp), %eax       #  34:     &()    t15 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  35:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  36:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  37:     mul    t17 <- t14, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  38:     add    t18 <- t17, 7685
    movl    $7685, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  39:     param  1 <- 4
    pushl   %eax                   
    leal    -3224(%ebp), %eax       #  40:     &()    t19 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  41:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  42:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  43:     mul    t21 <- t18, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  44:     add    t22 <- t21, 84906
    movl    $84906, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    leal    -3224(%ebp), %eax       #  46:     &()    t23 <- v3
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  47:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  48:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  49:     mul    t25 <- t22, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  50:     add    t26 <- t25, 5208
    movl    $5208, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  51:     mul    t27 <- t26, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    -3224(%ebp), %eax       #  52:     &()    t28 <- v3
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  53:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  54:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  55:     add    t30 <- t27, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -120(%ebp), %eax        #  56:     add    t31 <- t7, t30
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $28066, %eax            #  57:     assign @t31 <- 28066
    movl    -104(%ebp), %edi       
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $3216, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 3 of <array 2 of <array 2 of <array 1 of <char>>>>>>> %ebp+8 ]
    #    -19(%ebp)   1  [ $v1       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]
    #   -3120(%ebp)  3096  [ $v3       <array 6 of <array 4 of <array 1 of <array 8 of <array 4 of <int>>>>>> %ebp-3120 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3108, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $777, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3120(%ebp)          # local array 'v3': 5 dimensions
    movl    $6,-3116(%ebp)          #   dimension 1: 6 elements
    movl    $4,-3112(%ebp)          #   dimension 2: 4 elements
    movl    $1,-3108(%ebp)          #   dimension 3: 1 elements
    movl    $8,-3104(%ebp)          #   dimension 4: 8 elements
    movl    $4,-3100(%ebp)          #   dimension 5: 4 elements

    # function body
    movl    $1, %eax                #   0:     assign v1 <- 1
    movb    %al, -19(%ebp)         
    movl    $15379, %eax            #   1:     if     15379 < 95608 goto 2_if_true
    movl    $95608, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $87867, %eax            #   4:     assign v2 <- 87867
    movl    %eax, -24(%ebp)        
    jmp     l_f2_exit              
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_8_while_cond:
    leal    -3120(%ebp), %eax       #  10:     &()    t3 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  12:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  13:     if     t4 >= 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_9_while_body      
    jmp     l_f2_7                  #  14:     goto   7
l_f2_9_while_body:
    call    dummyBOOLfunc           #  16:     call   t5 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f2_exit              
    movl    $1, %eax                #  18:     assign v1 <- 1
    movb    %al, -19(%ebp)         
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  20:     goto   15_while_cond
    jmp     l_f2_8_while_cond       #  21:     goto   8_while_cond
l_f2_7:

l_f2_exit:
    # epilogue
    addl    $3108, %esp             # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $29514, %eax            #  11:     if     29514 <= 36964 goto 8_while_body
    movl    $36964, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #  12:     goto   6
l_test_8_while_body:
    movl    $97, %eax               #  14:     if     97 < 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  17:     goto   10
l_test_12_if_false:
l_test_10:
l_test_15_while_cond:
    movl    $95236, %eax            #  21:     if     95236 <= 11619 goto 16_while_body
    movl    $11619, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  22:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:
    jmp     l_test_18               #  26:     goto   18
l_test_18:
    jmp     l_test_7_while_cond     #  28:     goto   7_while_cond
l_test_6:
    call    dummyCHARfunc           #  30:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_test_23_while_cond:
    jmp     l_test_22               #  32:     goto   22
    jmp     l_test_23_while_cond    #  33:     goto   23_while_cond
l_test_22:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
