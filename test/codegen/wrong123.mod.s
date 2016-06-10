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
    #    -13(%ebp)   1  [ $t31      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t32      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t33      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t34      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t35      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t36      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t37      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t38      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t39      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t40      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t41      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t42      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t43      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t44      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t45      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t46      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t47      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t48      <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 9 of <array 3 of <array 4 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 8 of <array 6 of <array 1 of <array 5 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_6                  #   2:     goto   6
l_f0_5:
    movl    $1, %eax                #   4:     assign t31 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $0, %eax                #   7:     assign t31 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #   9:     if     t31 # 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  10:     goto   3_if_false
l_f0_2_if_true:
l_f0_10_while_cond:
    jmp     l_f0_9                  #  13:     goto   9
    jmp     l_f0_10_while_cond      #  14:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_1                  #  16:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $24266, %eax            #  19:     div    t32 <- 24266, 34929
    movl    $34929, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t33 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  23:     mul    t34 <- t32, t33
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     add    t35 <- t34, 89206
    movl    $89206, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t36 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  28:     mul    t37 <- t35, t36
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     add    t38 <- t37, 57688
    movl    $57688, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t39 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  33:     mul    t40 <- t38, t39
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  34:     add    t41 <- t40, 52106
    movl    $52106, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  37:     call   t42 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  38:     mul    t43 <- t41, t42
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  39:     add    t44 <- t43, 72530
    movl    $72530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  40:     mul    t45 <- t44, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  41:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  42:     call   t46 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  43:     add    t47 <- t45, t46
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  44:     add    t48 <- v0, t47
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $0, %eax                #  45:     assign @t48 <- 0
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t31      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t32      <ptr(4) to <array 6 of <array 8 of <array 6 of <array 1 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t33      <ptr(4) to <array 10 of <array 9 of <array 3 of <array 4 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t34      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t35      <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t36      <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t37      <bool> %ebp-34 ]
    #   -1660(%ebp)  1624  [ $v0       <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>> %ebp-1660 ]
    #   -14644(%ebp)  12984  [ $v1       <array 10 of <array 9 of <array 3 of <array 4 of <array 3 of <int>>>>>> %ebp-14644 ]
    #   -20428(%ebp)  5784  [ $v2       <array 6 of <array 8 of <array 6 of <array 1 of <array 5 of <int>>>>>> %ebp-20428 ]
    #   -20429(%ebp)   1  [ $v3       <char> %ebp-20429 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20420, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5105, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1660(%ebp)          # local array 'v0': 5 dimensions
    movl    $5,-1656(%ebp)          #   dimension 1: 5 elements
    movl    $8,-1652(%ebp)          #   dimension 2: 8 elements
    movl    $1,-1648(%ebp)          #   dimension 3: 1 elements
    movl    $4,-1644(%ebp)          #   dimension 4: 4 elements
    movl    $10,-1640(%ebp)         #   dimension 5: 10 elements
    movl    $5,-14644(%ebp)         # local array 'v1': 5 dimensions
    movl    $10,-14640(%ebp)        #   dimension 1: 10 elements
    movl    $9,-14636(%ebp)         #   dimension 2: 9 elements
    movl    $3,-14632(%ebp)         #   dimension 3: 3 elements
    movl    $4,-14628(%ebp)         #   dimension 4: 4 elements
    movl    $3,-14624(%ebp)         #   dimension 5: 3 elements
    movl    $5,-20428(%ebp)         # local array 'v2': 5 dimensions
    movl    $6,-20424(%ebp)         #   dimension 1: 6 elements
    movl    $8,-20420(%ebp)         #   dimension 2: 8 elements
    movl    $6,-20416(%ebp)         #   dimension 3: 6 elements
    movl    $1,-20412(%ebp)         #   dimension 4: 1 elements
    movl    $5,-20408(%ebp)         #   dimension 5: 5 elements

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t31 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   2:     if     0 = t31 goto 4_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   3:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   5:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_0                  #   8:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $63876, %eax            #  11:     if     63876 # 57403 goto 8_if_true
    movl    $57403, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  12:     goto   9_if_false
