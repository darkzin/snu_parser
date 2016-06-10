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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 7 of <array 1 of <array 5 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 1 of <array 2 of <array 7 of <array 8 of <int>>>>>>> %ebp+16 ]
    #    -45(%ebp)   1  [ $v4       <char> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $99, %eax               #   4:     assign v4 <- 99
    movb    %al, -45(%ebp)         
l_f0_6_while_cond:
    movl    $10317, %eax            #   6:     if     10317 <= 94990 goto 7_while_body
    movl    $94990, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    movl    $99, %eax               #  11:     if     99 >= 98 goto 10_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_1_while_cond       #  17:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $57074, %eax            #  20:     mul    t5 <- 57074, 11019
    movl    $11019, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     div    t6 <- t5, 85067
    movl    $85067, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t7 <- t6, 20770
    movl    $20770, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     div    t8 <- t7, 61171
    movl    $61171, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     div    t9 <- t8, 67514
    movl    $67514, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $64326, %eax            #  25:     add    t10 <- 64326, 23866
    movl    $23866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  26:     sub    t11 <- t10, 21892
    movl    $21892, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -44(%ebp), %eax         #  27:     if     t9 = t11 goto 15
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_15                
    jmp     l_f0_16                 #  28:     goto   16
l_f0_15:
    movl    $1, %eax                #  30:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_17                 #  31:     goto   17
