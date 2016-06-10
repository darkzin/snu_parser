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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 4 of <array 6 of <array 9 of <char>>>>>>> %ebp+12 ]
    #    -38(%ebp)   1  [ $v2       <bool> %ebp-38 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
l_f0_2_while_body:
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
    movl    $79686, %eax            #   6:     assign v0 <- 79686
    movl    %eax, 8(%ebp)          
    movl    $78080, %eax            #   7:     sub    t2 <- 78080, 8399
    movl    $8399, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t3 <- t2, 1817
    movl    $1817, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t4 <- t3, 20603
    movl    $20603, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     add    t5 <- t4, 90331
    movl    $90331, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     add    t6 <- t5, 45295
    movl    $45295, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     if     t6 <= 59190 goto 10
    movl    $59190, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  13:     goto   11
l_f0_10:
    movl    $1, %eax                #  15:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_12                 #  16:     goto   12
l_f0_11:
    movl    $0, %eax                #  18:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_f0_12:
    movzbl  -37(%ebp), %eax         #  20:     assign v2 <- t7
    movb    %al, -38(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 9 of <array 6 of <array 3 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 1 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    jmp     l_f1_0                  #   3:     goto   0
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #   6:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1494, %eax             #   7:     mul    t2 <- 1494, 26733
    movl    $26733, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 2 of <array 9 of <array 6 of <array 3 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t11      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 1 of <array 6 of <bool>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 9 of <array 6 of <array 3 of <array 5 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t31      <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t4       <char> %ebp-113 ]
    #   -120(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 1 of <array 6 of <bool>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 9 of <array 6 of <array 3 of <array 5 of <int>>>>>>> %ebp-124 ]
    #   -125(%ebp)   1  [ $t7       <char> %ebp-125 ]
    #   -126(%ebp)   1  [ $t8       <bool> %ebp-126 ]
    #   -132(%ebp)   4  [ $t9       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 1 of <array 6 of <bool>>>>>>> %ebp-132 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 10 of <array 6 of <array 6 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 9 of <array 3 of <array 10 of <array 8 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 1 of <array 5 of <array 10 of <array 1 of <int>>>>>>> %ebp+20 ]
    #   -6636(%ebp)  6504  [ $v4       <array 2 of <array 9 of <array 6 of <array 3 of <array 5 of <int>>>>>> %ebp-6636 ]
    #   -7632(%ebp)  996  [ $v5       <array 2 of <array 9 of <array 9 of <array 1 of <array 6 of <bool>>>>>> %ebp-7632 ]
    #   -7636(%ebp)   4  [ $v6       <int> %ebp-7636 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $7624, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1906, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6636(%ebp)          # local array 'v4': 5 dimensions
    movl    $2,-6632(%ebp)          #   dimension 1: 2 elements
    movl    $9,-6628(%ebp)          #   dimension 2: 9 elements
    movl    $6,-6624(%ebp)          #   dimension 3: 6 elements
    movl    $3,-6620(%ebp)          #   dimension 4: 3 elements
    movl    $5,-6616(%ebp)          #   dimension 5: 5 elements
    movl    $5,-7632(%ebp)          # local array 'v5': 5 dimensions
    movl    $2,-7628(%ebp)          #   dimension 1: 2 elements
    movl    $9,-7624(%ebp)          #   dimension 2: 9 elements
    movl    $9,-7620(%ebp)          #   dimension 3: 9 elements
    movl    $1,-7616(%ebp)          #   dimension 4: 1 elements
    movl    $6,-7612(%ebp)          #   dimension 5: 6 elements

    # function body
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
    jmp     l_f2_8                  #   6:     goto   8
    jmp     l_f2_9                  #   7:     goto   9
l_f2_8:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_10                 #  10:     goto   10
l_f2_9:
    movl    $0, %eax                #  12:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_10:
    movzbl  -13(%ebp), %eax         #  14:     return t1
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  15:     goto   1_while_cond
l_f2_0:
    movl    $13087, %eax            #  17:     param  3 <- 13087
    pushl   %eax                   
    movl    $61650, %eax            #  18:     param  3 <- 61650
    pushl   %eax                   
    movl    $1, %eax                #  19:     param  2 <- 1
    pushl   %eax                   
    leal    -7632(%ebp), %eax       #  20:     &()    t2 <- v5
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     param  1 <- t2
    pushl   %eax                   
    leal    -6636(%ebp), %eax       #  22:     &()    t3 <- v4
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  23:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  24:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -113(%ebp)        
    movl    $83457, %eax            #  25:     param  3 <- 83457
    pushl   %eax                   
    movl    $0, %eax                #  26:     param  2 <- 0
    pushl   %eax                   
    leal    -7632(%ebp), %eax       #  27:     &()    t5 <- v5
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  28:     param  1 <- t5
    pushl   %eax                   
    leal    -6636(%ebp), %eax       #  29:     &()    t6 <- v4
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  30:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  31:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -125(%ebp)        
    movzbl  -113(%ebp), %eax        #  32:     if     t4 # t7 goto 16
    movzbl  -125(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jne     l_f2_16                
    jmp     l_f2_17                 #  33:     goto   17
l_f2_16:
    movl    $1, %eax                #  35:     assign t8 <- 1
    movb    %al, -126(%ebp)        
    jmp     l_f2_18                 #  36:     goto   18
l_f2_17:
    movl    $0, %eax                #  38:     assign t8 <- 0
    movb    %al, -126(%ebp)        
l_f2_18:
    movzbl  -126(%ebp), %eax        #  40:     param  2 <- t8
    pushl   %eax                   
    leal    -7632(%ebp), %eax       #  41:     &()    t9 <- v5
    movl    %eax, -132(%ebp)       
    movl    -132(%ebp), %eax        #  42:     param  1 <- t9
    pushl   %eax                   
    leal    -6636(%ebp), %eax       #  43:     &()    t10 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  44:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  45:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movl    $9010, %eax             #  46:     mul    t12 <- 9010, 50184
    movl    $50184, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  47:     div    t13 <- t12, 98890
    movl    $98890, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  48:     mul    t14 <- t13, 19308
    movl    $19308, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $2, %eax                #  49:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  50:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  51:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    $94504, %eax            #  52:     mul    t16 <- 94504, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $17694, %eax            #  53:     sub    t17 <- 17694, 75461
    movl    $75461, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  54:     add    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $3, %eax                #  55:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  56:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  57:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  58:     mul    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  59:     add    t21 <- t20, 45841
    movl    $45841, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  60:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  61:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  62:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  63:     mul    t23 <- t21, t22
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  64:     add    t24 <- t23, 54688
    movl    $54688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  65:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  66:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  67:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  68:     mul    t26 <- t24, t25
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  69:     add    t27 <- t26, 24284
    movl    $24284, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  70:     mul    t28 <- t27, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    8(%ebp), %eax           #  71:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  72:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  73:     add    t30 <- t28, t29
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    8(%ebp), %eax           #  74:     add    t31 <- v0, t30
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -36(%ebp), %eax         #  75:     assign @t31 <- t14
    movl    -112(%ebp), %edi       
    movl    %eax, (%edi)           

l_f2_exit:
    # epilogue
    addl    $7624, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
l_test_3_if_true:
    jmp     l_test_2                #   4:     goto   2
l_test_2:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_10_while_cond:
    jmp     l_test_11_while_body    #   9:     goto   11_while_body
l_test_11_while_body:
    movl    $22700, %eax            #  11:     assign v0 <- 22700
    movl    %eax, v0               
    jmp     l_test_10_while_cond    #  12:     goto   10_while_cond

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

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
