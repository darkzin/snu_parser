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
    #    -16(%ebp)   4  [ $t28      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t29      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t30      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t31      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]

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
    movl    $46782, %eax            #   0:     add    t28 <- 46782, 61530
    movl    $61530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t29 <- t28, 71400
    movl    $71400, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t29
    movl    %eax, -32(%ebp)        
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
    call    dummyCHARfunc           #   4:     call   t30 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $26901, %eax            #   8:     div    t31 <- 26901, 51381
    movl    $51381, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     assign v0 <- t31
    movl    %eax, -32(%ebp)        

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
    #    -16(%ebp)   4  [ $t28      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t29      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t30      <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t31      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t32      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t33      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t34      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t35      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t36      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t37      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t38      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t39      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t40      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t41      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t42      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t43      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t44      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t45      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t46      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t47      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t48      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t49      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t50      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t51      <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>> %ebp+8 ]
    #   -105(%ebp)   1  [ $v1       <bool> %ebp-105 ]

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
    call    f0                      #   0:     call   t28 <- f0
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t29 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t29 = 97 goto 2
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t30 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t30 <- 0
    movb    %al, -18(%ebp)         
l_f1_4:
    movzbl  -18(%ebp), %eax         #  10:     return t30
    jmp     l_f1_exit              
    movl    $47730, %eax            #  11:     sub    t31 <- 47730, 50952
    movl    $50952, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     if     t31 > 97103 goto 7
    movl    $97103, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #  13:     goto   8
l_f1_7:
    movl    $1, %eax                #  15:     assign t32 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_9                  #  16:     goto   9
l_f1_8:
    movl    $0, %eax                #  18:     assign t32 <- 0
    movb    %al, -25(%ebp)         
l_f1_9:
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    $75597, %eax            #  23:     mul    t34 <- 75597, t33
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t35 <- t34, 25255
    movl    $25255, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     mul    t37 <- t35, t36
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $10924, %eax            #  29:     sub    t38 <- 10924, 69168
    movl    $69168, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  30:     add    t39 <- t38, 46639
    movl    $46639, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  31:     sub    t40 <- t39, 32945
    movl    $32945, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t41 <- t37, t40
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $4, %eax                #  33:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  35:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  36:     mul    t43 <- t41, t42
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  37:     add    t44 <- t43, 83752
    movl    $83752, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $5, %eax                #  38:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  39:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  40:     call   t45 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  41:     mul    t46 <- t44, t45
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  42:     add    t47 <- t46, 84946
    movl    $84946, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  43:     mul    t48 <- t47, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    8(%ebp), %eax           #  44:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  45:     call   t49 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  46:     add    t50 <- t48, t49
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    8(%ebp), %eax           #  47:     add    t51 <- v0, t50
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movzbl  -25(%ebp), %eax         #  48:     assign @t51 <- t32
    movl    -104(%ebp), %edi       
    movb    %al, (%edi)            

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
    #    -13(%ebp)   1  [ $t28      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t29      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t30      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t31      <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t32      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 32 of <array 39 of <array 53 of <array 65 of <array 26 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 96 of <array 81 of <array 13 of <array 61 of <array 100 of <int>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t28 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t28 < 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t29 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t29 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t29
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  10:     call   t30 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  11:     if     99 > t30 goto 6
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_6                 
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $1, %eax                #  14:     assign t31 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_8                  #  15:     goto   8
l_f2_7:
    movl    $0, %eax                #  17:     assign t31 <- 0
    movb    %al, -16(%ebp)         
l_f2_8:
    movzbl  -16(%ebp), %eax         #  19:     return t31
    jmp     l_f2_exit              
    call    dummyINTfunc            #  20:     call   t32 <- dummyINTfunc
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <ptr(4) to <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <ptr(4) to <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <ptr(4) to <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <ptr(4) to <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t3       <bool> %ebp-93 ]
    #    -94(%ebp)   1  [ $t4       <bool> %ebp-94 ]
    #    -95(%ebp)   1  [ $t5       <bool> %ebp-95 ]
    #   -100(%ebp)   4  [ $t6       <ptr(4) to <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t7       <ptr(4) to <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t8       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t9       <int> %ebp-112 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 > t0 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2               
    jmp     l_test_3                #   3:     goto   3
l_test_2:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   6:     goto   4
l_test_3:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t1
    movb    %al, v0                
    leal    v1, %eax                #  11:     &()    t2 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  12:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  13:     call   t3 <- f1
    addl    $4, %esp               
    movb    %al, -93(%ebp)         
    jmp     l_test_12               #  14:     goto   12
    jmp     l_test_12               #  15:     goto   12
    jmp     l_test_12               #  16:     goto   12
l_test_12:
    movl    $1, %eax                #  18:     assign t4 <- 1
    movb    %al, -94(%ebp)         
    jmp     l_test_14               #  19:     goto   14
    movl    $0, %eax                #  20:     assign t4 <- 0
    movb    %al, -94(%ebp)         
l_test_14:
    movl    $0, %eax                #  22:     if     0 # t4 goto 8
    movzbl  -94(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_8               
    jmp     l_test_9                #  23:     goto   9
l_test_8:
    movl    $1, %eax                #  25:     assign t5 <- 1
    movb    %al, -95(%ebp)         
    jmp     l_test_10               #  26:     goto   10
l_test_9:
    movl    $0, %eax                #  28:     assign t5 <- 0
    movb    %al, -95(%ebp)         
l_test_10:
    leal    v1, %eax                #  30:     &()    t6 <- v1
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #  31:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  32:     &()    t7 <- v1
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  33:     param  0 <- t7
    pushl   %eax                   
    call    DIM                     #  34:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -108(%ebp)       
    movl    $31452, %eax            #  35:     mul    t9 <- 31452, t8
    movl    -108(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  36:     add    t10 <- t9, 85306
    movl    $85306, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  38:     &()    t11 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     param  0 <- t11
    pushl   %eax                   
    call    DIM                     #  40:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #  41:     mul    t13 <- t10, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  42:     add    t14 <- t13, 75725
    movl    $75725, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  43:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  44:     &()    t15 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  45:     param  0 <- t15
    pushl   %eax                   
    call    DIM                     #  46:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  47:     mul    t17 <- t14, t16
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  48:     add    t18 <- t17, 95382
    movl    $95382, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  49:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  50:     &()    t19 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  51:     param  0 <- t19
    pushl   %eax                   
    call    DIM                     #  52:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -52(%ebp), %eax         #  53:     mul    t21 <- t18, t20
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  54:     add    t22 <- t21, 69121
    movl    $69121, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  55:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    leal    v1, %eax                #  56:     &()    t24 <- v1
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  57:     param  0 <- t24
    pushl   %eax                   
    call    DOFS                    #  58:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -76(%ebp), %eax         #  59:     add    t26 <- t23, t25
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -100(%ebp), %eax        #  60:     add    t27 <- t6, t26
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movzbl  -95(%ebp), %eax         #  61:     assign @t27 <- t5
    movl    -92(%ebp), %edi        
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $100, %esp              # remove locals
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
v1:                                 # <array 21 of <array 37 of <array 7 of <array 86 of <array 29 of <bool>>>>>>
    .long    5
    .long   21
    .long   37
    .long    7
    .long   86
    .long   29
    .skip 13564866








    # end of global data section
    #-----------------------------------------

    .end
##################################################
