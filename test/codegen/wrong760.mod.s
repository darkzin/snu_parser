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
    #    -57(%ebp)   1  [ $t21      <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $t4       <char> %ebp-58 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 5 of <array 4 of <array 8 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -58(%ebp)         
    movzbl  -58(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $100, %eax              #   6:     if     100 <= 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   7:     goto   9_if_false
l_f0_8_if_true:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $86374, %eax            #  12:     mul    t6 <- 86374, t5
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  13:     add    t7 <- t6, 16461
    movl    $16461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  17:     mul    t9 <- t7, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  18:     add    t10 <- t9, 62510
    movl    $62510, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  22:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t13 <- t12, 24095
    movl    $24095, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  27:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     add    t16 <- t15, 23802
    movl    $23802, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  29:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  30:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  31:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  32:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  33:     add    t20 <- v1, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $99, %eax               #  34:     assign @t20 <- 99
    movl    -56(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_7                  #  35:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_1                  #  38:     goto   1
l_f0_1:
l_f0_13_while_cond:
    movl    $99, %eax               #  41:     if     99 >= 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_14_while_body     
    jmp     l_f0_12                 #  42:     goto   12
l_f0_14_while_body:
    call    dummyCHARfunc           #  44:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    jmp     l_f0_13_while_cond      #  45:     goto   13_while_cond
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 6 of <array 6 of <array 8 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 8 of <array 9 of <array 2 of <array 6 of <char>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_2_if_true          #   2:     goto   2_if_true
    jmp     l_f1_2_if_true          #   3:     goto   2_if_true
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #   9:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t15      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t16      <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t17      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t18      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t19      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t20      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t21      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t22      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t23      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t24      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t25      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t26      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t27      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t28      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t29      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t30      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t31      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t32      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t4       <ptr(4) to <array 10 of <array 8 of <array 9 of <array 2 of <array 6 of <char>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t5       <ptr(4) to <array 3 of <array 6 of <array 6 of <array 8 of <array 7 of <char>>>>>>> %ebp-92 ]
    #    -93(%ebp)   1  [ $t6       <char> %ebp-93 ]
    #   -100(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 8 of <array 9 of <array 2 of <array 6 of <char>>>>>>> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <ptr(4) to <array 3 of <array 6 of <array 6 of <array 8 of <array 7 of <char>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t9       <char> %ebp-105 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 9 of <array 5 of <array 8 of <array 1 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 10 of <array 2 of <array 6 of <array 2 of <bool>>>>>>> %ebp+20 ]
    #   -6180(%ebp)  6072  [ $v4       <array 3 of <array 6 of <array 6 of <array 8 of <array 7 of <char>>>>>> %ebp-6180 ]
    #   -14844(%ebp)  8664  [ $v5       <array 10 of <array 8 of <array 9 of <array 2 of <array 6 of <char>>>>>> %ebp-14844 ]
    #   -14848(%ebp)   4  [ $v6       <int> %ebp-14848 ]
    #   -14849(%ebp)   1  [ $v7       <bool> %ebp-14849 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14840, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3710, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6180(%ebp)          # local array 'v4': 5 dimensions
    movl    $3,-6176(%ebp)          #   dimension 1: 3 elements
    movl    $6,-6172(%ebp)          #   dimension 2: 6 elements
    movl    $6,-6168(%ebp)          #   dimension 3: 6 elements
    movl    $8,-6164(%ebp)          #   dimension 4: 8 elements
    movl    $7,-6160(%ebp)          #   dimension 5: 7 elements
    movl    $5,-14844(%ebp)         # local array 'v5': 5 dimensions
    movl    $10,-14840(%ebp)        #   dimension 1: 10 elements
    movl    $8,-14836(%ebp)         #   dimension 2: 8 elements
    movl    $9,-14832(%ebp)         #   dimension 3: 9 elements
    movl    $2,-14828(%ebp)         #   dimension 4: 2 elements
    movl    $6,-14824(%ebp)         #   dimension 5: 6 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $18082, %eax            #   1:     if     18082 < 98303 goto 4_if_true
    movl    $98303, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
    leal    -14844(%ebp), %eax      #   7:     &()    t4 <- v5
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   8:     param  1 <- t4
    pushl   %eax                   
    leal    -6180(%ebp), %eax       #   9:     &()    t5 <- v4
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  11:     call   t6 <- f1
    addl    $8, %esp               
    movb    %al, -93(%ebp)         
    leal    -14844(%ebp), %eax      #  12:     &()    t7 <- v5
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  13:     param  1 <- t7
    pushl   %eax                   
    leal    -6180(%ebp), %eax       #  14:     &()    t8 <- v4
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  15:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  16:     call   t9 <- f1
    addl    $8, %esp               
    movb    %al, -105(%ebp)        
    call    dummyBOOLfunc           #  17:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  18:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  19:     assign v1 <- 99
    movb    %al, 12(%ebp)          
    jmp     l_f2_0                  #  20:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $100, %eax              #  23:     if     100 = 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  24:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_18_if_false        #  26:     goto   18_if_false
    jmp     l_f2_16                 #  27:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $100, %eax              #  30:     if     100 >= 98 goto 20
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_20                
    jmp     l_f2_21                 #  31:     goto   21
l_f2_20:
    movl    $1, %eax                #  33:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_22                 #  34:     goto   22
l_f2_21:
    movl    $0, %eax                #  36:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_22:
    movzbl  -14(%ebp), %eax         #  38:     return t11
    jmp     l_f2_exit              
l_f2_25_while_cond:
    jmp     l_f2_24                 #  40:     goto   24
    jmp     l_f2_25_while_cond      #  41:     goto   25_while_cond
l_f2_24:
    movl    $5051, %eax             #  43:     assign v6 <- 5051
    movl    %eax, -14848(%ebp)     
    jmp     l_f2_12                 #  44:     goto   12
l_f2_14_if_false:
l_f2_12:
l_f2_29_while_cond:
    jmp     l_f2_28                 #  48:     goto   28
    movl    $0, %eax                #  49:     if     0 # 0 goto 32
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_32                
    jmp     l_f2_33                 #  50:     goto   33
l_f2_32:
    movl    $1, %eax                #  52:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_34                 #  53:     goto   34
l_f2_33:
    movl    $0, %eax                #  55:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f2_34:
    movzbl  -15(%ebp), %eax         #  57:     return t12
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  58:     call   t13 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movl    $0, %eax                #  59:     if     0 = 1 goto 38
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_38                
    jmp     l_f2_39                 #  60:     goto   39
l_f2_38:
    movl    $1, %eax                #  62:     assign t14 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_40                 #  63:     goto   40
l_f2_39:
    movl    $0, %eax                #  65:     assign t14 <- 0
    movb    %al, -17(%ebp)         
l_f2_40:
    movzbl  -17(%ebp), %eax         #  67:     return t14
    jmp     l_f2_exit              
    movl    $100, %eax              #  68:     if     100 >= 97 goto 43
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_43                
    jmp     l_f2_44                 #  69:     goto   44
l_f2_43:
    movl    $1, %eax                #  71:     assign t15 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_45                 #  72:     goto   45
l_f2_44:
    movl    $0, %eax                #  74:     assign t15 <- 0
    movb    %al, -18(%ebp)         
l_f2_45:
    movzbl  -18(%ebp), %eax         #  76:     return t15
    jmp     l_f2_exit              
    movl    $98, %eax               #  77:     if     98 = 99 goto 48
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_48                
    jmp     l_f2_49                 #  78:     goto   49
l_f2_48:
    movl    $1, %eax                #  80:     assign t16 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_50                 #  81:     goto   50
l_f2_49:
    movl    $0, %eax                #  83:     assign t16 <- 0
    movb    %al, -19(%ebp)         
l_f2_50:
    movl    $2, %eax                #  85:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  86:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  87:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $57179, %eax            #  88:     mul    t18 <- 57179, t17
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  89:     add    t19 <- t18, 42998
    movl    $42998, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  90:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  91:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  92:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  93:     mul    t21 <- t19, t20
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  94:     add    t22 <- t21, 22924
    movl    $22924, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  95:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  96:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  97:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  98:     mul    t24 <- t22, t23
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  99:     add    t25 <- t24, 21134
    movl    $21134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                # 100:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          # 101:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     # 102:     call   t26 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         # 103:     mul    t27 <- t25, t26
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         # 104:     add    t28 <- t27, 54086
    movl    $54086, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         # 105:     mul    t29 <- t28, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    20(%ebp), %eax          # 106:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    # 107:     call   t30 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         # 108:     add    t31 <- t29, t30
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    20(%ebp), %eax          # 109:     add    t32 <- v3, t31
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movzbl  -19(%ebp), %eax         # 110:     assign @t32 <- t16
    movl    -84(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_29_while_cond      # 111:     goto   29_while_cond
l_f2_28:

l_f2_exit:
    # epilogue
    addl    $14840, %esp            # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 5 of <array 4 of <array 8 of <array 6 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
l_test_2_while_cond:
    jmp     l_test_6                #   2:     goto   6
    jmp     l_test_6                #   3:     goto   6
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
l_test_6:
    jmp     l_test_3_while_body     #   6:     goto   3_while_body
    jmp     l_test_3_while_body     #   7:     goto   3_while_body
    jmp     l_test_1                #   8:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #  10:     goto   2_while_cond
l_test_1:
    jmp     l_test_11               #  12:     goto   11
    jmp     l_test_11               #  13:     goto   11
l_test_11:
    movl    $1, %eax                #  15:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_13               #  16:     goto   13
    movl    $0, %eax                #  17:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_13:
    movzbl  -13(%ebp), %eax         #  19:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #  20:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  21:     param  2 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  22:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     param  1 <- t2
    pushl   %eax                   
    movl    $1, %eax                #  24:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  25:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  26:     assign v1 <- t3
    movb    %al, v1                

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 2 of <array 5 of <array 4 of <array 8 of <array 6 of <char>>>>>>
    .long    5
    .long    2
    .long    5
    .long    4
    .long    8
    .long    6
    .skip 1920








    # end of global data section
    #-----------------------------------------

    .end
##################################################
