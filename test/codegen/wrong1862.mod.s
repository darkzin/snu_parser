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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t22      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t23      <bool> %ebp-66 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 16 of <array 76 of <array 1 of <array 35 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp+20 ]
    #    -97(%ebp)   1  [ $v4       <bool> %ebp-97 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $53379, %eax            #   0:     if     53379 = 96761 goto 1_if_true
    movl    $96761, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $97, %eax               #   4:     if     97 <= 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   7:     goto   5_while_cond
l_f0_4:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  10:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  11:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $84844, %eax            #  12:     mul    t3 <- 84844, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    $66139, %eax            #  13:     sub    t4 <- 66139, 94159
    movl    $94159, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  14:     add    t5 <- t4, 17219
    movl    $17219, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  15:     sub    t6 <- t5, 33168
    movl    $33168, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -72(%ebp), %eax         #  16:     add    t7 <- t3, t6
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  20:     mul    t9 <- t7, t8
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  21:     add    t10 <- t9, 59793
    movl    $59793, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  25:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 63694
    movl    $63694, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  29:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  30:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t16 <- t15, 98208
    movl    $98208, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    20(%ebp), %eax          #  33:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  34:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    20(%ebp), %eax          #  36:     add    t20 <- v3, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $11458, %eax            #  37:     assign @t20 <- 11458
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_0                  #  38:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_10_while_cond:
    movl    $88804, %eax            #  42:     mul    t21 <- 88804, 85211
    movl    $85211, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  43:     if     t21 <= 58302 goto 11_while_body
    movl    $58302, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_11_while_body     
    jmp     l_f0_9                  #  44:     goto   9
l_f0_11_while_body:
    movl    $52902, %eax            #  46:     if     52902 >= 85916 goto 14
    movl    $85916, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_14                
    jmp     l_f0_15                 #  47:     goto   15
l_f0_14:
    movl    $1, %eax                #  49:     assign t22 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_f0_16                 #  50:     goto   16
l_f0_15:
    movl    $0, %eax                #  52:     assign t22 <- 0
    movb    %al, -65(%ebp)         
l_f0_16:
    movzbl  -65(%ebp), %eax         #  54:     assign v4 <- t22
    movb    %al, -97(%ebp)         
    jmp     l_f0_10_while_cond      #  55:     goto   10_while_cond
l_f0_9:
l_f0_19_while_cond:
    movl    $97, %eax               #  58:     if     97 > 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_20_while_body     
    jmp     l_f0_18                 #  59:     goto   18
l_f0_20_while_body:
    movl    $60829, %eax            #  61:     if     60829 >= 27248 goto 23
    movl    $27248, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_23                
    jmp     l_f0_24                 #  62:     goto   24
l_f0_23:
    movl    $1, %eax                #  64:     assign t23 <- 1
    movb    %al, -66(%ebp)         
    jmp     l_f0_25                 #  65:     goto   25
l_f0_24:
    movl    $0, %eax                #  67:     assign t23 <- 0
    movb    %al, -66(%ebp)         
l_f0_25:
    movzbl  -66(%ebp), %eax         #  69:     return t23
    jmp     l_f0_exit              
    jmp     l_f0_19_while_cond      #  70:     goto   19_while_cond
