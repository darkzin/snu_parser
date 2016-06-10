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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_3_while_cond:
    movl    $34517, %eax            #   3:     if     34517 <= 21388 goto 4_while_body
    movl    $21388, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    movl    $0, %eax                #   6:     assign v0 <- 0
    movb    %al, -21(%ebp)         
l_f0_8_while_cond:
    movl    $29534, %eax            #   8:     if     29534 < 83340 goto 9_while_body
    movl    $83340, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #   9:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  11:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_11                 #  13:     goto   11
l_f0_11:
    jmp     l_f0_3_while_cond       #  15:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t30      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t31      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t32      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t33      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t34      <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t35      <int> %ebp-120 ]
    #   -124(%ebp)   4  [ $t36      <int> %ebp-124 ]
    #   -128(%ebp)   4  [ $t37      <int> %ebp-128 ]
    #   -132(%ebp)   4  [ $t38      <int> %ebp-132 ]
    #   -136(%ebp)   4  [ $t39      <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t4       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t5       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t6       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t7       <int> %ebp-152 ]
    #   -156(%ebp)   4  [ $t8       <int> %ebp-156 ]
    #   -160(%ebp)   4  [ $t9       <int> %ebp-160 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 2 of <array 8 of <array 3 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 3 of <array 7 of <array 6 of <array 4 of <char>>>>>>> %ebp+20 ]
    #   -161(%ebp)   1  [ $v4       <bool> %ebp-161 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $152, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $38, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $76480, %eax            #   4:     mul    t5 <- 76480, t4
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   5:     add    t6 <- t5, 29630
    movl    $29630, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #   9:     mul    t8 <- t6, t7
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -156(%ebp)       
    movl    -156(%ebp), %eax        #  10:     add    t9 <- t8, 30255
    movl    $30255, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -160(%ebp)       
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -160(%ebp), %eax        #  14:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t12 <- t11, 31697
    movl    $31697, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  19:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     add    t15 <- t14, 64668
    movl    $64668, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  23:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  25:     add    t19 <- v3, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movzbl  -93(%ebp), %eax         #  26:     assign @t19 <- t3
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $89176, %eax            #  27:     if     89176 > 91967 goto 2
    movl    $91967, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #  28:     goto   3
l_f1_2:
    movl    $1, %eax                #  30:     assign t20 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_4                  #  31:     goto   4
l_f1_3:
    movl    $0, %eax                #  33:     assign t20 <- 0
    movb    %al, -53(%ebp)         
l_f1_4:
    movl    $2, %eax                #  35:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $70316, %eax            #  38:     mul    t22 <- 70316, t21
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  39:     add    t23 <- t22, 50225
    movl    $50225, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  40:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  43:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  44:     add    t26 <- t25, 55375
    movl    $55375, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  45:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  48:     mul    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    $86545, %eax            #  49:     add    t29 <- 86545, 76241
    movl    $76241, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  50:     add    t30 <- t29, 57490
    movl    $57490, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -88(%ebp), %eax         #  51:     add    t31 <- t28, t30
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  52:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  53:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  54:     call   t32 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    -104(%ebp), %eax        #  55:     mul    t33 <- t31, t32
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    $71054, %eax            #  56:     mul    t34 <- 71054, 54957
    movl    $54957, %ebx           
    imull   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -112(%ebp), %eax        #  57:     add    t35 <- t33, t34
    movl    -116(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  58:     mul    t36 <- t35, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -124(%ebp)       
    movl    16(%ebp), %eax          #  59:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  60:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -128(%ebp)       
    movl    -124(%ebp), %eax        #  61:     add    t38 <- t36, t37
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movl    16(%ebp), %eax          #  62:     add    t39 <- v2, t38
    movl    -132(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -136(%ebp)       
    movzbl  -53(%ebp), %eax         #  63:     assign @t39 <- t20
    movl    -136(%ebp), %edi       
    movb    %al, (%edi)            
    movl    $97, %eax               #  64:     assign v0 <- 97
    movb    %al, 8(%ebp)           

l_f1_exit:
    # epilogue
    addl    $152, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $26754, %eax            #   1:     mul    t4 <- 26754, 10730
    movl    $10730, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t4
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
    movl    $31516, %eax            #   3:     sub    t1 <- 31516, 28200
    movl    $28200, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $54162, %eax            #   4:     if     54162 >= t1 goto 3
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_3               
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_5                #   8:     goto   5
l_test_4:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_5:
    movzbl  -21(%ebp), %eax         #  12:     assign v1 <- t2
    movb    %al, v1                
    movl    $15685, %eax            #  13:     assign v2 <- 15685
    movl    %eax, v2               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
