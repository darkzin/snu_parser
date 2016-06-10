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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 77 of <array 26 of <array 45 of <array 43 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 88 of <array 58 of <array 55 of <array 29 of <char>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
    movl    $94656, %eax            #   3:     assign v2 <- 94656
    movl    %eax, -20(%ebp)        
    jmp     l_f0_3_while_cond       #   4:     goto   3_while_cond

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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 29 of <array 38 of <array 35 of <array 50 of <array 88 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 33 of <array 44 of <array 94 of <array 100 of <array 36 of <char>>>>>>> %ebp+20 ]
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
    movl    $79399, %eax            #   0:     div    t5 <- 79399, 7237
    movl    $7237, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -168(%ebp)       
    movl    $35563, %eax            #   1:     add    t6 <- 35563, t5
    movl    -168(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -172(%ebp)       
    movl    -172(%ebp), %eax        #   2:     assign v1 <- t6
    movl    %eax, 12(%ebp)         
    movl    $61219, %eax            #   3:     div    t7 <- 61219, 45940
    movl    $45940, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -176(%ebp)       
    movl    -176(%ebp), %eax        #   4:     mul    t8 <- t7, 99840
    movl    $99840, %ebx           
    imull   %ebx                   
    movl    %eax, -180(%ebp)       
    movl    -180(%ebp), %eax        #   5:     mul    t9 <- t8, 79359
    movl    $79359, %ebx           
    imull   %ebx                   
    movl    %eax, -184(%ebp)       
    movl    -184(%ebp), %eax        #   6:     mul    t10 <- t9, 51389
    movl    $51389, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     div    t11 <- t10, 19748
    movl    $19748, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t12 <- t11, 10988
    movl    $10988, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $26459, %eax            #  12:     mul    t14 <- 26459, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    call    dummyINTfunc            #  13:     call   t15 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  14:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  18:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     add    t19 <- t18, 39307
    movl    $39307, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  23:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     add    t22 <- t21, 89772
    movl    $89772, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  28:     mul    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  29:     add    t25 <- t24, 89741
    movl    $89741, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  30:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    16(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  32:     call   t27 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  33:     add    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    16(%ebp), %eax          #  34:     add    t29 <- v2, t28
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -24(%ebp), %eax         #  35:     assign @t29 <- t12
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $2, %eax                #  36:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  37:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  38:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $12884, %eax            #  39:     mul    t31 <- 12884, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    call    dummyINTfunc            #  40:     call   t32 <- dummyINTfunc
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  41:     add    t33 <- t31, t32
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $3, %eax                #  42:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  43:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  44:     call   t34 <- DIM
    addl    $8, %esp               
    movl    %eax, -112(%ebp)       
    movl    -108(%ebp), %eax        #  45:     mul    t35 <- t33, t34
    movl    -112(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    call    dummyINTfunc            #  46:     call   t36 <- dummyINTfunc
    movl    %eax, -120(%ebp)       
    movl    -116(%ebp), %eax        #  47:     add    t37 <- t35, t36
    movl    -120(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -124(%ebp)       
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  49:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  50:     call   t38 <- DIM
    addl    $8, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  51:     mul    t39 <- t37, t38
    movl    -128(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  52:     add    t40 <- t39, 37887
    movl    $37887, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  54:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  55:     call   t41 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    -136(%ebp), %eax        #  56:     mul    t42 <- t40, t41
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #  57:     add    t43 <- t42, 23721
    movl    $23721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    -148(%ebp), %eax        #  58:     mul    t44 <- t43, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -152(%ebp)       
    movl    20(%ebp), %eax          #  59:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  60:     call   t45 <- DOFS
    addl    $4, %esp               
    movl    %eax, -156(%ebp)       
    movl    -152(%ebp), %eax        #  61:     add    t46 <- t44, t45
    movl    -156(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    20(%ebp), %eax          #  62:     add    t47 <- v3, t46
    movl    -160(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -164(%ebp)       
    movl    $98, %eax               #  63:     assign @t47 <- 98
    movl    -164(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $176, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 95 of <array 77 of <array 92 of <array 16 of <array 31 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 50 of <array 11 of <array 37 of <array 15 of <array 85 of <char>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   3:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t6 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
l_f2_5_while_cond:
    movl    $49095, %eax            #   8:     if     49095 >= 46949 goto 6_while_body
    movl    $46949, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6_while_body      
    jmp     l_f2_4                  #   9:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #  11:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
    movl    $10330, %eax            #  15:     assign v2 <- 10330
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 69 of <array 88 of <array 58 of <array 55 of <array 29 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 14 of <array 77 of <array 26 of <array 45 of <array 43 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]

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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #   8:     assign v0 <- 0
    movb    %al, v0                
l_test_6_while_cond:
    movl    $97, %eax               #  10:     if     97 >= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #  11:     goto   5
l_test_7_while_body:
    jmp     l_test_9                #  13:     goto   9
l_test_9:
    jmp     l_test_6_while_cond     #  15:     goto   6_while_cond
l_test_5:
    movl    $84818, %eax            #  17:     if     84818 # 34019 goto 13_if_true
    movl    $34019, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_13_if_true      
    jmp     l_test_14_if_false      #  18:     goto   14_if_false
l_test_13_if_true:
    leal    v2, %eax                #  20:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  22:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  24:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  25:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_12               #  28:     goto   12
l_test_14_if_false:
l_test_12:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 14 of <array 77 of <array 26 of <array 45 of <array 43 of <bool>>>>>>
    .long    5
    .long   14
    .long   77
    .long   26
    .long   45
    .long   43
    .skip 54234180
v2:                                 # <array 69 of <array 88 of <array 58 of <array 55 of <array 29 of <char>>>>>>
    .long    5
    .long   69
    .long   88
    .long   58
    .long   55
    .long   29
    .skip 561720720








    # end of global data section
    #-----------------------------------------

    .end
##################################################