l_f0_18:

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t13      <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t24      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t25      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t26      <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t27      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t28      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t29      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t3       <ptr(4) to <array 54 of <array 16 of <array 76 of <array 1 of <array 35 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t30      <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t31      <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp-108 ]
    #   -112(%ebp)   4  [ $t32      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t33      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t34      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t35      <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp-124 ]
    #   -128(%ebp)   4  [ $t36      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t37      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t38      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t39      <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp-140 ]
    #   -144(%ebp)   4  [ $t4       <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp-144 ]
    #   -148(%ebp)   4  [ $t40      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t41      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t42      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t43      <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp-160 ]
    #   -164(%ebp)   4  [ $t44      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t45      <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t46      <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t47      <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t48      <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp-180 ]
    #   -184(%ebp)   4  [ $t49      <int> %ebp-184 ]
    #   -185(%ebp)   1  [ $t5       <bool> %ebp-185 ]
    #   -192(%ebp)   4  [ $t50      <int> %ebp-192 ]
    #   -196(%ebp)   4  [ $t51      <int> %ebp-196 ]
    #   -200(%ebp)   4  [ $t52      <ptr(4) to <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>>> %ebp-200 ]
    #   -204(%ebp)   4  [ $t53      <ptr(4) to <array 54 of <array 16 of <array 76 of <array 1 of <array 35 of <bool>>>>>>> %ebp-204 ]
    #   -208(%ebp)   4  [ $t54      <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp-208 ]
    #   -209(%ebp)   1  [ $t55      <bool> %ebp-209 ]
    #   -210(%ebp)   1  [ $t6       <bool> %ebp-210 ]
    #   -211(%ebp)   1  [ $t7       <bool> %ebp-211 ]
    #   -216(%ebp)   4  [ $t8       <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp-216 ]
    #   -220(%ebp)   4  [ $t9       <ptr(4) to <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>>> %ebp-220 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 64 of <array 91 of <array 62 of <array 65 of <array 100 of <bool>>>>>>> %ebp+8 ]
    #   -100048244(%ebp)  100048024  [ $v1       <array 74 of <array 20 of <array 65 of <array 10 of <array 26 of <int>>>>>> %ebp-100048244 ]
    #   -102346508(%ebp)  2298264  [ $v2       <array 54 of <array 16 of <array 76 of <array 1 of <array 35 of <bool>>>>>> %ebp-102346508 ]
    #   -483182372(%ebp)  380835864  [ $v3       <array 14 of <array 56 of <array 66 of <array 23 of <array 80 of <int>>>>>> %ebp-483182372 ]
    #   -483182376(%ebp)   4  [ $v4       <int> %ebp-483182376 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $483182364, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $120795591, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-100048244(%ebp)     # local array 'v1': 5 dimensions
    movl    $74,-100048240(%ebp)    #   dimension 1: 74 elements
    movl    $20,-100048236(%ebp)    #   dimension 2: 20 elements
    movl    $65,-100048232(%ebp)    #   dimension 3: 65 elements
    movl    $10,-100048228(%ebp)    #   dimension 4: 10 elements
    movl    $26,-100048224(%ebp)    #   dimension 5: 26 elements
    movl    $5,-102346508(%ebp)     # local array 'v2': 5 dimensions
    movl    $54,-102346504(%ebp)    #   dimension 1: 54 elements
    movl    $16,-102346500(%ebp)    #   dimension 2: 16 elements
    movl    $76,-102346496(%ebp)    #   dimension 3: 76 elements
    movl    $1,-102346492(%ebp)     #   dimension 4: 1 elements
    movl    $35,-102346488(%ebp)    #   dimension 5: 35 elements
    movl    $5,-483182372(%ebp)     # local array 'v3': 5 dimensions
    movl    $14,-483182368(%ebp)    #   dimension 1: 14 elements
    movl    $56,-483182364(%ebp)    #   dimension 2: 56 elements
    movl    $66,-483182360(%ebp)    #   dimension 3: 66 elements
    movl    $23,-483182356(%ebp)    #   dimension 4: 23 elements
    movl    $80,-483182352(%ebp)    #   dimension 5: 80 elements

    # function body
    leal    -483182372(%ebp), %eax  #   0:     &()    t2 <- v3
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   1:     param  3 <- t2
    pushl   %eax                   
    movl    $32900, %eax            #   2:     param  2 <- 32900
    pushl   %eax                   
    leal    -102346508(%ebp), %eax  #   3:     &()    t3 <- v2
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   4:     param  1 <- t3
    pushl   %eax                   
    leal    -100048244(%ebp), %eax  #   5:     &()    t4 <- v1
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   6:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -185(%ebp)        
    movzbl  -185(%ebp), %eax        #   8:     if     t5 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_6                  #   9:     goto   6
l_f1_10:
    jmp     l_f1_6                  #  11:     goto   6
    jmp     l_f1_6                  #  12:     goto   6
    movl    $1, %eax                #  13:     assign t6 <- 1
    movb    %al, -210(%ebp)        
    jmp     l_f1_7                  #  14:     goto   7
l_f1_6:
    movl    $0, %eax                #  16:     assign t6 <- 0
    movb    %al, -210(%ebp)        
