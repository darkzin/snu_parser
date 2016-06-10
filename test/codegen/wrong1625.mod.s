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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 15 of <array 71 of <array 16 of <array 97 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $100, %eax              #   0:     if     100 <= 98 goto 4
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_4                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_4:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t5
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   9:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    WriteLn                 #  10:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 15 of <array 71 of <array 16 of <array 97 of <array 9 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #   -59503732(%ebp)  59503704  [ $v0       <array 15 of <array 71 of <array 16 of <array 97 of <array 9 of <int>>>>>> %ebp-59503732 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $59503720, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14875930, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-59503732(%ebp)      # local array 'v0': 5 dimensions
    movl    $15,-59503728(%ebp)     #   dimension 1: 15 elements
    movl    $71,-59503724(%ebp)     #   dimension 2: 71 elements
    movl    $16,-59503720(%ebp)     #   dimension 3: 16 elements
    movl    $97,-59503716(%ebp)     #   dimension 4: 97 elements
    movl    $9,-59503712(%ebp)      #   dimension 5: 9 elements

    # function body
    movl    $97, %eax               #   0:     param  1 <- 97
    pushl   %eax                   
    leal    -59503732(%ebp), %eax   #   1:     &()    t5 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   3:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movl    $33594, %eax            #   4:     div    t7 <- 33594, 7443
    movl    $7443, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t8 <- t7, 87081
    movl    $87081, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t8
    jmp     l_f1_exit              
    movl    $27754, %eax            #   7:     if     27754 > 92835 goto 3_if_true
    movl    $92835, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   8:     goto   4_if_false
l_f1_3_if_true:
    movl    $99, %eax               #  10:     if     99 <= 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  11:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  13:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $94306, %eax            #  16:     return 94306
    jmp     l_f1_exit              
l_f1_12_while_cond:
    movl    $98, %eax               #  18:     if     98 = 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_13_while_body     
    jmp     l_f1_11                 #  19:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  21:     goto   12_while_cond
l_f1_11:
    movl    $41360, %eax            #  23:     return 41360
    jmp     l_f1_exit              
    movl    $94685, %eax            #  24:     return 94685
    jmp     l_f1_exit              
    movl    $70400, %eax            #  25:     return 70400
    jmp     l_f1_exit              
    jmp     l_f1_20_if_false        #  26:     goto   20_if_false
    jmp     l_f1_18                 #  27:     goto   18
l_f1_20_if_false:
l_f1_18:
    movl    $98, %eax               #  30:     if     98 # 99 goto 22_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  31:     goto   23_if_false
l_f1_22_if_true:
    jmp     l_f1_21                 #  33:     goto   21
