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
    #    -16(%ebp)   4  [ $t19      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t20      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t21      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t22      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t23      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t24      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t25      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t26      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t27      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t28      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t29      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t30      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t31      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t32      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t33      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t34      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t35      <char> %ebp-77 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 58 of <array 11 of <array 27 of <array 44 of <array 83 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v6       <char> %ebp+20 ]
    #    -84(%ebp)   4  [ $v7       <int> %ebp-84 ]

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
    movl    $98, %eax               #   0:     if     98 > 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $5320, %eax             #   3:     if     5320 > 57057 goto 5_if_true
    movl    $57057, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  11:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $60847, %eax            #  12:     mul    t20 <- 60847, t19
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     add    t21 <- t20, 61495
    movl    $61495, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  16:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t23 <- t21, t22
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     add    t24 <- t23, 49054
    movl    $49054, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  21:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t26 <- t24, t25
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     add    t27 <- t26, 97693
    movl    $97693, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  26:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  27:     mul    t29 <- t27, t28
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  28:     add    t30 <- t29, 72285
    movl    $72285, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     mul    t31 <- t30, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  30:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  31:     call   t32 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  32:     add    t33 <- t31, t32
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    16(%ebp), %eax          #  33:     add    t34 <- v5, t33
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $558, %eax              #  34:     assign @t34 <- 558
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_0                  #  35:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  38:     call   t35 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  39:     assign v6 <- t35
    movb    %al, 20(%ebp)          
    movl    $97, %eax               #  40:     return 97
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t19      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t20      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t21      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t22      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t23      <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 97 of <array 91 of <array 90 of <array 53 of <array 47 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 13 of <array 98 of <array 85 of <array 21 of <array 84 of <bool>>>>>>> %ebp+12 ]
    #    -36(%ebp)   4  [ $v5       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t19 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $89391, %eax            #   1:     div    t20 <- 89391, 95559
    movl    $95559, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t21 <- t20, 22775
    movl    $22775, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t22 <- t21, 29369
    movl    $29369, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v5 <- t22
    movl    %eax, -36(%ebp)        
    call    dummyINTfunc            #   5:     call   t23 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t19      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t20      <ptr(4) to <array 13 of <array 98 of <array 85 of <array 21 of <array 84 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t21      <ptr(4) to <array 97 of <array 91 of <array 90 of <array 53 of <array 47 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t22      <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 80 of <array 97 of <array 86 of <array 62 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 22 of <array 62 of <array 9 of <array 64 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 17 of <array 91 of <array 50 of <array 60 of <array 27 of <char>>>>>>> %ebp+16 ]
    #   -1978925180(%ebp)  1978925154  [ $v6       <array 97 of <array 91 of <array 90 of <array 53 of <array 47 of <bool>>>>>> %ebp-1978925180 ]
    #   2125018532(%ebp)  191023584  [ $v7       <array 13 of <array 98 of <array 85 of <array 21 of <array 84 of <bool>>>>>> %ebp+2125018532 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-2125018544, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $542487188, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1978925180(%ebp)    # local array 'v6': 5 dimensions
    movl    $97,-1978925176(%ebp)   #   dimension 1: 97 elements
    movl    $91,-1978925172(%ebp)   #   dimension 2: 91 elements
    movl    $90,-1978925168(%ebp)   #   dimension 3: 90 elements
    movl    $53,-1978925164(%ebp)   #   dimension 4: 53 elements
    movl    $47,-1978925160(%ebp)   #   dimension 5: 47 elements
    movl    $5,2125018532(%ebp)     # local array 'v7': 5 dimensions
    movl    $13,2125018536(%ebp)    #   dimension 1: 13 elements
    movl    $98,2125018540(%ebp)    #   dimension 2: 98 elements
    movl    $85,2125018544(%ebp)    #   dimension 3: 85 elements
    movl    $21,2125018548(%ebp)    #   dimension 4: 21 elements
    movl    $84,2125018552(%ebp)    #   dimension 5: 84 elements

    # function body
    call    ReadInt                 #   0:     call   t19 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t19
    jmp     l_f2_exit              
    leal    2125018532(%ebp), %eax  #   2:     &()    t20 <- v7
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t20
    pushl   %eax                   
    leal    -1978925180(%ebp), %eax #   4:     &()    t21 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  0 <- t21
    pushl   %eax                   
    call    f1                      #   6:     call   t22 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movl    $24106, %eax            #   7:     param  0 <- 24106
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $-2125018544, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 58 of <array 11 of <array 27 of <array 44 of <array 83 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t15      <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t16      <ptr(4) to <array 58 of <array 11 of <array 27 of <array 44 of <array 83 of <int>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t17      <char> %ebp-49 ]
    #    -50(%ebp)   1  [ $t18      <char> %ebp-50 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $t5       <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <ptr(4) to <array 13 of <array 98 of <array 85 of <array 21 of <array 84 of <bool>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <ptr(4) to <array 97 of <array 91 of <array 90 of <array 53 of <array 47 of <bool>>>>>>> %ebp-84 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 37473
    movl    $37473, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    movl    $35548, %eax            #   3:     add    t2 <- 35548, 33497
    movl    $33497, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   4:     add    t3 <- t2, 28941
    movl    $28941, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    call    ReadInt                 #   5:     call   t4 <- ReadInt
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #   6:     if     t3 = t4 goto 2
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -65(%ebp)         
    jmp     l_test_4                #  10:     goto   4