l_f1_8_if_true:
    movl    $4355, %eax             #  14:     return 4355
    jmp     l_f1_exit              
    movl    $0, %eax                #  15:     if     0 # 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  16:     goto   14_if_false
l_f1_13_if_true:
    leal    -20428(%ebp), %eax      #  18:     &()    t32 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  3 <- t32
    pushl   %eax                   
    leal    -14644(%ebp), %eax      #  20:     &()    t33 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  2 <- t33
    pushl   %eax                   
    movl    $61020, %eax            #  22:     if     61020 < 60809 goto 17
    movl    $60809, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_17                
    jmp     l_f1_18                 #  23:     goto   18
l_f1_17:
    movl    $1, %eax                #  25:     assign t34 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_19                 #  26:     goto   19
l_f1_18:
    movl    $0, %eax                #  28:     assign t34 <- 0
    movb    %al, -25(%ebp)         
l_f1_19:
    movzbl  -25(%ebp), %eax         #  30:     param  1 <- t34
    pushl   %eax                   
    leal    -1660(%ebp), %eax       #  31:     &()    t35 <- v0
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  32:     param  0 <- t35
    pushl   %eax                   
    call    f0                      #  33:     call   t36 <- f0
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    movl    $100, %eax              #  34:     assign v3 <- 100
    movb    %al, -20429(%ebp)      
    jmp     l_f1_12                 #  35:     goto   12
l_f1_14_if_false:
l_f1_12:
    jmp     l_f1_7                  #  38:     goto   7
l_f1_9_if_false:
l_f1_7:
l_f1_23_while_cond:
    call    dummyBOOLfunc           #  42:     call   t37 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  43:     if     t37 = 1 goto 24_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_24_while_body     
    jmp     l_f1_22                 #  44:     goto   22
l_f1_24_while_body:
    jmp     l_f1_25                 #  46:     goto   25
l_f1_25:
    jmp     l_f1_23_while_cond      #  48:     goto   23_while_cond
l_f1_22:

