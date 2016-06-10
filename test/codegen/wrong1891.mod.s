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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 45 of <array 64 of <array 52 of <array 65 of <bool>>>>>>> %ebp+8 ]

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
    movl    $55529, %eax            #   0:     div    t5 <- 55529, 45893
    movl    $45893, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t6 <- t5, 66005
    movl    $66005, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t6
    jmp     l_f0_exit              
    movl    $2367, %eax             #   3:     mul    t7 <- 2367, 9012
    movl    $9012, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $5285, %eax             #   4:     add    t8 <- 5285, t7
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t8
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   6:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
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
    #   -136(%ebp)   4  [ $t5       <int> %ebp-136 ]
    #   -140(%ebp)   4  [ $t6       <int> %ebp-140 ]
    #   -144(%ebp)   4  [ $t7       <int> %ebp-144 ]
    #   -148(%ebp)   4  [ $t8       <int> %ebp-148 ]
    #   -152(%ebp)   4  [ $t9       <int> %ebp-152 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 28 of <array 6 of <array 76 of <array 31 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 41 of <array 45 of <array 11 of <array 73 of <array 63 of <bool>>>>>>> %ebp+16 ]
    #   -153(%ebp)   1  [ $v3       <char> %ebp-153 ]
    #   -154(%ebp)   1  [ $v4       <bool> %ebp-154 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $144, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $36, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -136(%ebp)       
l_f1_2_while_cond:
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -140(%ebp)       
    movl    $12115, %eax            #   5:     mul    t7 <- 12115, t6
    movl    -140(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -144(%ebp)       
    movl    -144(%ebp), %eax        #   6:     add    t8 <- t7, 47602
    movl    $47602, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -148(%ebp)       
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -152(%ebp)       
    movl    -148(%ebp), %eax        #  10:     mul    t10 <- t8, t9
    movl    -152(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 94701
    movl    $94701, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  15:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t14 <- t13, 24213
    movl    $24213, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t17 <- t16, 69011
    movl    $69011, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $99, %eax               #  27:     assign @t21 <- 99
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #  29:     goto   6_while_cond
    movl    $100, %eax              #  30:     assign v3 <- 100
    movb    %al, -153(%ebp)        
    jmp     l_f1_2_while_cond       #  31:     goto   2_while_cond
    movl    $97, %eax               #  32:     if     97 < 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_10                
    jmp     l_f1_11                 #  33:     goto   11
l_f1_10:
    movl    $1, %eax                #  35:     assign t22 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f1_12                 #  36:     goto   12
l_f1_11:
    movl    $0, %eax                #  38:     assign t22 <- 0
    movb    %al, -61(%ebp)         
l_f1_12:
    call    dummyINTfunc            #  40:     call   t23 <- dummyINTfunc
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  41:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  42:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  43:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  44:     mul    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  45:     add    t26 <- t25, 70786
    movl    $70786, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  47:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  48:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  49:     mul    t28 <- t26, t27
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  50:     add    t29 <- t28, 76925
    movl    $76925, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  51:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  52:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  53:     call   t30 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  54:     mul    t31 <- t29, t30
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  55:     add    t32 <- t31, 41953
    movl    $41953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $5, %eax                #  56:     param  1 <- 5
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
    movl    -112(%ebp), %eax        #  60:     add    t35 <- t34, 31962
    movl    $31962, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  61:     mul    t36 <- t35, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    16(%ebp), %eax          #  62:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  63:     call   t37 <- DOFS
    addl    $4, %esp               
    movl    %eax, -124(%ebp)       
    movl    -120(%ebp), %eax        #  64:     add    t38 <- t36, t37
    movl    -124(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -128(%ebp)       
    movl    16(%ebp), %eax          #  65:     add    t39 <- v2, t38
    movl    -128(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -132(%ebp)       
    movzbl  -61(%ebp), %eax         #  66:     assign @t39 <- t22
    movl    -132(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $144, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 49 of <array 57 of <array 14 of <array 31 of <array 86 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 60 of <array 62 of <array 54 of <array 86 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   4:     goto   4
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
    call    WriteLn                 #   8:     call   WriteLn
    call    dummyBOOLfunc           #   9:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 76 of <array 45 of <array 64 of <array 52 of <array 65 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
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
l_test_4_while_cond:
    jmp     l_test_5_while_body     #   1:     goto   5_while_body
    jmp     l_test_3                #   2:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    jmp     l_test_0                #   6:     goto   0
l_test_0:
    leal    v0, %eax                #   8:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t0
    pushl   %eax                   
    call    f0                      #  10:     call   t1 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $830, %eax              #  11:     sub    t2 <- 830, 96702
    movl    $96702, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t3 <- t2, 43613
    movl    $43613, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     sub    t4 <- t3, 1638
    movl    $1638, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     assign v1 <- t4
    movl    %eax, v1               

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
v0:                                 # <array 76 of <array 45 of <array 64 of <array 52 of <array 65 of <bool>>>>>>
    .long    5
    .long   76
    .long   45
    .long   64
    .long   52
    .long   65
    .skip 739814400
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