l_test_3:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -65(%ebp)         
l_test_4:
    movzbl  -65(%ebp), %eax         #  14:     assign v1 <- t5
    movb    %al, v1                
    movl    $23716, %eax            #  15:     sub    t6 <- 23716, 63999
    movl    $63999, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  16:     sub    t7 <- t6, 70
    movl    $70, %ebx              
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  17:     if     t7 < 96253 goto 7_if_true
    movl    $96253, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #  18:     goto   8_if_false
l_test_7_if_true:
l_test_11_while_cond:
    movl    $100, %eax              #  21:     if     100 = 98 goto 12_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  22:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  24:     goto   11_while_cond
l_test_10:
    movl    $100, %eax              #  26:     assign v2 <- 100
    movb    %al, v2                
    jmp     l_test_6                #  27:     goto   6
l_test_8_if_false:
l_test_6:
    leal    v4, %eax                #  30:     &()    t8 <- v4
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  31:     param  1 <- t8
    pushl   %eax                   
    leal    v3, %eax                #  32:     &()    t9 <- v3
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  33:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  34:     call   t10 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
l_test_17_while_cond:
    movl    $6384, %eax             #  36:     add    t11 <- 6384, 54264
    movl    $54264, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  37:     add    t12 <- t11, 23518
    movl    $23518, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     add    t13 <- t12, 33897
    movl    $33897, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $9557, %eax             #  39:     if     9557 = t13 goto 18_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_18_while_body   
    jmp     l_test_16               #  40:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  42:     goto   17_while_cond
l_test_16:
    movl    $99, %eax               #  44:     param  3 <- 99
    pushl   %eax                   
    leal    v5, %eax                #  45:     &()    t14 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  46:     param  2 <- t14
    pushl   %eax                   
    movl    $1, %eax                #  47:     param  1 <- 1
    pushl   %eax                   
    call    dummyCHARfunc           #  48:     call   t15 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  49:     param  3 <- t15
    pushl   %eax                   
    leal    v5, %eax                #  50:     &()    t16 <- v5
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  51:     param  2 <- t16
    pushl   %eax                   
    movl    $0, %eax                #  52:     param  1 <- 0
    pushl   %eax                   
    movl    $98, %eax               #  53:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  54:     call   t17 <- f0
    addl    $16, %esp              
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  55:     param  0 <- t17
    pushl   %eax                   
    call    f0                      #  56:     call   t18 <- f0
    addl    $16, %esp              
    movb    %al, -50(%ebp)         

l_test_exit:
    # epilogue
    addl    $72, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 97 of <array 91 of <array 90 of <array 53 of <array 47 of <bool>>>>>>
    .long    5
    .long   97
    .long   91
    .long   90
    .long   53
    .long   47
    .skip 1978925130
    .align   4
v4:                                 # <array 13 of <array 98 of <array 85 of <array 21 of <array 84 of <bool>>>>>>
    .long    5
    .long   13
    .long   98
    .long   85
    .long   21
    .long   84
    .skip 191023560
v5:                                 # <array 58 of <array 11 of <array 27 of <array 44 of <array 83 of <int>>>>>>
    .long    5
    .long   58
    .long   11
    .long   27
    .long   44
    .long   83
    .skip 251637408








    # end of global data section
    #-----------------------------------------

    .end
##################################################