l_f0_16:
    movl    $0, %eax                #  33:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_17:
    movzbl  -21(%ebp), %eax         #  35:     return t12
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

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
    leal    _str_1, %eax            #   0:     &()    t4 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   3:     if     97 < 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    movl    $95679, %eax            #   6:     if     95679 <= 31018 goto 6_if_true
    movl    $31018, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   7:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $42252, %eax            #  12:     assign v1 <- 42252
    movl    %eax, -24(%ebp)        
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $99, %eax               #  16:     if     99 = 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  17:     goto   12_if_false
l_f1_11_if_true:
    movl    $98, %eax               #  19:     if     98 = 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15                
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_17                 #  23:     goto   17
l_f1_16:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_17:
    movzbl  -17(%ebp), %eax         #  27:     assign v2 <- t5
    movb    %al, -25(%ebp)         
    jmp     l_f1_10                 #  28:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -56(%ebp)   4  [ $t20      <ptr(4) to <array 4 of <array 1 of <array 2 of <array 7 of <array 8 of <int>>>>>>> %ebp-56 ]
    #    -57(%ebp)   1  [ $t21      <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $t22      <bool> %ebp-58 ]
    #    -64(%ebp)   4  [ $t23      <ptr(4) to <array 2 of <array 7 of <array 1 of <array 5 of <array 2 of <bool>>>>>>> %ebp-64 ]
    #    -65(%ebp)   1  [ $t24      <bool> %ebp-65 ]
    #    -66(%ebp)   1  [ $t25      <char> %ebp-66 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 1 of <array 3 of <array 1 of <array 9 of <char>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v3       <bool> %ebp-93 ]
    #   -260(%ebp)  164  [ $v4       <array 2 of <array 7 of <array 1 of <array 5 of <array 2 of <bool>>>>>> %ebp-260 ]
    #   -2076(%ebp)  1816  [ $v5       <array 4 of <array 1 of <array 2 of <array 7 of <array 8 of <int>>>>>> %ebp-2076 ]
    #   -2080(%ebp)   4  [ $v6       <int> %ebp-2080 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2068, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $517, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-260(%ebp)           # local array 'v4': 5 dimensions
    movl    $2,-256(%ebp)           #   dimension 1: 2 elements
    movl    $7,-252(%ebp)           #   dimension 2: 7 elements
    movl    $1,-248(%ebp)           #   dimension 3: 1 elements
    movl    $5,-244(%ebp)           #   dimension 4: 5 elements
    movl    $2,-240(%ebp)           #   dimension 5: 2 elements
    movl    $5,-2076(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-2072(%ebp)          #   dimension 1: 4 elements
    movl    $1,-2068(%ebp)          #   dimension 2: 1 elements
    movl    $2,-2064(%ebp)          #   dimension 3: 2 elements
    movl    $7,-2060(%ebp)          #   dimension 4: 7 elements
    movl    $8,-2056(%ebp)          #   dimension 5: 8 elements

    # function body
    movl    $0, %eax                #   0:     assign v3 <- 0
    movb    %al, -93(%ebp)         
    movl    $97, %eax               #   1:     return 97
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   3:     goto   6_while_cond
    call    dummyProcedure          #   4:     call   dummyProcedure
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $96216, %eax            #   8:     mul    t5 <- 96216, t4
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   9:     add    t6 <- t5, 90477
    movl    $90477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  13:     mul    t8 <- t6, t7
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  14:     add    t9 <- t8, 71601
    movl    $71601, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -92(%ebp), %eax         #  18:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 71651
    movl    $71651, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t15 <- t14, 38583
    movl    $38583, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  27:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  29:     add    t19 <- v2, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $99, %eax               #  30:     assign @t19 <- 99
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $100, %eax              #  31:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  32:     goto   0
l_f2_0:
    leal    -2076(%ebp), %eax       #  34:     &()    t20 <- v5
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  35:     param  2 <- t20
    pushl   %eax                   
    call    dummyCHARfunc           #  36:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  37:     if     t21 # 98 goto 12
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_12                
    jmp     l_f2_13                 #  38:     goto   13
l_f2_12:
    movl    $1, %eax                #  40:     assign t22 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f2_14                 #  41:     goto   14
l_f2_13:
    movl    $0, %eax                #  43:     assign t22 <- 0
    movb    %al, -58(%ebp)         
l_f2_14:
    movzbl  -58(%ebp), %eax         #  45:     param  1 <- t22
    pushl   %eax                   
    leal    -260(%ebp), %eax        #  46:     &()    t23 <- v4
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  47:     param  0 <- t23
    pushl   %eax                   
    call    f0                      #  48:     call   t24 <- f0
    addl    $12, %esp              
    movb    %al, -65(%ebp)         
    jmp     l_f2_18_if_false        #  49:     goto   18_if_false
    movl    $72298, %eax            #  50:     assign v6 <- 72298
    movl    %eax, -2080(%ebp)      
    call    dummyCHARfunc           #  51:     call   t25 <- dummyCHARfunc
    movb    %al, -66(%ebp)         
l_f2_22_while_cond:
    movl    $56522, %eax            #  53:     if     56522 < 93422 goto 23_while_body
    movl    $93422, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_23_while_body     
    jmp     l_f2_21                 #  54:     goto   21
l_f2_23_while_body:
    jmp     l_f2_22_while_cond      #  56:     goto   22_while_cond
l_f2_21:
    jmp     l_f2_16                 #  58:     goto   16
l_f2_18_if_false:
l_f2_16:

l_f2_exit:
    # epilogue
    addl    $2068, %esp             # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $95132, %eax            #   4:     param  0 <- 95132
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
l_test_6_while_cond:
    jmp     l_test_5                #   7:     goto   5
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
l_test_9_while_cond:
    jmp     l_test_8                #  11:     goto   8
    jmp     l_test_9_while_cond     #  12:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            
    movl    $0, %eax                #  15:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
    jmp     l_test_18               #  20:     goto   18
    movl    $1, %eax                #  21:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_19               #  22:     goto   19
l_test_18:
    movl    $0, %eax                #  24:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_19:
    movzbl  -14(%ebp), %eax         #  26:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_13               #  27:     goto   13
l_test_15_if_false:
l_test_13:
l_test_22_while_cond:
    jmp     l_test_21               #  31:     goto   21
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  33:     goto   25_while_cond
    movl    $63964, %eax            #  34:     sub    t2 <- 63964, 91852
    movl    $91852, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #  36:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_22_while_cond    #  37:     goto   22_while_cond
l_test_21:
    movl    $24839, %eax            #  39:     assign v1 <- 24839
    movl    %eax, v1               
    jmp     l_test_31_if_false      #  40:     goto   31_if_false
    movl    $0, %eax                #  41:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_29               #  42:     goto   29
l_test_31_if_false:
l_test_29:
    jmp     l_test_34_if_true       #  45:     goto   34_if_true
    jmp     l_test_35_if_false      #  46:     goto   35_if_false
l_test_34_if_true:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  49:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
l_test_42_while_cond:
    jmp     l_test_41               #  51:     goto   41
    jmp     l_test_42_while_cond    #  52:     goto   42_while_cond
l_test_41:
    jmp     l_test_33               #  54:     goto   33
l_test_35_if_false:
l_test_33:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
