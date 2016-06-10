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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <char> %ebp-62 ]
    #    -63(%ebp)   1  [ $t24      <bool> %ebp-63 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t32      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t33      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t34      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t35      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t36      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t37      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t38      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t39      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t40      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t41      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t5       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t6       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t7       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t8       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t9       <int> %ebp-152 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 23 of <array 59 of <array 57 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 85 of <array 6 of <array 14 of <array 1 of <array 29 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 53 of <array 57 of <array 35 of <array 98 of <array 100 of <char>>>>>>> %ebp+20 ]
    #   -156(%ebp)   4  [ $v5       <int> %ebp-156 ]
    #   -157(%ebp)   1  [ $v6       <bool> %ebp-157 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $148, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $37, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $11462, %eax            #   0:     div    t5 <- 11462, 43685
    movl    $43685, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -136(%ebp)       
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $5539, %eax             #   4:     mul    t7 <- 5539, t6
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   5:     add    t8 <- t7, 66380
    movl    $66380, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #   9:     mul    t10 <- t8, t9
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     add    t11 <- t10, 42132
    movl    $42132, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  14:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     add    t14 <- t13, 97990
    movl    $97990, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  19:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     add    t17 <- t16, 59783
    movl    $59783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  23:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  24:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  25:     add    t21 <- v3, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -136(%ebp), %eax        #  26:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  27:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    call    dummyCHARfunc           #  28:     call   t23 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    movl    $97, %eax               #  29:     if     97 >= t23 goto 3
    movzbl  -62(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_3                 
    jmp     l_f0_4                  #  30:     goto   4
l_f0_3:
    movl    $1, %eax                #  32:     assign t24 <- 1
    movb    %al, -63(%ebp)         
    jmp     l_f0_5                  #  33:     goto   5
l_f0_4:
    movl    $0, %eax                #  35:     assign t24 <- 0
    movb    %al, -63(%ebp)         
l_f0_5:
    movl    $2, %eax                #  37:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  39:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $97289, %eax            #  40:     mul    t26 <- 97289, t25
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    $75323, %eax            #  41:     mul    t27 <- 75323, 27211
    movl    $27211, %ebx           
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  42:     add    t28 <- t26, t27
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  43:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  45:     call   t29 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  46:     mul    t30 <- t28, t29
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  47:     add    t31 <- t30, 35048
    movl    $35048, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  48:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  49:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  50:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  51:     mul    t33 <- t31, t32
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  52:     add    t34 <- t33, 93708
    movl    $93708, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  53:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  54:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  55:     call   t35 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  56:     mul    t36 <- t34, t35
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  57:     add    t37 <- t36, 18774
    movl    $18774, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  58:     mul    t38 <- t37, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    12(%ebp), %eax          #  59:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  60:     call   t39 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  61:     add    t40 <- t38, t39
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    12(%ebp), %eax          #  62:     add    t41 <- v2, t40
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movzbl  -63(%ebp), %eax         #  63:     assign @t41 <- t24
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $148, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 52 of <array 86 of <array 65 of <array 55 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -20(%ebp)   1  [ $v4       <bool> %ebp-20 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $98, %eax               #   2:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    movl    $64412, %eax            #   4:     if     64412 >= 15476 goto 7
    movl    $15476, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_8                  #   5:     goto   8
l_f1_7:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_9                  #   8:     goto   9
l_f1_8:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_9:
    movzbl  -17(%ebp), %eax         #  12:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyBOOLfunc           #  16:     call   t7 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  17:     if     t7 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_12                
l_f1_12:
    movl    $1, %eax                #  19:     assign t8 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f1_14                 #  20:     goto   14
    movl    $0, %eax                #  21:     assign t8 <- 0
    movb    %al, -19(%ebp)         
l_f1_14:
    movzbl  -19(%ebp), %eax         #  23:     assign v4 <- t8
    movb    %al, -20(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -18(%ebp)   1  [ $t12      <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
l_f2_1_while_cond:
    movl    $88450, %eax            #   1:     sub    t5 <- 88450, 50703
    movl    $50703, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t6 <- t5, 56728
    movl    $56728, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t7 <- t6, 8238
    movl    $8238, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t8 <- t7, 53116
    movl    $53116, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     sub    t9 <- t8, 43977
    movl    $43977, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     if     t9 >= 76925 goto 2_while_body
    movl    $76925, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_while_body:
    call    ReadInt                 #   9:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  12:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  13:     return t11
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  14:     call   t12 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  15:     return t12
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 53 of <array 57 of <array 35 of <array 98 of <array 100 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 85 of <array 6 of <array 14 of <array 1 of <array 29 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 23 of <array 59 of <array 57 of <array 6 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    movl    $1, %eax                #   1:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
l_test_3_if_true:
    jmp     l_test_11_if_false      #   4:     goto   11_if_false
    jmp     l_test_9                #   5:     goto   9
l_test_11_if_false:
l_test_9:
    call    dummyBOOLfunc           #   8:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_14_while_cond:
    movl    $99, %eax               #  10:     if     99 = 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
    jmp     l_test_13               #  11:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  13:     goto   14_while_cond
l_test_13:
    movl    $100, %eax              #  15:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_2                #  16:     goto   2
l_test_2:
l_test_19_while_cond:
    leal    v4, %eax                #  19:     &()    t1 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     param  3 <- t1
    pushl   %eax                   
    leal    v3, %eax                #  21:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     param  2 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  23:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     param  1 <- t3
    pushl   %eax                   
    movl    $100, %eax              #  25:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  26:     call   f0
    addl    $16, %esp              
    jmp     l_test_19_while_cond    #  27:     goto   19_while_cond
    jmp     l_test_23_if_true       #  28:     goto   23_if_true
    jmp     l_test_24_if_false      #  29:     goto   24_if_false
l_test_23_if_true:
    movl    $5632, %eax             #  31:     param  0 <- 5632
    pushl   %eax                   
    call    WriteInt                #  32:     call   WriteInt
    addl    $4, %esp               
    call    ReadInt                 #  33:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_test_22               #  34:     goto   22
l_test_24_if_false:
l_test_22:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 5 of <array 23 of <array 59 of <array 57 of <array 6 of <bool>>>>>>
    .long    5
    .long    5
    .long   23
    .long   59
    .long   57
    .long    6
    .skip 2320470
    .align   4
v3:                                 # <array 85 of <array 6 of <array 14 of <array 1 of <array 29 of <int>>>>>>
    .long    5
    .long   85
    .long    6
    .long   14
    .long    1
    .long   29
    .skip 828240
v4:                                 # <array 53 of <array 57 of <array 35 of <array 98 of <array 100 of <char>>>>>>
    .long    5
    .long   53
    .long   57
    .long   35
    .long   98
    .long  100
    .skip 1036203000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