l_f1_23_if_false:
l_f1_21:
    jmp     l_f1_2                  #  36:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $59503720, %esp         # remove locals
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
    #   -120(%ebp)   4  [ $t36      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t37      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t38      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t39      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t40      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t41      <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t42      <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t43      <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t44      <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t45      <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t46      <int> %ebp-160 ]
    #   -164(%ebp)   4  [ $t47      <int> %ebp-164 ]
    #   -168(%ebp)   4  [ $t5       <int> %ebp-168 ]
    #   -172(%ebp)   4  [ $t6       <int> %ebp-172 ]
    #   -176(%ebp)   4  [ $t7       <int> %ebp-176 ]
    #   -180(%ebp)   4  [ $t8       <int> %ebp-180 ]
    #   -184(%ebp)   4  [ $t9       <int> %ebp-184 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 17 of <array 64 of <array 29 of <array 57 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 96 of <array 85 of <array 64 of <array 11 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 87 of <array 25 of <array 98 of <array 6 of <array 15 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -185(%ebp)   1  [ $v4       <char> %ebp-185 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $176, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $44, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $71935, %eax            #   0:     div    t5 <- 71935, 83036
    movl    $83036, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    -168(%ebp), %eax        #   1:     mul    t6 <- t5, 16888
    movl    $16888, %ebx           
    imull   %ebx                   
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #   2:     div    t7 <- t6, 87828
    movl    $87828, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #   3:     mul    t8 <- t7, 62695
    movl    $62695, %ebx           
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -184(%ebp)       
    movl    -180(%ebp), %eax        #   7:     mul    t10 <- t8, t9
    movl    -184(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     add    t11 <- t10, 44431
    movl    $44431, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  12:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     add    t14 <- t13, 27590
    movl    $27590, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  17:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     add    t17 <- t16, 40254
    movl    $40254, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     add    t20 <- t19, 41476
    movl    $41476, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  24:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  27:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    16(%ebp), %eax          #  28:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $99, %eax               #  29:     assign @t24 <- 99
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $35235, %eax            #  30:     div    t25 <- 35235, 21743
    movl    $21743, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  31:     mul    t26 <- t25, 65964
    movl    $65964, %ebx           
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  32:     div    t27 <- t26, 37430
    movl    $37430, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    $13740, %eax            #  33:     if     13740 < t27 goto 2_if_true
    movl    -84(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #  34:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    movl    $74536, %eax            #  37:     if     74536 <= 54186 goto 7_while_body
    movl    $54186, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #  38:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  40:     goto   6_while_cond
l_f2_5:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  43:     goto   9
    jmp     l_f2_10_while_cond      #  44:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_1                  #  46:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $2, %eax                #  49:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  50:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  51:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $70737, %eax            #  52:     mul    t29 <- 70737, t28
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $14322, %eax            #  53:     add    t30 <- 14322, 44924
    movl    $44924, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  54:     add    t31 <- t30, 7342
    movl    $7342, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  55:     add    t32 <- t29, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $3, %eax                #  56:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  57:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  58:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  59:     mul    t34 <- t32, t33
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  60:     add    t35 <- t34, 78273
    movl    $78273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    $4, %eax                #  61:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  62:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  63:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  64:     mul    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  65:     add    t38 <- t37, 95921
    movl    $95921, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    $5, %eax                #  66:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  67:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  68:     call   t39 <- DIM
    addl    $8, %esp               
    movl    %eax, -132(%ebp)       
    movl    -128(%ebp), %eax        #  69:     mul    t40 <- t38, t39
    movl    -132(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    $98885, %eax            #  70:     sub    t41 <- 98885, 56877
    movl    $56877, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -140(%ebp)       
    movl    -140(%ebp), %eax        #  71:     add    t42 <- t41, 43122
    movl    $43122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -144(%ebp)       
    movl    -136(%ebp), %eax        #  72:     add    t43 <- t40, t42
    movl    -144(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  73:     mul    t44 <- t43, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    16(%ebp), %eax          #  74:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  75:     call   t45 <- DOFS
    addl    $4, %esp               
    movl    %eax, -156(%ebp)       
    movl    -152(%ebp), %eax        #  76:     add    t46 <- t44, t45
    movl    -156(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    16(%ebp), %eax          #  77:     add    t47 <- v2, t46
    movl    -160(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    $97, %eax               #  78:     assign @t47 <- 97
    movl    -164(%ebp), %edi       
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $176, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 15 of <array 71 of <array 16 of <array 97 of <array 9 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

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
l_test_1_while_cond:
    movl    $78578, %eax            #   1:     sub    t0 <- 78578, 6121
    movl    $6121, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 = 10319 goto 2_while_body
    movl    $10319, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    movl    $99, %eax               #   9:     if     99 > 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #  10:     goto   5
l_test_7_while_body:
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_6_while_cond     #  13:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
l_test_17_while_cond:
    jmp     l_test_16               #  17:     goto   16
    jmp     l_test_17_while_cond    #  18:     goto   17_while_cond
l_test_16:
    jmp     l_test_11               #  20:     goto   11
l_test_11:
    movl    $100, %eax              #  22:     assign v0 <- 100
    movb    %al, v0                
    movl    $97, %eax               #  23:     param  1 <- 97
    pushl   %eax                   
    leal    v2, %eax                #  24:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  26:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  27:     if     t3 = 1 goto 24
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24              
    jmp     l_test_22               #  28:     goto   22
l_test_24:
    jmp     l_test_22               #  30:     goto   22
    movl    $1, %eax                #  31:     assign t4 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_23               #  32:     goto   23
l_test_22:
    movl    $0, %eax                #  34:     assign t4 <- 0
    movb    %al, -26(%ebp)         
l_test_23:
    movzbl  -26(%ebp), %eax         #  36:     assign v1 <- t4
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 15 of <array 71 of <array 16 of <array 97 of <array 9 of <int>>>>>>
    .long    5
    .long   15
    .long   71
    .long   16
    .long   97
    .long    9
    .skip 59503680








    # end of global data section
    #-----------------------------------------

    .end
##################################################