l_f1_7:
    movzbl  -210(%ebp), %eax        #  18:     if     t6 = 0 goto 1
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #  19:     goto   2
l_f1_1:
    movl    $1, %eax                #  21:     assign t7 <- 1
    movb    %al, -211(%ebp)        
    jmp     l_f1_3                  #  22:     goto   3
l_f1_2:
    movl    $0, %eax                #  24:     assign t7 <- 0
    movb    %al, -211(%ebp)        
l_f1_3:
    movzbl  -211(%ebp), %eax        #  26:     return t7
    jmp     l_f1_exit              
l_f1_12_while_cond:
    jmp     l_f1_11                 #  28:     goto   11
    leal    -100048244(%ebp), %eax  #  29:     &()    t8 <- v1
    movl    %eax, -216(%ebp)       
    movl    $2, %eax                #  30:     param  1 <- 2
    pushl   %eax                   
    leal    -100048244(%ebp), %eax  #  31:     &()    t9 <- v1
    movl    %eax, -220(%ebp)       
    movl    -220(%ebp), %eax        #  32:     param  0 <- t9
    pushl   %eax                   
    call    DIM                     #  33:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $94464, %eax            #  34:     mul    t11 <- 94464, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     add    t12 <- t11, 76710
    movl    $76710, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  36:     param  1 <- 3
    pushl   %eax                   
    leal    -100048244(%ebp), %eax  #  37:     &()    t13 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  38:     param  0 <- t13
    pushl   %eax                   
    call    DIM                     #  39:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  40:     mul    t15 <- t12, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  41:     add    t16 <- t15, 4745
    movl    $4745, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  42:     param  1 <- 4
    pushl   %eax                   
    leal    -100048244(%ebp), %eax  #  43:     &()    t17 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  44:     param  0 <- t17
    pushl   %eax                   
    call    DIM                     #  45:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  46:     mul    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  47:     add    t20 <- t19, 52013
    movl    $52013, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  48:     param  1 <- 5
    pushl   %eax                   
    leal    -100048244(%ebp), %eax  #  49:     &()    t21 <- v1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  50:     param  0 <- t21
    pushl   %eax                   
    call    DIM                     #  51:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #  52:     mul    t23 <- t20, t22
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  53:     add    t24 <- t23, 46471
    movl    $46471, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  54:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    leal    -100048244(%ebp), %eax  #  55:     &()    t26 <- v1
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  56:     param  0 <- t26
    pushl   %eax                   
    call    DOFS                    #  57:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -80(%ebp), %eax         #  58:     add    t28 <- t25, t27
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -216(%ebp), %eax        #  59:     add    t29 <- t8, t28
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $29955, %eax            #  60:     assign @t29 <- 29955
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           
    leal    -483182372(%ebp), %eax  #  61:     &()    t30 <- v3
    movl    %eax, -104(%ebp)       
    movl    $2, %eax                #  62:     param  1 <- 2
    pushl   %eax                   
    leal    -483182372(%ebp), %eax  #  63:     &()    t31 <- v3
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  64:     param  0 <- t31
    pushl   %eax                   
    call    DIM                     #  65:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    $65750, %eax            #  66:     mul    t33 <- 65750, t32
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  67:     add    t34 <- t33, 10178
    movl    $10178, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    $3, %eax                #  68:     param  1 <- 3
    pushl   %eax                   
    leal    -483182372(%ebp), %eax  #  69:     &()    t35 <- v3
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  70:     param  0 <- t35
    pushl   %eax                   
    call    DIM                     #  71:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -120(%ebp), %eax        #  72:     mul    t37 <- t34, t36
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  73:     add    t38 <- t37, 35635
    movl    $35635, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $4, %eax                #  74:     param  1 <- 4
    pushl   %eax                   
    leal    -483182372(%ebp), %eax  #  75:     &()    t39 <- v3
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  76:     param  0 <- t39
    pushl   %eax                   
    call    DIM                     #  77:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -148(%ebp)       
    movl    -136(%ebp), %eax        #  78:     mul    t41 <- t38, t40
    movl    -148(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    -152(%ebp), %eax        #  79:     add    t42 <- t41, 22213
    movl    $22213, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -156(%ebp)       
    movl    $5, %eax                #  80:     param  1 <- 5
    pushl   %eax                   
    leal    -483182372(%ebp), %eax  #  81:     &()    t43 <- v3
    movl    %eax, -160(%ebp)       
    movl    -160(%ebp), %eax        #  82:     param  0 <- t43
    pushl   %eax                   
    call    DIM                     #  83:     call   t44 <- DIM
    addl    $8, %esp               
    movl    %eax, -164(%ebp)       
    movl    -156(%ebp), %eax        #  84:     mul    t45 <- t42, t44
    movl    -164(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #  85:     add    t46 <- t45, 80285
    movl    $80285, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #  86:     mul    t47 <- t46, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -176(%ebp)       
    leal    -483182372(%ebp), %eax  #  87:     &()    t48 <- v3
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #  88:     param  0 <- t48
    pushl   %eax                   
    call    DOFS                    #  89:     call   t49 <- DOFS
    addl    $4, %esp               
    movl    %eax, -184(%ebp)       
    movl    -176(%ebp), %eax        #  90:     add    t50 <- t47, t49
    movl    -184(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -192(%ebp)       
    movl    -104(%ebp), %eax        #  91:     add    t51 <- t30, t50
    movl    -192(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -196(%ebp)       
    movl    $2177, %eax             #  92:     assign @t51 <- 2177
    movl    -196(%ebp), %edi       
    movl    %eax, (%edi)           
    leal    -483182372(%ebp), %eax  #  93:     &()    t52 <- v3
    movl    %eax, -200(%ebp)       
    movl    -200(%ebp), %eax        #  94:     param  3 <- t52
    pushl   %eax                   
    movl    $83227, %eax            #  95:     param  2 <- 83227
    pushl   %eax                   
    leal    -102346508(%ebp), %eax  #  96:     &()    t53 <- v2
    movl    %eax, -204(%ebp)       
    movl    -204(%ebp), %eax        #  97:     param  1 <- t53
    pushl   %eax                   
    leal    -100048244(%ebp), %eax  #  98:     &()    t54 <- v1
    movl    %eax, -208(%ebp)       
    movl    -208(%ebp), %eax        #  99:     param  0 <- t54
    pushl   %eax                   
    call    f0                      # 100:     call   t55 <- f0
    addl    $16, %esp              
    movb    %al, -209(%ebp)        
    jmp     l_f1_12_while_cond      # 101:     goto   12_while_cond
l_f1_11:
l_f1_18_while_cond:
    movl    $77957, %eax            # 104:     if     77957 <= 80001 goto 19_while_body
    movl    $80001, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_19_while_body     
    jmp     l_f1_17                 # 105:     goto   17
l_f1_19_while_body:
    movl    $19337, %eax            # 107:     if     19337 >= 14001 goto 22_if_true
    movl    $14001, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_22_if_true        
    jmp     l_f1_23_if_false        # 108:     goto   23_if_false
l_f1_22_if_true:
    jmp     l_f1_21                 # 110:     goto   21
l_f1_23_if_false:
l_f1_21:
    jmp     l_f1_25                 # 113:     goto   25
l_f1_25:
l_f1_29_while_cond:
    jmp     l_f1_29_while_cond      # 116:     goto   29_while_cond
    jmp     l_f1_18_while_cond      # 117:     goto   18_while_cond
l_f1_17:

l_f1_exit:
    # epilogue
    addl    $483182364, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    movl    $98813, %eax            #   1:     if     98813 < 13153 goto 2_if_true
    movl    $13153, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_5                  #   4:     goto   5
l_f2_5:
    movl    $98, %eax               #   6:     return 98
    jmp     l_f2_exit              
    movl    $0, %eax                #   7:     assign v1 <- 0
    movb    %al, -15(%ebp)         
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     return t3
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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $31318, %eax            #   1:     sub    t1 <- 31318, 65905
    movl    $65905, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $23131, %eax            #   2:     if     23131 = t1 goto 2_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    movl    $19718, %eax            #   5:     if     19718 <= 13587 goto 6_if_true
    movl    $13587, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $100, %eax              #  11:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
l_test_12_while_cond:
    jmp     l_test_11               #  14:     goto   11
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
l_test_11:
    jmp     l_test_1                #  17:     goto   1
l_test_3_if_false:
l_test_1:
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
