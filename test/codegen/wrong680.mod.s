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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 # t2 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t3
    movb    %al, -16(%ebp)         
    movl    $1, %eax                #  10:     assign v1 <- 1
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_f0_11_while_cond:
    movl    $19717, %eax            #  13:     if     19717 # 97211 goto 12_while_body
    movl    $97211, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_12_while_body     
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  16:     goto   11_while_cond
l_f0_10:
    movl    $99, %eax               #  18:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f0_6                  #  19:     goto   6
l_f0_6:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <char> %ebp-49 ]
    #    -50(%ebp)   1  [ $t2       <char> %ebp-50 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 3 of <array 4 of <array 3 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -84(%ebp)   4  [ $v1       <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $v2       <char> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
    movl    $98, %eax               #   7:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
l_f1_9_while_cond:
    jmp     l_f1_8                  #  10:     goto   8
    jmp     l_f1_9_while_cond       #  11:     goto   9_while_cond
l_f1_8:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -50(%ebp)         
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $15913, %eax            #  17:     mul    t4 <- 15913, t3
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  18:     add    t5 <- t4, 12193
    movl    $12193, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  22:     mul    t7 <- t5, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  23:     add    t8 <- t7, 33607
    movl    $33607, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  26:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  27:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     add    t11 <- t10, 77747
    movl    $77747, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  32:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  33:     add    t14 <- t13, 65448
    movl    $65448, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  34:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  35:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  36:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  37:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  38:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $89684, %eax            #  39:     assign @t18 <- 89684
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_15_if_false        #  40:     goto   15_if_false
    jmp     l_f1_13                 #  41:     goto   13
l_f1_15_if_false:
l_f1_13:
l_f1_17_while_cond:
    jmp     l_f1_17_while_cond      #  45:     goto   17_while_cond
l_f1_20_while_cond:
    jmp     l_f1_19                 #  47:     goto   19
    jmp     l_f1_20_while_cond      #  48:     goto   20_while_cond
l_f1_19:
l_f1_23_while_cond:
    movl    $72242, %eax            #  51:     if     72242 > 57774 goto 24_while_body
    movl    $57774, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_24_while_body     
    jmp     l_f1_22                 #  52:     goto   22
l_f1_24_while_body:
    jmp     l_f1_23_while_cond      #  54:     goto   23_while_cond
l_f1_22:
    jmp     l_f1_4                  #  56:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    dummyCHARfunc           #  59:     call   t19 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  60:     assign v2 <- t19
    movb    %al, -85(%ebp)         

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
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
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t2       <char> %ebp-50 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 1 of <array 10 of <array 5 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 9 of <array 3 of <array 6 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 9 of <array 7 of <array 1 of <array 4 of <int>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v3       <char> %ebp-81 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     if     97 <= 97 goto 4_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
    call    WriteLn                 #   7:     call   WriteLn
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_9_while_cond:
    movl    $23083, %eax            #  12:     if     23083 < 20478 goto 10_while_body
    movl    $20478, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_10_while_body     
    jmp     l_f2_8                  #  13:     goto   8
l_f2_10_while_body:
    call    dummyCHARfunc           #  15:     call   t2 <- dummyCHARfunc
    movb    %al, -50(%ebp)         
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $4521, %eax             #  19:     mul    t4 <- 4521, t3
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  20:     add    t5 <- t4, 60236
    movl    $60236, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #  21:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  24:     mul    t7 <- t5, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  25:     add    t8 <- t7, 76963
    movl    $76963, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  26:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  29:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     add    t11 <- t10, 13883
    movl    $13883, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  34:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     add    t14 <- t13, 73346
    movl    $73346, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    12(%ebp), %eax          #  37:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  38:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  39:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  40:     add    t18 <- v1, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -50(%ebp), %eax         #  41:     assign @t18 <- t2
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_9_while_cond       #  42:     goto   9_while_cond
l_f2_8:
    call    dummyBOOLfunc           #  44:     call   t19 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  45:     if     t19 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  46:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_exit              
    jmp     l_f2_13                 #  49:     goto   13
l_f2_15_if_false:
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_4                #   5:     goto   4
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_5                #   7:     goto   5
l_test_4:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_5:
    movzbl  -17(%ebp), %eax         #  11:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