l_f1_exit:
    # epilogue
    addl    $20420, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t31      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t32      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t33      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t34      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t35      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t36      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t37      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t38      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t39      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t40      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t41      <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    call    dummyBOOLfunc           #   7:     call   t31 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $53653, %eax            #   8:     div    t32 <- 53653, 90672
    movl    $90672, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     mul    t33 <- t32, 52404
    movl    $52404, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     mul    t34 <- t33, 14661
    movl    $14661, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t35 <- t34, 30613
    movl    $30613, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $1157, %eax             #  12:     mul    t36 <- 1157, 79544
    movl    $79544, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     div    t37 <- t36, 51841
    movl    $51841, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     div    t38 <- t37, 10116
    movl    $10116, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     mul    t39 <- t38, 645
    movl    $645, %ebx             
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  16:     div    t40 <- t39, 57924
    movl    $57924, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -32(%ebp), %eax         #  17:     sub    t41 <- t35, t40
    movl    -52(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  18:     param  0 <- t41
    pushl   %eax                   
    call    WriteInt                #  19:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <ptr(4) to <array 6 of <array 8 of <array 6 of <array 1 of <array 5 of <int>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-92 ]
    #    -96(%ebp)   4  [ $t28      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t29      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 9 of <array 3 of <array 4 of <array 3 of <int>>>>>>> %ebp-104 ]
    #   -108(%ebp)   4  [ $t30      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t4       <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t5       <bool> %ebp-113 ]
    #   -120(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-120 ]
    #   -121(%ebp)   1  [ $t7       <char> %ebp-121 ]
    #   -122(%ebp)   1  [ $t8       <bool> %ebp-122 ]
    #   -128(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>> %ebp-128 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $116, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_5_while_cond:
    movl    $19483, %eax            #   3:     if     19483 > 30693 goto 6_while_body
    movl    $30693, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   4:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   6:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    call    WriteLn                 #  11:     call   WriteLn
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_9                #  14:     goto   9
l_test_9:
    call    dummyBOOLfunc           #  16:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    f2                      #  17:     call   t1 <- f2
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  18:     assign v0 <- t1
    movb    %al, v0                
l_test_18_while_cond:
    leal    v3, %eax                #  20:     &()    t2 <- v3
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  21:     param  3 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  22:     &()    t3 <- v2
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  23:     param  2 <- t3
    pushl   %eax                   
    movl    $89753, %eax            #  24:     div    t4 <- 89753, 45365
    movl    $45365, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    $65490, %eax            #  25:     if     65490 < t4 goto 21
    movl    -112(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jl      l_test_21              
    jmp     l_test_22               #  26:     goto   22
l_test_21:
    movl    $1, %eax                #  28:     assign t5 <- 1
    movb    %al, -113(%ebp)        
    jmp     l_test_23               #  29:     goto   23
l_test_22:
    movl    $0, %eax                #  31:     assign t5 <- 0
    movb    %al, -113(%ebp)        
l_test_23:
    movzbl  -113(%ebp), %eax        #  33:     param  1 <- t5
    pushl   %eax                   
    leal    v1, %eax                #  34:     &()    t6 <- v1
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  35:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  36:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -121(%ebp)        
    movzbl  -121(%ebp), %eax        #  37:     if     t7 < 97 goto 19_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_19_while_body   
    jmp     l_test_17               #  38:     goto   17
l_test_19_while_body:
    jmp     l_test_27_if_false      #  40:     goto   27_if_false
    jmp     l_test_25               #  41:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_18_while_cond    #  44:     goto   18_while_cond
l_test_17:
    jmp     l_test_32               #  46:     goto   32
l_test_32:
    movl    $1, %eax                #  48:     assign t8 <- 1
    movb    %al, -122(%ebp)        
    jmp     l_test_31               #  49:     goto   31
    movl    $0, %eax                #  50:     assign t8 <- 0
    movb    %al, -122(%ebp)        
l_test_31:
    leal    v1, %eax                #  52:     &()    t9 <- v1
    movl    %eax, -128(%ebp)       
    movl    $2, %eax                #  53:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  54:     &()    t10 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  55:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  56:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $38158, %eax            #  57:     mul    t12 <- 38158, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  58:     add    t13 <- t12, 68556
    movl    $68556, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  59:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  60:     &()    t14 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  61:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  62:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -32(%ebp), %eax         #  63:     mul    t16 <- t13, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  64:     add    t17 <- t16, 62488
    movl    $62488, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  65:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  66:     &()    t18 <- v1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  67:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  68:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  69:     mul    t20 <- t17, t19
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  70:     add    t21 <- t20, 64547
    movl    $64547, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  71:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  72:     &()    t22 <- v1
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  73:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  74:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -68(%ebp), %eax         #  75:     mul    t24 <- t21, t23
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  76:     add    t25 <- t24, 30922
    movl    $30922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  77:     mul    t26 <- t25, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    leal    v1, %eax                #  78:     &()    t27 <- v1
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  79:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  80:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -96(%ebp)        
    movl    -88(%ebp), %eax         #  81:     add    t29 <- t26, t28
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -128(%ebp), %eax        #  82:     add    t30 <- t9, t29
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movzbl  -122(%ebp), %eax        #  83:     assign @t30 <- t8
    movl    -108(%ebp), %edi       
    movb    %al, (%edi)            

l_test_exit:
    # epilogue
    addl    $116, %esp              # remove locals
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
    .align   4
v1:                                 # <array 5 of <array 8 of <array 1 of <array 4 of <array 10 of <bool>>>>>>
    .long    5
    .long    5
    .long    8
    .long    1
    .long    4
    .long   10
    .skip 1600
v2:                                 # <array 10 of <array 9 of <array 3 of <array 4 of <array 3 of <int>>>>>>
    .long    5
    .long   10
    .long    9
    .long    3
    .long    4
    .long    3
    .skip 12960
v3:                                 # <array 6 of <array 8 of <array 6 of <array 1 of <array 5 of <int>>>>>>
    .long    5
    .long    6
    .long    8
    .long    6
    .long    1
    .long    5
    .skip 5760
v4:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
